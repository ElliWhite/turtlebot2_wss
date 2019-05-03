#include <TravAnalyzer.h>

#include <limits>       // std::numeric_limits

#include <pcl/common/common.h>


// #define ROBOT_CLOCKS_ARE_SYNCHED IT DOES NOT WORK


const float TravAnalyzer::kRobotRadius = 0.45; //0.45 + 5;  // [m] robot radius for computing the clearance   
const float TravAnalyzer::kRobotRadiusSquared = TravAnalyzer::kRobotRadius * TravAnalyzer::kRobotRadius; // [m^2] robot radius squared for computing the clearance 
const float TravAnalyzer::kClearanceCollisionValue = 1000; // value of the clearance when robot the robot is in collision 
const float TravAnalyzer::kClearanceDoCareRange = 1.0;//1.5; // [m] value of the maximum clearance for which robot cares in computing clearance cost
const float TravAnalyzer::kClearanceDoCareRangeSquared = TravAnalyzer::kClearanceDoCareRange*TravAnalyzer::kClearanceDoCareRange;
const float TravAnalyzer::kRobotToAvoidRadius = 0.7; // [m] other robot radius for computing the clearance (multi-robot traversability)  
const float TravAnalyzer::kRobotToAvoidRadiusSquared = TravAnalyzer::kRobotToAvoidRadius*TravAnalyzer::kRobotToAvoidRadius; // [m] squared kRobotToAvoidRadius
const float TravAnalyzer::kPathToAvoidCropDist = 1.5; // [m] 0.6 = 0.2 * 3 sec <- crop distance for the path of the robot to avoid
const float TravAnalyzer::kPathToAvoidCropDist2 = TravAnalyzer::kPathToAvoidCropDist*TravAnalyzer::kPathToAvoidCropDist; // [m] squared kPathToAvoidCropDist
const float TravAnalyzer::kPathToAvoidResolution = 0.1; // [m] resolution of the path to avoid
const float TravAnalyzer::kPathToAvoidResolution2 = TravAnalyzer::kPathToAvoidResolution*TravAnalyzer::kPathToAvoidResolution; // [m] squared kPathToAvoidResolution
const float TravAnalyzer::kTraversabilityMaxCost = 100; // max cost for a traversability point 
const double TravAnalyzer::kObstPclResetTime = 1; // [s] if elapsed time from last obst pcl check is > kObstPclResetTime the obst_pcl is not used anymore
const double TravAnalyzer::kTeammatePositionResetTime = 4; // [s]
const double TravAnalyzer::kTeammatePathResetTime     = 10; // [s]

const float TravAnalyzer::kClearanceLambda = 5; // 
const float TravAnalyzer::kNeighborhoodDeltaZ = 0.1; // [m]

const float TravAnalyzer::kRobotZOffset = 0.2; // [m] how much each point is pushed higher from the map in the robot direction (TODO: we should use here local normals!)
    
//static const float kDeltaRadiusSquared = std::max(TravAnalyzer::kRobotToAvoidRadiusSquared - TravAnalyzer::kRobotRadiusSquared, 0.f);

TravAnalyzer::TravAnalyzer()
{
    map_frame_ = "/map"; 
            
    b_ready_ = false;
    b_empty_wall_ = true;

    b_set_ost_pcl_ = false;

    b_enable_team_avoidance_      = false;    
    b_set_team_future_trails_pcl_ = false; 
            
    robot_id_         = 0;
    number_of_robots_ = 0; 
    
    b_updated_teammate_positions_ = false; 
    
    for(size_t id=0; id < kMaxNumberOfRobots; id++)
    {
        b_updated_teammate_position_[id]            = false;
        b_updated_teammate_position_from_msg_[id]   = false;
        b_teammate_path_downsampled_[id]            = false;
    
        teammate_position_[id].x = std::numeric_limits<float>::max();
        teammate_position_[id].y = std::numeric_limits<float>::max();
        teammate_position_[id].z = std::numeric_limits<float>::max();
        
        
        teammate_pos_last_time_[id]  = ros::TIME_MIN; 
        teammate_path_last_time_[id] = ros::TIME_MIN;
    }
    
}

TravAnalyzer::~TravAnalyzer()
{
}


