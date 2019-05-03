
#include "PathPlannerManager.h"

const float PathPlannerManager::k3DDistanceArrivedToGoal = 4.0*PathPlanner::kGoalPlanningCheckThreshold; //2.5*PathPlanner::kGoalPlanningCheckThreshold;
const float PathPlannerManager::k2DDistanceArrivedToGoal = 2.1*PathPlanner::kGoalPlanningCheckThreshold;
const float PathPlannerManager::k3DDistanceCloseToGoal = 5.0*PathPlanner::kGoalPlanningCheckThreshold;// [m]

const float PathPlannerManager::kMinXSizeCropBox = 4; // [m] minimum size along X axis of the crop box for planning 
const float PathPlannerManager::kMinYSizeCropBox = 4; // [m] minimum size along Y axis of the crop box for planning 
const float PathPlannerManager::kMinZSizeCropBox = 4; // [m] minimum size along Z axis of the crop box for planning 
const float PathPlannerManager::kGainCropBox = 1.5;
const float PathPlannerManager::kGainCropBox2 = 3;

const float PathPlannerManager::kGainXCropBoxPathAligned = 1; // crop box extends from (-kGainXCropBoxPathAligned* delta.norm(), -0.5*kSizeYCropBoxPathAligned, -0.5*kSizeZCropBoxPathAligned, 1) to (kGainXCropBoxPathAligned * delta.norm(), 0.5*kSizeYCropBoxPathAligned, 0.5*kSizeZCropBoxPathAligned, 1)
const float PathPlannerManager::kSizeYCropBoxPathAligned = 3; // 
const float PathPlannerManager::kSizeZCropBoxPathAligned = 3; // 

//const float PathPlannerManager::kTaskCallbackPeriod = 0.5; // [s] the duration period of the task callback 

template<typename T>
T getParam(ros::NodeHandle& n, const std::string& name, const T& defaultValue)
{
    T v;
    if (n.getParam(name, v))
    {
        ROS_INFO_STREAM("Found parameter: " << name << ", value: " << v);
        return v;
    }
    else
    {
        ROS_WARN_STREAM("Cannot find value for parameter: " << name << ", assigning default: " << defaultValue);
    }
    return defaultValue;
}

PathPlannerManager::PathPlannerManager(): b_wall_info_available_(false), b_traversability_info_available_(false),b_utility_2d_info_available_(false), b_goal_selected_(false),b_is_close_to_goal_(false),b_abort_(false)
{
    p_path_planner_.reset(new PathPlanner);
    
    cost_function_type_ = BaseCostFunction::kOriginalCost;
    
    planning_status_ = kNone; 
    
    path_cost_ = -1; 
}

PathPlannerManager::~PathPlannerManager()
{
}

void PathPlannerManager::traversabilityCloudCallback(const sensor_msgs::PointCloud2& traversability_msg)
{
    boost::recursive_mutex::scoped_lock traversability_locker(traversability_mutex_);
    boost::recursive_mutex::scoped_lock locker(utility_2d_mutex_);

    pcl::fromROSMsg(traversability_msg, traversability_pcl_);
    
    std::cout << "PathPlannerManager::traversabilityCloudCallback() - pcl size: " << traversability_pcl_.size() << std::endl;
    
    b_traversability_info_available_ = false; // reset
    b_utility_2d_info_available_ = false; // reset utility flag 

    if (traversability_pcl_.size() > 0)
    {
        b_traversability_info_available_ = true;
    }
}

void PathPlannerManager::setTraversabilityCloud(const pcl::PointCloud<pcl::PointXYZI>& traversability_pcl_in)
{
    boost::recursive_mutex::scoped_lock traversability_locker(traversability_mutex_);
    boost::recursive_mutex::scoped_lock locker(utility_2d_mutex_);

    traversability_pcl_ = traversability_pcl_in;
    
    std::cout << "PathPlannerManager::traversabilityCloudCallback() - pcl size: " << traversability_pcl_.size() << std::endl;
    
    b_traversability_info_available_ = false; // reset
    b_utility_2d_info_available_ = false; // reset utility flag 

    if (traversability_pcl_.size() > 0)
    {
        b_traversability_info_available_ = true;
    }
}


void PathPlannerManager::wallCloudCallback(const sensor_msgs::PointCloud2& wall_msg)
{
    boost::recursive_mutex::scoped_lock wall_locker(wall_mutex_);

    pcl::fromROSMsg(wall_msg, wall_pcl_);
     
    // this cloud can be empty 
    if(wall_pcl_.size() == 0)
    {
        /// < HACK: add a single far point 
        pcl::PointXYZRGBNormal far_point;
        far_point.x = std::numeric_limits<float>::max(); 
        far_point.y = std::numeric_limits<float>::max(); 
        far_point.z = std::numeric_limits<float>::max(); 
        wall_pcl_.push_back(far_point);
    }
    
    wall_kdtree_.setInputCloud(wall_pcl_.makeShared()); // deep copy here 
    b_wall_info_available_ = true;
}

// N.B: here we assume the pointcloud contains PointXYZI: [x,y,u(x,y),var(x,y)] 
// Moreover, we assume that utility_2d_pcl_ contains info about the points in traversability_pcl_
void PathPlannerManager::utility2DCloudCallback(const sensor_msgs::PointCloud2& utility_msg)
{
    boost::recursive_mutex::scoped_lock locker(utility_2d_mutex_);
    boost::recursive_mutex::scoped_lock traversability_locker(traversability_mutex_);

    pcl::fromROSMsg(utility_msg, utility_2d_pcl_);
    
    std::cout << "PathPlannerManager::utility2DCloudCallback() - pcl size: " << traversability_pcl_.size() << std::endl;
        
    b_utility_2d_info_available_ = false; // reset 
            
    /// < check if it has the same size of the traversability pcl 
    if( (utility_2d_pcl_.header.stamp != traversability_pcl_.header.stamp) || (utility_2d_pcl_.size() != traversability_pcl_.size()) )
    {
        ROS_WARN("**********************************************************************************************************");
        ROS_WARN("PathPlannerManager::utility2DCloudCallback() - traversability and utility pcls have different sizes or stamp");
        ROS_WARN("**********************************************************************************************************");
        std::cout << "trav stamp: " << traversability_pcl_.header.stamp << ", utility stamp: " << utility_2d_pcl_.header.stamp << std::endl; 
        std::cout << "trav size: " << traversability_pcl_.size() << ", utility size: " << utility_2d_pcl_.size() << std::endl; 
        b_utility_2d_info_available_ = false; 
        return; /// < EXIT POINT 
    }
    
    if (utility_2d_pcl_.size() > 0)
    {
        b_utility_2d_info_available_ = true;
    }
}

void PathPlannerManager::goalSelectionCallback(geometry_msgs::PoseStamped goal_msg)
{
    std::cout << "PathPlannerManager::goalSelectionCallback()" << std::endl;
        
    pcl::PointXYZI goal;
    goal.x = goal_msg.pose.position.x;
    goal.y = goal_msg.pose.position.y;
    goal.z = goal_msg.pose.position.z;

    setGoal(goal);
    
    ROS_INFO_STREAM("goal selection: ("<< goal.x << "," << goal.y << "," << goal.y << "), goal_selected: " << (int)b_goal_selected_);
}

void PathPlannerManager::goalAbortCallback(std_msgs::Bool msg)
{
    std::cout << "PathPlannerManager::goalAbortCallback()" << std::endl;
    ROS_INFO("goal abort");
    
    if(msg.data == 1)
    {
        setAbort(true); 
    }
}

bool PathPlannerManager::isReady() const
{
    return b_traversability_info_available_ && b_wall_info_available_ && b_goal_selected_;
}

bool PathPlannerManager::isReadyForService() const
{
    return b_traversability_info_available_ && b_wall_info_available_ ;
}
    