void TravAnalyzer::setInput(std::vector<int>& clusters_info, pcl::PointCloud<pcl::PointXYZRGBNormal>& wall_pcl, pcl::PointCloud<pcl::PointXYZRGBNormal>& input_pcl)
{
    boost::recursive_mutex::scoped_lock input_locker(input_pcl_mutex_);
      
    noWall_pcl_ = input_pcl;
    wall_pcl_ = wall_pcl;
    clusters_info_ = clusters_info;

    b_ready_ = true;

    if (wall_pcl_.size() > 0)
    {
        wall_kdtree_.setInputCloud(wall_pcl_.makeShared());
        b_empty_wall_ = false;
    }
    else
    {
        ROS_WARN("TravAnalyzer::setInput() - empty wall pcl");
        b_empty_wall_ = true;
        //b_ready_ = false;
    }

    if (noWall_pcl_.size() > 0)
    {
        noWall_kdtree_.setInputCloud(noWall_pcl_.makeShared());
    }
    else
    {
        ROS_WARN("TravAnalyzer::setInput() - empty noWall pcl");
        b_ready_ = false;
    }
}

//void TravAnalyzer::filterNeighborhood(pcl::PointXYZRGBNormal p, double deltaZ, std::vector<int>& pointIdx, std::vector<float>& pointSquaredDistance)
//{
//    std::vector<float>::iterator it_dist = pointSquaredDistance.begin();
//    std::vector<int>::iterator    it_id  = pointIdx.begin();
//
//    while ((it_dist != pointSquaredDistance.end()) && (it_id != pointIdx.end()))
//    {
//        pcl::PointXYZRGBNormal p_it =
//        if (*it_dist > max_squared_distance)
//        {
//            it_dist = pointSquaredDistance.erase(it_dist);
//            it_id   = pointIdx.erase(it_id);
//        }
//        else
//        {
//            ++it_dist;
//            ++it_id;
//        }
//    }
//}

void TravAnalyzer::computeTrav(PointCloudI& traversabilty_pcl)
{
    if (!b_ready_) return; /// < EXIT POINT 
    
    
    ROS_INFO_STREAM("TravAnalyzer::computeTrav() - start "); 
    
    boost::recursive_mutex::scoped_lock input_locker(input_pcl_mutex_);

    if (b_enable_team_avoidance_)
    {
        b_updated_teammate_positions_ = updateTeammatePositions(); 
        downsampleTeamPaths();
        buildFutureTrailsPcl();
    }

    checkObstPclUpdate();

    traversabilty_pcl_.clear();
    traversabilty_pcl_.header.frame_id = map_frame_;

    roughness_pcl_.clear();
    roughness_pcl_.header.frame_id = map_frame_;

    label_pcl_.clear();
    label_pcl_.header.frame_id = map_frame_;

    clearence_pcl_.clear();
    clearence_pcl_.header.frame_id = map_frame_;

    density_pcl_.clear();
    density_pcl_.header.frame_id = map_frame_;

    cout << "noWall_pcl_.size(): " << noWall_pcl_.size() << endl;
    cout << "clusters_info_.size(): " << clusters_info_.size() << endl;
    
    double pow_config_leaf_size_3 =  pow(config_.leaf_size, 3);
    double volume_local_sphere    = (4 * M_PI * pow(config_.density_radius_multiplier * config_.leaf_size, 3) / 3);
    
    double pow_config_leaf_size_2 =  pow(config_.leaf_size, 2);
    double area_local_surface     = M_PI * pow(config_.density_radius_multiplier * config_.leaf_size, 2);
   
    
    for (int i = 0; (i < noWall_pcl_.size()) && (i < clusters_info_.size()); i++)
    {
        if (clusters_info_[i] != -1)
        {
            double wL = computeLabel(clusters_info_[i]);

            std::vector<int> pointIdxRadiusSearch(1);
            std::vector<float> pointRadiusSquaredDistance(1);

            pcl::PointXYZRGBNormal p = noWall_pcl_[i];
            //input_kdtree.radiusSearch(p,0.2,pointIdxRadiusSearch,pointRadiusSquaredDistance);
            int neighbors_in_radius = noWall_kdtree_.radiusSearch(p, config_.density_radius_multiplier * config_.leaf_size, pointIdxRadiusSearch, pointRadiusSquaredDistance);

            pcl::PointCloud<pcl::PointXYZRGBNormal> nh;
            pcl::PointCloud<pcl::PointXYZRGBNormal> nh_planar;
            for (int k = 0; k < pointIdxRadiusSearch.size(); k++)
            {
                pcl::PointXYZRGBNormal p_k = noWall_pcl_[pointIdxRadiusSearch[k]];
                nh.push_back(p_k);
//                if( fabs(p_k.z - p.z) < kNeighborhoodDeltaZ )
//                {
//                    nh_planar.push_back(p_k);
//                }
               
            }

            double wC = computeClearance(i);

            /// < throw away all the points that bring robot into collision 
            if (wC >= TravAnalyzer::kClearanceCollisionValue) continue; /// < CONTINUE

            double wR = computeRough(i, nh);
            double wD = computeDensity(i, nh, pow_config_leaf_size_3, volume_local_sphere);
            
            //double wD = computePlanarDensity(i, nh_planar, pow_config_leaf_size_2, area_local_surface);


            //cout<<"cost wR: "<<wR<<" cost wD: "<<wD<<" cost wC: "<<wC<<endl;

            //double wTot = wL * (wD + wR + wC) / 3; // original 
            double wTot = wL*(wD + 1)*(wR + 1)*(kClearanceLambda*wC+1);
            //double wTot = wC;

            //cout<<"trav cost: "<<wTot<<endl;

            //if (wTot < 2) /// < FIXME: do not use here a numerical threshold in this way!!!!
            //if ((wC < TravAnalyzer::kClearanceCollisionValue) && (wTot < kTraversabilityMaxCost))
            //if (wTot < kTraversabilityMaxCost)
            {

                PointOutI point;
                point.x = noWall_pcl_[i].x;
                point.y = noWall_pcl_[i].y;
                point.z = noWall_pcl_[i].z;

                point.intensity = wTot;
                traversabilty_pcl_.push_back(point);

                point.intensity = wD;
                density_pcl_.push_back(point);

                point.intensity = wR;
                roughness_pcl_.push_back(point);

                point.intensity = wL;
                label_pcl_.push_back(point);

                point.intensity = wC;
                clearence_pcl_.push_back(point);

            }

        }

    }
    traversabilty_pcl = traversabilty_pcl_;
    
    ROS_INFO_STREAM("TravAnalyzer::computeTrav() - end "); 
}