PathPlannerManager::PlannerStatus PathPlannerManager::doPathPlanning()
{        
    boost::recursive_mutex::scoped_lock path_planning_locker(path_planner_mutex_);
    boost::recursive_mutex::scoped_lock goal_locker(goal_mutex_);

    std::cout << "PathPlannerManager::doPathPlanning()" << std::endl;
    
    planning_status_ = kNotReady; 
    path_cost_ = -1; 
    
    if (!isReady())
    {
        ROS_WARN("PathPlannerManager::doPathPlanning() - traversability info: %d, wall info: %d, goal selected: %d, utility info: %d", (int) b_traversability_info_available_, (int) b_wall_info_available_, (int)b_goal_selected_,(int) b_utility_2d_info_available_);
        return kNotReady; /// < EXIT POINT 
    }

    if (!b_goal_selected_)
    {
        ROS_WARN("PathPlannerManager::doPathPlanning() - you did not set goal");
        return kNotReady; /// < EXIT POINT 
    }
    
    b_abort_ = false; 
    
    int num_failures = 0;
    int crop_step = 0;
    
    /// < update robot position
    pcl::PointXYZI robot_position;
    bool is_transform_ok = getRobotPosition(robot_position);
    if(!is_transform_ok) 
    {
        planning_status_ = kTransformFailure; 
        return kTransformFailure; /// < EXIT POINT 
    }
    
    /// < check distance to the goal (arrived?)
    float distance3D_to_goal = 0;
    float distance2D_to_goal = 0;
    {
        pcl::PointXYZI goal_position = goal_position_; //p_path_planner_->getGoal(); // do not get the goal from the path planner since it is still not set 
        distance2D_to_goal = PathPlanner::dist2D(goal_position, robot_position);
        distance3D_to_goal = PathPlanner::dist(goal_position, robot_position);
        std::cout << "PathPlannerManager::doPathPlanning() - distance to goal - 3D: " << distance3D_to_goal <<", 2D: " << distance2D_to_goal << std::endl;
    }
    if(distance3D_to_goal < k3DDistanceCloseToGoal)
    {
        b_is_close_to_goal_ = true; 
    }
    if( (distance3D_to_goal < k3DDistanceArrivedToGoal) && (distance2D_to_goal < k2DDistanceArrivedToGoal) )
    {
        planning_status_ = kArrived; 
        return kArrived; /// < EXIT POINT 
    }
    
    /// < prepare intial traversability PCL (needed for computing the starting point )
    pcl::PointCloud<pcl::PointXYZI>::Ptr p_traversability_pcl;
    pcl::PointCloud<pcl::PointXYZI>::Ptr p_utility_2d_pcl;
    PathPlanner::KdTreeFLANN traversability_kdtree;

    p_traversability_pcl.reset(new pcl::PointCloud<pcl::PointXYZI>);
    p_utility_2d_pcl.reset(new pcl::PointCloud<pcl::PointXYZI>);
    {
        boost::recursive_mutex::scoped_lock locker_traversability(traversability_mutex_);
        boost::recursive_mutex::scoped_lock locker_utility(utility_2d_mutex_); 
        
        //cropPcl((CropBoxMethod)crop_step_, robot_position, goal_position_, traversability_pcl_, p_traversability_pcl);
        //if(b_utility_2d_info_available_)
        //    cropPcl((CropBoxMethod)crop_step_, robot_position, goal_position_, utility_2d_pcl_, p_utility_2d_pcl);
        if(b_utility_2d_info_available_)
        {
            cropTwoPcls((CropBoxMethod)crop_step, robot_position, goal_position_, traversability_pcl_, utility_2d_pcl_,
                                     p_traversability_pcl, p_utility_2d_pcl);
        }
        else
        {
            cropPcl((CropBoxMethod)crop_step, robot_position, goal_position_, traversability_pcl_, p_traversability_pcl);
        }
    }
    // organize cropped traversability points
    traversability_kdtree.setInputCloud(p_traversability_pcl);
    
    /// < compute starting point on the segment traversability map 
    std::vector<int> pointIdxNKNSearch(1);
    std::vector<float> pointNKNSquaredDistance(1);
    /// < HACK : here we do not check the distance in order to avoid problems with outlier obstacle points or holes (this must be fixed)
    int found = traversability_kdtree.nearestKSearch(robot_position, 1, pointIdxNKNSearch, pointNKNSquaredDistance);
    //int found = traversability_kdtree.radiusSearch(start_position, PathPlanner::kGoalAcceptCheckThreshold, pointIdxNKNSearch, pointNKNSquaredDistance);
    if (found < 1)
    {
        ROS_WARN("PathPlannerManager::doPathPlanning() - cannot find a close starting node");
        planning_status_ = kInputFailure; 
        return kInputFailure; /// < EXIT POINT 
    }

    /// < start planning 

    bool b_successful_planning = false;

    //while ((crop_step_ < kNumCropBoxMethod) && (!b_successful_planning) && (!b_aborted_))
    while ((num_failures < kPathPlannerMaxNumAttempts) && (!b_successful_planning) && (!b_abort_))
    {
        /// < first set input then the goal!
        {
            boost::recursive_mutex::scoped_lock locker(traversability_mutex_);
            boost::recursive_mutex::scoped_lock wall_locker(wall_mutex_);
            boost::recursive_mutex::scoped_lock utility_locker(utility_2d_mutex_);
            p_path_planner_->setInput(*p_traversability_pcl, wall_pcl_, wall_kdtree_, traversability_kdtree, pointIdxNKNSearch[0]);
            if(b_utility_2d_info_available_) p_path_planner_->set2DUtility(*p_utility_2d_pcl);
        }
        
        /// < set goal and check if close enough to the traversability map
        bool b_goal_accepted = p_path_planner_->setGoal(goal_position_);
        if(!b_goal_accepted)
        {
            ROS_WARN("PathPlannerManager::doPathPlanning() - cannot find a close goal node");
            return kInputFailure; /// < EXIT POINT 
        }
        
        /// < compute the path
        b_successful_planning = p_path_planner_->planning(path_);
        if (!b_successful_planning)
        {
            ROS_INFO("PathPlannerManager::doPathPlanning() - #failed attempts %d, crop step %d", num_failures, crop_step);

            num_failures++;
            crop_step = std::min(crop_step + 1, ((int) kNumCropBoxMethod)-1); // saturate since the number of attempts can be higher than then number of crop methods

            if (crop_step < kNumCropBoxMethod)
            {
                is_transform_ok = getRobotPosition(robot_position);
                if(!is_transform_ok) 
                {
                    planning_status_ = kTransformFailure; 
                    return kTransformFailure; /// < EXIT POINT 
                }
                    
                {
                    boost::recursive_mutex::scoped_lock goal_locker(goal_mutex_);
                    pcl::PointXYZI goal_position = p_path_planner_->getGoal(); // get the goal from the path planner since it is set 
                    distance2D_to_goal = PathPlanner::dist2D(goal_position, robot_position);
                    distance3D_to_goal = PathPlanner::dist(goal_position, robot_position);
                    std::cout << "PathPlannerManager::doPathPlanning() - distance to goal - 3D: " << distance3D_to_goal <<", 2D: " << distance2D_to_goal << std::endl;
                }
                if(distance3D_to_goal < k3DDistanceCloseToGoal)
                {
                    b_is_close_to_goal_ = true; 
                }
                if( (distance3D_to_goal < k3DDistanceArrivedToGoal) && (distance2D_to_goal < k2DDistanceArrivedToGoal) )
                {
                    planning_status_ = kArrived;                     
                    return kArrived; /// < EXIT POINT 
                }

                /// < generate a bigger traversability map           
                p_traversability_pcl.reset(new pcl::PointCloud<pcl::PointXYZI>);
                p_utility_2d_pcl.reset(new pcl::PointCloud<pcl::PointXYZI>);
                {
                    boost::recursive_mutex::scoped_lock goal_locker(goal_mutex_);
                    boost::recursive_mutex::scoped_lock locker(traversability_mutex_);
                    boost::recursive_mutex::scoped_lock locker_utility(utility_2d_mutex_); 

                    //cropPcl((CropBoxMethod)crop_step_, robot_position, goal_position_, traversability_pcl_, p_traversability_pcl);
                    //if(b_utility_2d_info_available_)
                    //    cropPcl((CropBoxMethod)crop_step_, robot_position, goal_position_, utility_2d_pcl_, p_utility_2d_pcl);
                    if(b_utility_2d_info_available_)
                    {
                        cropTwoPcls((CropBoxMethod)crop_step, robot_position, goal_position_, traversability_pcl_, utility_2d_pcl_,
                                                 p_traversability_pcl, p_utility_2d_pcl);
                    }
                    else
                    {
                        cropPcl((CropBoxMethod)crop_step, robot_position, goal_position_, traversability_pcl_, p_traversability_pcl);
                    }
                    
                }
                // organize cropped traversability points
                traversability_kdtree.setInputCloud(p_traversability_pcl);
                
                
                int found = traversability_kdtree.nearestKSearch(robot_position, 1, pointIdxNKNSearch, pointNKNSquaredDistance);
                if (found < 1)
                {
                    ROS_WARN("PathPlannerManager::doPathPlanning() - cannot find a close starting node - aborting");
                    b_abort_ = true;  
                }
                
            }
        }
    }
    
     
    if(b_successful_planning)
    {
        b_found_a_solution_once_ = true; 
        planning_status_ = kSuccess;      
        path_cost_ = computePathLength(path_);
        
        ROS_INFO("PathPlannerManager::doPathPlanning() - path successfully computed - #failed attempts %d, crop step %d", num_failures, crop_step);
    }
    else
    {
        planning_status_ = kFailure;    
        ROS_INFO("PathPlannerManager::doPathPlanning() - no path exist for desired goal - #failed attempts %d, crop step %d", num_failures, crop_step);
    }
    
    if(b_abort_) 
    {
        ROS_INFO("PathPlannerManager::doPathPlanning() - path aborted");
        planning_status_ = kAborted;
    }

    return planning_status_;
}