double TravAnalyzer::computeRough(int point_index, pcl::PointCloud<pcl::PointXYZRGBNormal>& nh)
{
    if (nh.size() > 3)
    {
        double tot = 0;
        pcl::ModelCoefficients coefficients;
        pcl::PointIndices::Ptr inliers(new pcl::PointIndices);
        // Create the segmentation object
        pcl::SACSegmentation<pcl::PointXYZRGBNormal> seg;

        seg.setOptimizeCoefficients(true);

        seg.setModelType(pcl::SACMODEL_PLANE);
        seg.setMethodType(pcl::SAC_RANSAC);
        seg.setDistanceThreshold(0.01);

        seg.setInputCloud(nh.makeShared());
        seg.segment(*inliers, coefficients);

        for (int i = 0; i < nh.size(); i++)
        {
            double d = point_plane_distance(nh[i], coefficients);
            tot += d;
        }

        return min(10 * tot / (nh.size()), 1.0);
    }
    else
        return 1;
}


inline double TravAnalyzer::computeDensity(int point_index, pcl::PointCloud<pcl::PointXYZRGBNormal>& nh)
{
    //double density = nh.size()*pow(config.leaf_size,3)/(4*M_PI*pow(3 * config.leaf_size,3)/3);

    //	double expected = M_PI*pow(config.densityRadius,2)/pow(config.leaf_size,2);
    //	double density = max(min(1.0,2*(nh.size()/expected - 0.5)),0.0);

    double density = nh.size() * pow(config_.leaf_size, 3) / (4 * M_PI * pow(config_.density_radius_multiplier * config_.leaf_size, 3) / 3);
    return 2 / (125 * density);
}


inline double TravAnalyzer::computeDensity(int point_index, pcl::PointCloud<pcl::PointXYZRGBNormal>& nh, double pow_config_leaf_size_3, double volume_local_sphere)
{
    double density = nh.size() * pow_config_leaf_size_3 / volume_local_sphere;
    return 1./(0.1 + density);
}

inline double TravAnalyzer::computePlanarDensity(int point_index, pcl::PointCloud<pcl::PointXYZRGBNormal>& nh, double pow_config_leaf_size_2, double area_local_surface)
{
    double density = nh.size() * pow_config_leaf_size_2 / area_local_surface;
    return 1./(0.1 + density);
}

template<class Point1, class Point2>
double dist_fun(const Point1& p1, const Point2& p2)
{
    return sqrt(pow(p1.x - p2.x, 2) + pow(p1.y - p2.y, 2) + pow(p1.z - p2.z, 2));
}

double TravAnalyzer::computeClearance(int point_index)
{
    // point2point squared distance
    float dist_squared = std::numeric_limits<float>::max();
    
    pcl::PointXYZRGBNormal point = noWall_pcl_[point_index]; 
    point.z += kRobotZOffset; 

    if (!b_empty_wall_)
    {
        std::vector<int> pointIdxNKNSearch(1);
        std::vector<float> pointNKNSquaredDistance(1,std::numeric_limits<float>::max());

        wall_kdtree_.nearestKSearch(point, 1, pointIdxNKNSearch, pointNKNSquaredDistance);
        dist_squared = pointNKNSquaredDistance[0];

        /*if( fabs(dist - dist_fun(noWall_pcl_[point_index],wall_pcl_.points[pointIdxNKNSearch[0]]) ) > 1e-6 )  
        {
            std::cout << "TravAnalyzer::computeClearance() - error - dist: " << dist << ", dist fun: " << dist_fun(noWall_pcl_[point_index],wall_pcl_.points[pointIdxNKNSearch[0]]) << std::endl;
            quick_exit(-1);
        }*/

        //double threshold = 0.1;
        //double inf = INFINITY;
        //double inf = std::numeric_limits<double>::max();  
        //return (dist2 < threshold) ? 3 : (threshold / dist2);
    }

    if (b_set_ost_pcl_)
    {
        float dist_obst_pcl_squared = std::numeric_limits<float>::max();

        std::vector<int> pointIdxNKNSearch(1);
        std::vector<float> pointNKNSquaredDistance(1,std::numeric_limits<float>::max());

        int n_found = obst_pcl_kdtree_.nearestKSearch(point, 1, pointIdxNKNSearch, pointNKNSquaredDistance);
        //if(n_found > 0)
        {
            dist_obst_pcl_squared = pointNKNSquaredDistance[0];
        }

        dist_squared = std::min(dist_squared, dist_obst_pcl_squared);
    }

//    if (b_enable_team_avoidance_ && b_updated_teammate_position_)
//    {
//        // compute the point2point distance
//        double dist_squared_robot = distSquared(noWall_pcl_[point_index], teammate_position_);
//
//        /// check the path only if we are close to the robot 
//        double dist_squared_path = std::numeric_limits<double>::max();
//        if ((dist_squared_robot > kRobotToAvoidRadiusSquared) && (dist_squared_robot < kPathToAvoidCropDist2))
//        {
//            dist_squared_path = computeDistSquaredFromPath(point_index, kRobotToAvoidRadiusSquared);
//        }
//
//        // point2point squared distance from path 
//        dist_squared_path = std::min(dist_squared_path, dist_squared_robot);
//
//        // compute point to robot distance 
//        dist_squared_path = std::max(dist_squared_path - kRobotToAvoidRadiusSquared, 0.);
//        //dist_squared_path = dist_squared_path - kDeltaRadiusSquared;
//
//        dist_squared = std::min(dist_squared, dist_squared_path);
//    }
    
    if (b_enable_team_avoidance_ && b_set_team_future_trails_pcl_)
    {
        boost::recursive_mutex::scoped_lock team_future_trails_pcl_locker(team_future_trails_pcl_mutex_);
        
        float dist_future_trails_pcl = std::numeric_limits<float>::max();
                
        std::vector<int> pointIdxNKNSearch(1);
        std::vector<float> pointNKNSquaredDistance(1,std::numeric_limits<float>::max());

        int n_found = future_trails_pcl_kdtree_.nearestKSearch(point, 1, pointIdxNKNSearch, pointNKNSquaredDistance);
        //if(n_found > 0)
        {
            // compute point-to-robot distance (by considering robot radius)
            //dist_future_trails_pcl = std::max(sqrt(pointNKNSquaredDistance[0]) - kRobotToAvoidRadius, 0.f);
            dist_future_trails_pcl = std::max(pointNKNSquaredDistance[0] - kRobotToAvoidRadiusSquared, 0.f); // not exact math but much faster
        }

        dist_squared = std::min(dist_squared, dist_future_trails_pcl);
    }

    return (dist_squared < kRobotRadiusSquared ) ? kClearanceCollisionValue : (dist_squared < kClearanceDoCareRangeSquared? kRobotRadiusSquared / dist_squared : 0);
}