PathPlannerManager::PlannerStatus PathPlannerManager::pathPlanningServiceCallback(const geometry_msgs::PoseStamped start, const geometry_msgs::PoseStamped end, nav_msgs::Path& path_out, double& path_cost)
{
    boost::recursive_mutex::scoped_lock path_planning_locker(path_planner_mutex_);

    std::cout << "PathPlannerManager::pathPlanningServiceCallback()" << std::endl;

    path_cost = -1; 
    
    if (!isReadyForService())
    {
        ROS_WARN("PathPlannerManager::pathPlanningServiceCallback() - traversability info: %d, wall info: %d, utility info: %d", (int) b_traversability_info_available_, (int) b_wall_info_available_, (int) b_utility_2d_info_available_);
        return kNotReady; /// < EXIT POINT 
    }

    b_abort_ = false; 
    
    int num_failures = 0;
    int crop_step = 0;
    
    /// < set start and goal position
    pcl::PointXYZI start_position;
    start_position.x = start.pose.position.x;
    start_position.y = start.pose.position.y;
    start_position.z = start.pose.position.z;
    
    pcl::PointXYZI end_position;
    end_position.x = end.pose.position.x;
    end_position.y = end.pose.position.y;
    end_position.z = end.pose.position.z;

    /// < prepare intial traversability PCL (needed for computing the starting point )
    pcl::PointCloud<pcl::PointXYZI>::Ptr p_traversability_pcl;
    pcl::PointCloud<pcl::PointXYZI>::Ptr p_utility_2d_pcl;
    PathPlanner::KdTreeFLANN traversability_kdtree;

    p_traversability_pcl.reset(new pcl::PointCloud<pcl::PointXYZI>);
    p_utility_2d_pcl.reset(new pcl::PointCloud<pcl::PointXYZI>);
    {
        boost::recursive_mutex::scoped_lock locker_traversability(traversability_mutex_);
        boost::recursive_mutex::scoped_lock locker_utility(utility_2d_mutex_); 
        
        if(b_utility_2d_info_available_)
        {
            cropTwoPcls((CropBoxMethod)crop_step, start_position, end_position, traversability_pcl_, utility_2d_pcl_,
                                     p_traversability_pcl, p_utility_2d_pcl);
        }
        else
        {
            cropPcl((CropBoxMethod)crop_step, start_position, end_position, traversability_pcl_, p_traversability_pcl);
        }
    }
    // organize cropped traversability points
    traversability_kdtree.setInputCloud(p_traversability_pcl);
    
    /// < compute starting point on the segmented traversability map 
    std::vector<int> pointIdxNKNSearch(1);
    std::vector<float> pointNKNSquaredDistance(1);
    //int found = traversability_kdtree.nearestKSearch(start_position, 1, pointIdxNKNSearch, pointNKNSquaredDistance);
    int found = traversability_kdtree.radiusSearch(start_position, PathPlanner::kGoalAcceptCheckThreshold, pointIdxNKNSearch, pointNKNSquaredDistance);
    if (found < 1)
    {
        ROS_WARN("PathPlannerManager::pathPlanningServiceCallback() - cannot find a close starting node");
        return kInputFailure; /// < EXIT POINT 
    }
    

    /// < now start planning 

    bool b_successful_planning = false;

    //while ((crop_step_ < kNumCropBoxMethod) && (!b_successful_planning) && (!b_aborted_))
    while ((num_failures < kPathPlannerMaxNumAttempts) && (!b_successful_planning) && (!b_abort_))
    {
        /// < first set input then the goal!
        {
            boost::recursive_mutex::scoped_lock locker(traversability_mutex_);
            boost::recursive_mutex::scoped_lock wall_locker(wall_mutex_);
            boost::recursive_mutex::scoped_lock utility_locker(utility_2d_mutex_);
            p_path_planner_->setInput(*p_traversability_pcl, wall_pcl_, wall_kdtree_, traversability_kdtree, pointIdxNKNSearch[0]);
            if(b_utility_2d_info_available_) p_path_planner_->set2DUtility(*p_utility_2d_pcl);
        }
        
        /// < set goal and check if close enough to the traversability map
        bool b_gool_accepted = p_path_planner_->setGoal(end_position);
        if(!b_gool_accepted)
        {
            ROS_WARN("PathPlannerManager::pathPlanningServiceCallback() - cannot find a close goal node");
            return kInputFailure; /// < EXIT POINT 
        }

        /// < compute the path
        b_successful_planning = p_path_planner_->planning(path_out);
        if (!b_successful_planning)
        {
            ROS_INFO("PathPlannerManager::pathPlanningServiceCallback() - #failed attempts %d, crop step %d", num_failures, crop_step);

            num_failures++;
            crop_step = std::min(crop_step + 1, ((int) kNumCropBoxMethod)-1); // saturate since the number of attempts can be higher than then number of crop methods

            if (crop_step < kNumCropBoxMethod)
            {
                
                /// < generate a bigger traversability map           
                p_traversability_pcl.reset(new pcl::PointCloud<pcl::PointXYZI>);
                p_utility_2d_pcl.reset(new pcl::PointCloud<pcl::PointXYZI>);
                {
                    boost::recursive_mutex::scoped_lock locker(traversability_mutex_);
                    boost::recursive_mutex::scoped_lock locker_utility(utility_2d_mutex_); 

                    if(b_utility_2d_info_available_)
                    {
                        cropTwoPcls((CropBoxMethod)crop_step, start_position, end_position, traversability_pcl_, utility_2d_pcl_,
                                                 p_traversability_pcl, p_utility_2d_pcl);
                    }
                    else
                    {
                        cropPcl((CropBoxMethod)crop_step, start_position, end_position, traversability_pcl_, p_traversability_pcl);
                    }
                    
                }
                // organize cropped traversability points
                traversability_kdtree.setInputCloud(p_traversability_pcl);
                
                
                int found = traversability_kdtree.nearestKSearch(start_position, 1, pointIdxNKNSearch, pointNKNSquaredDistance);
                if (found < 1)
                {
                    ROS_WARN("PathPlannerManager::pathPlanningServiceCallback() - cannot find a close starting node - aborting");
                    b_abort_ = true;  
                }
                
            }
        }
    }
    
    if(b_successful_planning)
    {
        path_cost = computePathLength(path_out);
        //b_found_a_solution_once_ = true; // not needed here
        ROS_INFO("PathPlannerManager::pathPlanningServiceCallback() - path successfully computed - #failed attempts %d, crop step %d, path_cost %f", num_failures, crop_step, path_cost);
    }
    else
    {
        ROS_INFO("PathPlannerManager::pathPlanningServiceCallback() - no path exist for desired goal - #failed attempts %d, crop step %d", num_failures, crop_step);
    }
    
    if(b_abort_) return kAborted; /// < EXIT POINT 

    return (b_successful_planning ? kSuccess : kFailure);
}