double TravAnalyzer::computeLabel(int classification)
{
    switch (classification)
    {
    case 1:
        return 0.7;

    case 2:
        return 0.8;

    case 3:
        return 1;
    default:
        return 1;
    }
    return 1;
}

void TravAnalyzer::getPcl(PointCloudI& clearence_pcl, PointCloudI& density_pcl, PointCloudI& label_pcl, PointCloudI& roughness_pcl)
{
    clearence_pcl = clearence_pcl_;
    density_pcl = density_pcl_;
    label_pcl = label_pcl_;
    roughness_pcl = roughness_pcl_;
}

void TravAnalyzer::setRobotToAvoidPosition(const geometry_msgs::TransformStamped& msg)
{
//    if (!b_enable_team_avoidance_) return;
//
//    std::cout << "TravAnalyzer::setRobotToAvoidPosition()" << std::endl;
//
//    teammate_position_.x = msg.transform.translation.x;
//    teammate_position_.y = msg.transform.translation.y;
//    teammate_position_.z = msg.transform.translation.z;
//    
//    b_updated_teammate_position_from_msg_ = true; 
}

bool TravAnalyzer::updateTeammatePositions()
{
    if (!b_enable_team_avoidance_) return false;

    std::cout << "TravAnalyzer::updateRobotToAvoidPosition()" << std::endl;
    
    bool b_update_from_transform = updateTeammatePositionsFromTransform();

    return b_updated_teammate_position_from_msg_ || b_update_from_transform;
}

bool TravAnalyzer::updateTeammatePositionsFromTransform()
{
    if (!b_enable_team_avoidance_) return false;
    
    bool got_update = false; 

    std::cout << "TravAnalyzer::updateRobotToAvoidPositionFromTransform()" << std::endl;

    tf::StampedTransform robot_pose;
            
    for(size_t id=0; id < number_of_robots_; id++)
    {
        if(id == robot_id_) continue; /// < CONTINUE 
        
        try
        {
            robot_pose = p_transform_teammate_->get(map_frame_,teammate_base_link_frame_[id]);
            
            boost::recursive_mutex::scoped_lock wall_locker(teammate_position_mutex_[id]);
            
            teammate_position_[id].x = robot_pose.getOrigin().x();
            teammate_position_[id].y = robot_pose.getOrigin().y();
            teammate_position_[id].z = robot_pose.getOrigin().z();
            
            teammate_pos_last_time_[id] = ros::Time::now(); 
        }
        catch (TransformException e)
        {
            ROS_WARN("TravAnalyzer::updateRobotToAvoidPositionFromTransform() - %s", e.what());
        }
        
        got_update = got_update || p_transform_teammate_->isOk();
    }
    return got_update;
}

void TravAnalyzer::setOtherRobotPathToAvoid(const nav_msgs::Path& path)
{
//    if (b_enable_team_avoidance_)
//    {
//        boost::recursive_mutex::scoped_lock wall_locker(robot_to_avoid_path_mutex_);
//        robot_to_avoid_path_ = path;
//
//        b_robot_to_avoid_path_is_filtered_ = false;
//    }
}

    
void TravAnalyzer::setMultiRobotPose(const trajectory_control_msgs::MultiRobotPose& msg)
{
    if (!b_enable_team_avoidance_) return;
    
    int sender_id = msg.robot_id;
    
    if (sender_id >= number_of_robots_ && number_of_robots_ <= kMaxNumberOfRobots)
    {
        //update teamsize
        number_of_robots_ = sender_id + 1;
    }

    std::cout << "TravAnalyzer::setMultiRobotPose() - robot-" << robot_id_ << " received msg from robot-" << sender_id << std::endl;
    
    if(sender_id != robot_id_)
    {
        boost::recursive_mutex::scoped_lock wall_locker(teammate_position_mutex_[sender_id]);
        
        teammate_position_[sender_id].x = msg.pose.pose.position.x;
        teammate_position_[sender_id].y = msg.pose.pose.position.y;
        teammate_position_[sender_id].z = msg.pose.pose.position.z;

#ifdef ROBOT_CLOCKS_ARE_SYNCHED           
        teammate_pos_last_time_[sender_id] = msg.header.stamp; 
#else
        teammate_pos_last_time_[sender_id] =  ros::Time::now(); 
#endif
        
    }
}