bool PathPlannerManager::getRobotPosition(pcl::PointXYZI& robot_position)
{
    std::cout << "PathPlannerManager::getRobotPosition()" << std::endl;
    try
    {
        robot_pose_ = transform_robot_.get();
    }
    catch(TransformException e )
    {
	ROS_WARN("PathPlannerManager::getRobotPosition() - %s",e.what());
    }
    
    robot_position.x = robot_pose_.getOrigin().x();
    robot_position.y = robot_pose_.getOrigin().y();
    robot_position.z = robot_pose_.getOrigin().z();
    
    ROS_INFO_STREAM("robot position: ("<< robot_position.x << "," << robot_position.y << "," << robot_position.y << ")");
    return transform_robot_.isOk(); 
}


void PathPlannerManager::cropPcl(const CropBoxMethod& crop_box_method, const pcl::PointXYZI& start, const pcl::PointXYZI& goal, const pcl::PointCloud<pcl::PointXYZI>& pcl_in, pcl::PointCloud<pcl::PointXYZI>::Ptr pcl_out)
{
    if( (crop_box_method == kCropBoxTakeAll) )// || (crop_box_method == kCropBoxTakeAll2) )
    {
        *pcl_out = pcl_in;
        return; /// < EXIT POINT 
    }

    // crop box initialization: traversability
    pcl::CropBox<pcl::PointXYZI> cropbox_pcl;
    cropbox_pcl.setInputCloud(pcl_in.makeShared()); // deep copy of full traversability pcl 


    // prepare for cropping: compute cloud translation
    Eigen::Vector3f p1(start.x, start.y, start.z);
    Eigen::Vector3f p2(goal.x, goal.y, goal.z);
    Eigen::Vector3f middle_point = 0.5 * (p1 + p2);
    Eigen::Translation<float, 3> translation(-middle_point(0), -middle_point(1), -middle_point(2)); // bring the origin in the middle of the segment 

    // prepare for cropping: compute cloud rotation
    Eigen::Vector3f delta = p2 - p1;
    Eigen::Matrix3f rotation;
    Eigen::Vector3f up = Eigen::Vector3f::UnitZ();
    Eigen::Vector3f forward = delta / delta.norm();
    Eigen::Vector3f side = up.cross(forward);
    up = forward.cross(side);
    rotation << forward, side, up;

    Eigen::Affine3f transform;

    switch (crop_box_method)
    {
    case kCropBoxMethodPathAligned:

        // prepare for cropping: compute cloud transformation (this brings all the points in a path-aligned frame centered in middle_point)
        transform = rotation.transpose() * translation;


        // apply crop box filter to the pcl cloud w.r.t. path-aligned bounding box 
        //cropbox_traversability_pcl.setMin(Eigen::Vector4f(-1.5 * delta.norm(), -1.5, -1, 1));
        cropbox_pcl.setMin(Eigen::Vector4f(-1. * kGainXCropBoxPathAligned * delta.norm(), -0.5 * kSizeYCropBoxPathAligned, -0.5 * kSizeZCropBoxPathAligned, 1));
        //cropbox_traversability_pcl.setMax(Eigen::Vector4f(1.5 * delta.norm(), 1.5, 1, 1));
        cropbox_pcl.setMax(Eigen::Vector4f(1. * kGainXCropBoxPathAligned * delta.norm(), 0.5 * kSizeYCropBoxPathAligned, 0.5 * kSizeZCropBoxPathAligned, 1));
        cropbox_pcl.setTranslation(Eigen::Vector3f(0, 0, 0));
        cropbox_pcl.setRotation(Eigen::Vector3f(0, 0, 0));
        cropbox_pcl.setTransform(transform); // set a transformation that should be applied to the cloud before filtering
        cropbox_pcl.filter(*pcl_out); // filter and write the output in segment->traversability_pcl
        break;

    case kCropBoxMethodWorldAligned:
    case kCropBoxMethodWorldAligned2:
    {
        // prepare for cropping: compute cloud transformation (this brings all the points in the world-aligned frame centered in middle_point)
        transform = translation;

        float dx = std::max(1.f * kMinXSizeCropBox, (float) fabs(delta[0])); // 1.f* is for compiling with debug flags 
        float dy = std::max(1.f * kMinYSizeCropBox, (float) fabs(delta[1]));
        float dz = std::max(1.f * kMinZSizeCropBox, (float) fabs(delta[2]));

        float gain = 1;
        if (crop_box_method == kCropBoxMethodWorldAligned)
        {
            gain = kGainCropBox;
        }
        else
        {
            gain = kGainCropBox2;
        }

        // apply crop box filter to the traversability cloud w.r.t. world aligned bounding box 
        cropbox_pcl.setMin(Eigen::Vector4f(-0.5 * gain*dx, -0.5 * gain*dy, -0.5 * gain*dz, 1));
        cropbox_pcl.setMax(Eigen::Vector4f(0.5 * gain*dx, 0.5 * gain*dy, 0.5 * gain*dz, 1));
        cropbox_pcl.setTranslation(Eigen::Vector3f(0, 0, 0));
        cropbox_pcl.setRotation(Eigen::Vector3f(0, 0, 0));
        cropbox_pcl.setTransform(transform); // set a transformation that should be applied to the cloud before filtering
        cropbox_pcl.filter(*pcl_out); // filter and write the output in segment->traversability_pcl
    }
        break;


    case kCropBoxTakeAll:
    //case kCropBoxTakeAll2:
    {
        /// < managed above 
    }
        break;

    default:
        ROS_ERROR("Unknown cropbox method");

    }

}


bool PathPlannerManager::cropTwoPcls(const CropBoxMethod& crop_box_method, const pcl::PointXYZI& start, const pcl::PointXYZI& goal, 
                                     const pcl::PointCloud<pcl::PointXYZI>& pcl_in, const pcl::PointCloud<pcl::PointXYZI>& pcl_in2,
                                     pcl::PointCloud<pcl::PointXYZI>::Ptr pcl_out, pcl::PointCloud<pcl::PointXYZI>::Ptr pcl_out2)
{
    bool res_ok = true; 
    if( (crop_box_method == kCropBoxTakeAll) ) //|| (crop_box_method == kCropBoxTakeAll2) )
    {
        *pcl_out  = pcl_in;
        *pcl_out2 = pcl_in2;
        return true; /// < EXIT POINT 
    }

    // crop box initialization: traversability
    pcl::CropBox<pcl::PointXYZI> cropbox_pcl;
    pcl::PointCloud<pcl::PointXYZI>::Ptr pcl_in_shared = pcl_in.makeShared(); // deep copy of full traversability pcl 
    cropbox_pcl.setInputCloud(pcl_in_shared); 
    
    pcl::ExtractIndices<pcl::PointXYZI> extract;
    extract.setInputCloud(pcl_in_shared); 
    pcl::PointIndices::Ptr indices_filtered (new  pcl::PointIndices());

    // prepare for cropping: compute cloud translation
    Eigen::Vector3f p1(start.x, start.y, start.z);
    Eigen::Vector3f p2(goal.x, goal.y, goal.z);
    Eigen::Vector3f middle_point = 0.5 * (p1 + p2);
    Eigen::Translation<float, 3> translation(-middle_point(0), -middle_point(1), -middle_point(2)); // bring the origin in the middle of the segment 

    // prepare for cropping: compute cloud rotation
    Eigen::Vector3f delta = p2 - p1;
    Eigen::Matrix3f rotation;
    Eigen::Vector3f up = Eigen::Vector3f::UnitZ();
    Eigen::Vector3f forward = delta / delta.norm();
    Eigen::Vector3f side = up.cross(forward);
    up = forward.cross(side);
    rotation << forward, side, up;

    Eigen::Affine3f transform;
    
    switch (crop_box_method)
    {
    case kCropBoxMethodPathAligned:

        // prepare for cropping: compute cloud transformation (this brings all the points in a path-aligned frame centered in middle_point)
        transform = rotation.transpose() * translation;


        // apply crop box filter to the pcl cloud w.r.t. path-aligned bounding box 
        //cropbox_traversability_pcl.setMin(Eigen::Vector4f(-1.5 * delta.norm(), -1.5, -1, 1));
        cropbox_pcl.setMin(Eigen::Vector4f(-1. * kGainXCropBoxPathAligned * delta.norm(), -0.5 * kSizeYCropBoxPathAligned, -0.5 * kSizeZCropBoxPathAligned, 1));
        //cropbox_traversability_pcl.setMax(Eigen::Vector4f(1.5 * delta.norm(), 1.5, 1, 1));
        cropbox_pcl.setMax(Eigen::Vector4f(1. * kGainXCropBoxPathAligned * delta.norm(), 0.5 * kSizeYCropBoxPathAligned, 0.5 * kSizeZCropBoxPathAligned, 1));
        cropbox_pcl.setTranslation(Eigen::Vector3f(0, 0, 0));
        cropbox_pcl.setRotation(Eigen::Vector3f(0, 0, 0));
        cropbox_pcl.setTransform(transform); // set a transformation that should be applied to the cloud before filtering
        
        //cropbox_pcl.filter(*pcl_out); // filter and write the output in segment->traversability_pcl
        cropbox_pcl.filter(indices_filtered->indices); // filter and write the output in indices_filtered->indices
        extract.setIndices (indices_filtered);        
        
        break;

    case kCropBoxMethodWorldAligned:
    case kCropBoxMethodWorldAligned2:
    {
        // prepare for cropping: compute cloud transformation (this brings all the points in the world-aligned frame centered in middle_point)
        transform = translation;

        float dx = std::max(1.f * kMinXSizeCropBox, (float) fabs(delta[0])); // 1.f* is for compiling with debug flags 
        float dy = std::max(1.f * kMinYSizeCropBox, (float) fabs(delta[1]));
        float dz = std::max(1.f * kMinZSizeCropBox, (float) fabs(delta[2]));

        float gain = 1;
        if (crop_box_method == kCropBoxMethodWorldAligned)
        {
            gain = kGainCropBox;
        }
        else
        {
            gain = kGainCropBox2;
        }

        // apply crop box filter to the traversability cloud w.r.t. world aligned bounding box 
        cropbox_pcl.setMin(Eigen::Vector4f(-0.5 * gain*dx, -0.5 * gain*dy, -0.5 * gain*dz, 1));
        cropbox_pcl.setMax(Eigen::Vector4f(0.5 * gain*dx, 0.5 * gain*dy, 0.5 * gain*dz, 1));
        cropbox_pcl.setTranslation(Eigen::Vector3f(0, 0, 0));
        cropbox_pcl.setRotation(Eigen::Vector3f(0, 0, 0));
        cropbox_pcl.setTransform(transform); // set a transformation that should be applied to the cloud before filtering
        
        //cropbox_pcl.filter(*pcl_out); // filter and write the output in segment->traversability_pcl
        cropbox_pcl.filter(indices_filtered->indices); // filter and write the output in indices_filtered->indices
        extract.setIndices (indices_filtered);   
    }
        break;


    case kCropBoxTakeAll:
    {
        /// < managed above 
    }
        break;

    default:
        ROS_ERROR("Unknown cropbox method");
        res_ok = false; 
    }
    
    /// < apply the filter 
    if(res_ok)
    {
        extract.filter(*pcl_out);
        extract.filter(*pcl_out2);
    }

}


void PathPlannerManager::setCostFunctionType(int type, double lamda_trav, double lambda_aux_utility)
{
    boost::recursive_mutex::scoped_lock path_planning_locker(path_planner_mutex_);
    
    p_path_planner_->setCostFunctionType(type, lamda_trav, lambda_aux_utility);
}


double PathPlannerManager::computePathLength(nav_msgs::Path& path)
{
    double d_estimated_distance_ = 0;
    int input_path_length = path.poses.size();
    for (int ii = 0; ii < (input_path_length - 1); ii++)
    {
        d_estimated_distance_ += sqrt(pow(path.poses[ii + 1].pose.position.x - path.poses[ii].pose.position.x, 2) +
                                      pow(path.poses[ii + 1].pose.position.y - path.poses[ii].pose.position.y, 2) +
                                      pow(path.poses[ii + 1].pose.position.z - path.poses[ii].pose.position.z, 2));
    }
    return d_estimated_distance_;
}