void TravAnalyzer::setMultiRobotPath(const trajectory_control_msgs::MultiRobotPath& msg)
{
    if (!b_enable_team_avoidance_) return;
                
    int sender_id = msg.robot_id;

    if (sender_id >= number_of_robots_ && number_of_robots_ <= kMaxNumberOfRobots)
    {
        //update teamsize
        number_of_robots_ = sender_id + 1;
    }
    
    std::cout << "TravAnalyzer::setMultiRobotPath() - robot-" << robot_id_ << " received msg from robot-" << sender_id <<", #robots " << number_of_robots_ << std::endl;
        
    if (sender_id != robot_id_)
    {
        boost::recursive_mutex::scoped_lock wall_locker(teammate_path_mutex_[sender_id]);
        teammate_path_[sender_id].header = msg.header;
        teammate_path_[sender_id].poses  = msg.poses;
        
#ifdef ROBOT_CLOCKS_ARE_SYNCHED        
        teammate_path_last_time_[sender_id] = msg.header.stamp;
#else
        teammate_path_last_time_[sender_id] = ros::Time::now(); //msg.header.stamp;
#endif

        b_teammate_path_downsampled_[sender_id] = false;
    }
}

void TravAnalyzer::setObstPcl(const sensor_msgs::PointCloud2& obst_pcl_msg)
{
    boost::recursive_mutex::scoped_lock locker(obst_pcl_mutex_);

    obst_pcl_last_time_ = ros::Time::now();

    pcl::fromROSMsg(obst_pcl_msg, obst_pcl_);

    b_set_ost_pcl_ = true;
}

void TravAnalyzer::checkObstPclUpdate()
{
    if (!b_set_ost_pcl_) return; /// < EXIT POINT 

    boost::recursive_mutex::scoped_lock locker(obst_pcl_mutex_);

    ros::Duration elapsed_time_since_last_message = ros::Time::now() - obst_pcl_last_time_;
    if (elapsed_time_since_last_message.toSec() > kObstPclResetTime)
    {
        b_set_ost_pcl_ = false;
    }
    else
    {
        if (obst_pcl_.size() > 0)
        {
            ROS_INFO("TravAnalyzer::checkObstPclUpdate() - working on obst_pcl too");

            obst_pcl_kdtree_.setInputCloud(obst_pcl_.makeShared());


            /// < http://codextechnicanum.blogspot.de/2015/04/find-minimum-oriented-bounding-box-of.html

            pcl::compute3DCentroid<pcl::PointXYZRGBNormal>(obst_pcl_, obst_plc_centroid_);

            Eigen::Vector4f max_pt;
            pcl::getMaxDistance<pcl::PointXYZRGBNormal>(obst_pcl_, obst_plc_centroid_, max_pt);

            obst_plc_radius_ = (max_pt - obst_plc_centroid_).norm();

            std::cout << "TravAnalyzer::checkObstPclUpdate() - cloud radius: " << obst_plc_radius_ << std::endl;

        }
        else
        {
            b_set_ost_pcl_ = false;
        }
    }
}


void TravAnalyzer::downsampleTeamPaths()
{
    if (b_enable_team_avoidance_ && b_updated_teammate_position_)
    {
        for(size_t i=0; i < number_of_robots_; i++)
        {
            if(i == robot_id_) continue; /// < CONTINUE
            
            boost::recursive_mutex::scoped_lock wall_locker(teammate_path_mutex_[i]);

            if (b_teammate_path_downsampled_[i]) continue; /// < CONTINUE
   
            b_teammate_path_downsampled_[i] = true;

            nav_msgs::Path filtered_path;

            downSamplePath(teammate_path_[i], teammate_position_[i], filtered_path);

            teammate_path_[i] = filtered_path;
        }
    }
}

double TravAnalyzer::computeDistSquaredFromPath(const int point_index, const double safety_radius)
{
//    double dist2_min = std::numeric_limits<double>::max();
//    int path_size = robot_to_avoid_path_.poses.size();
//
//    if (path_size == 0) return dist2_min; /// < EXIT POINT 
//
//    for (int jj = 0; jj < path_size; jj++)
//    {
//        double dist2 = distSquared(robot_to_avoid_path_.poses[jj].pose.position, noWall_pcl_[point_index]);
//        dist2_min = std::min(dist2, dist2_min);
//        if (dist2_min < safety_radius) break; // no reason to go on 
//    }
//    return dist2_min;
}

void TravAnalyzer::downSamplePath(const nav_msgs::Path& in, const PointOutI& start_point, nav_msgs::Path& filtered_path)
{
    filtered_path.header = in.header;

    int path_size = in.poses.size();

    std::cout << "TravAnalyzer::downSamplePath() - path size: " << path_size << std::endl;

    if (path_size == 0) return; /// < EXIT POINT 

    geometry_msgs::Pose previous_pose = in.poses[0].pose;

    for (int jj = 1; jj < path_size; jj++)
    {
        double distToRobot2    = distSquared(in.poses[jj].pose.position, start_point);
        double distToPrevious2 = distSquared(previous_pose.position, in.poses[jj].pose.position);
        if ((distToRobot2 < kPathToAvoidCropDist2) && (distToPrevious2 > kPathToAvoidResolution2))
        {
            filtered_path.poses.push_back(in.poses[jj]);
            previous_pose = in.poses[jj].pose;
        }
        if (distToRobot2 > kPathToAvoidCropDist2) break;
    }
}

void TravAnalyzer::addPathToPcl(const nav_msgs::Path& in, pcl::PointCloud<pcl::PointXYZRGBNormal>& point_cloud)
{
    int path_size = in.poses.size();

    if (path_size == 0) return; /// < EXIT POINT 

    pcl::PointXYZRGBNormal point; 
        
    for (int jj = 0; jj < path_size; jj++)
    {
        point.x = in.poses[jj].pose.position.x;
        point.y = in.poses[jj].pose.position.y;
        point.z = in.poses[jj].pose.position.z;
        point_cloud.push_back(point);
    }
}

void TravAnalyzer::buildFutureTrailsPcl()
{
    boost::recursive_mutex::scoped_lock team_future_trails_pcl_locker(team_future_trails_pcl_mutex_);
 
    future_trails_pcl_.clear(); 
    
    pcl::PointXYZRGBNormal robot_position; 
            
    for(size_t id=0; id < number_of_robots_; id++)
    {
        // do no consider my path
        if(id == robot_id_) continue; /// < CONTINUE 
        
        {
        boost::recursive_mutex::scoped_lock teammate_position_locker(teammate_position_mutex_[id]);
        double elapsed_time_since_last_position_update = (ros::Time::now() - teammate_pos_last_time_[id]).toSec();
        if( elapsed_time_since_last_position_update < kTeammatePositionResetTime )
        {
            robot_position.x = teammate_position_[id].x; 
            robot_position.y = teammate_position_[id].y;
            robot_position.z = teammate_position_[id].z;
            future_trails_pcl_.push_back(robot_position);
        }
        }
        
        {
        boost::recursive_mutex::scoped_lock teammate_path_locker(teammate_path_mutex_[id]);
        double elapsed_time_since_last_path_update = (ros::Time::now() - teammate_path_last_time_[id]).toSec();
        if( ( elapsed_time_since_last_path_update < kTeammatePathResetTime ) && b_teammate_path_downsampled_[id] )
        {
            addPathToPcl(teammate_path_[id], future_trails_pcl_);
        }
        }
    }
    
    if(!future_trails_pcl_.empty())
    {
        future_trails_pcl_kdtree_.setInputCloud(future_trails_pcl_.makeShared());
        b_set_team_future_trails_pcl_ = true; 
    }
    else
    {
        b_set_team_future_trails_pcl_ = false; 
    }
}