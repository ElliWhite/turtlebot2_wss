#include <ros/ros.h>
#include <signal.h>

#include <limits>

#include <tf/tf.h>
#include <tf/transform_listener.h>

#include <geometry_msgs/PoseArray.h>
#include <dynamic_reconfigure/server.h>
#include <boost/thread/thread.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/thread/recursive_mutex.hpp>

#include <std_msgs/Bool.h>
#include <std_msgs/Int32.h>
#include <std_msgs/String.h>

#include <pcl/common/geometry.h>
#include <pcl/segmentation/extract_clusters.h>

#include <trajectory_control_msgs/PlanningFeedback.h>
#include <trajectory_control_msgs/PlanningTask.h>
#include <trajectory_control_msgs/PlanningGlobalPath.h>
#include <trajectory_control_msgs/PlanningStatus.h>
#include <trajectory_control_msgs/PathPlanning.h>

#include <wireless_network_msgs/RequestRSS_PC.h>
#include <networkanalysis_msgs/wirelesslink.h>

#include <visualization_msgs/MarkerArray.h>

#include "PathPlannerManager.h"
#include "MarkerController.h"
#include "Transform.h"
#include "QueuePathPlanner.h"


/// < PARAMETERS 

const double kMinimumWaitingTimeForPublishingANewPath = 0.5;//0.5; // [s] minimum time to wait for giving a new path as input 
const double kMinimumWaitingTimeForPublishingANewPathWhenClose = 1; // [s] minimum time to wait for giving a new path as input when close to goal
const double kMaxDistanceToNextWaypoint = 3; // [m]
const double kMaxDistanceFromFirstWaypoint = 0.5; // [m]
const double kPathPlannerTimeoutForAbortingOnLaserProximity = 1; //[s]
const double kPathPlannerMinTimeForReabortTrajectoryOnLaserProximity = 5; //[s]

const int kMaxNumReplanningAttemptsAfterUnexpectedFailure = std::numeric_limits<int>::max(); //5; // unexpected failure = failure after a first solution was found
const int kMaxNumInitialPlanningAttempts = 5;//std::numeric_limits<int>::max(); //5; // this is used on goal selection: it is the number of attempts for looking to a new solution 
const double kSleepTimeAfterInitialAttemptSec = 0.5; // sec  

const int16_t kMinRssiSignalDefault = -80; // [dB]
const double kMaxCriticalRssiTime = 10; // [s]
const double kTimeFromLastMsgReset = 20; // [s]

/// < GLOBAL VARS 

boost::shared_ptr<PathPlannerManager> p_planner_manager;
boost::recursive_mutex planner_manager_mutex;

boost::shared_ptr<MarkerController> p_marker_controller;

ros::Publisher robot_global_path_pub;
ros::Publisher robot_local_path_pub;

ros::Publisher robot_global_path_draw_pub;
ros::Publisher robot_local_path_draw_pub;

ros::Publisher path_plan_stat_pub;
ros::Publisher goal_abort_pub;
ros::Publisher trajectory_control_abort_pub;
ros::Publisher rviz_message_string_pub;

ros::Publisher marker_array_pub;
    
//ros::Publisher rss_point_cloud_pub; 

ros::Time time_last_path_msg = ros::TIME_MIN;

boost::recursive_mutex last_pp_success_timemutex_;
ros::Time time_last_path_planning_success = ros::TIME_MAX;
ros::Time time_last_proximity_abort = ros::TIME_MAX;

bool b_global_goal = false; /// < the goal is global if it is the FINAL destination,
                            /// < it is LOCAL if it is an intermediate WP

// replanning attempts after unexpected failure (environment change)
int remaining_planning_attempts_after_unexpected_failure = kMaxNumReplanningAttemptsAfterUnexpectedFailure;

std::string robot_frame_id;

bool b_enable_laser_proximity_callback=false;


// RSS stuff 
boost::shared_ptr<ros::ServiceClient> p_srv_client_rss;
bool b_use_rss = false;
std::string rss_service_name;

bool b_iInit_critical_rssi_time = true;
ros::Time time_last_critical_rssi = ros::TIME_MIN;
ros::Time time_last_rssi_msg = ros::TIME_MIN;
int16_t min_rssi_signal = kMinRssiSignalDefault;

volatile bool b_rss_take_action = false; 
boost::recursive_mutex rss_mutex;

//Get the markerArray of visited node
visualization_msgs::MarkerArray rss_markerArr;


///	\class GlobalPath
///	\author Alcor
///	\brief A class for representing a global path received from QueuePathPlanner. A global path is in general composed by a trajectory plus a possible final rotation
///	\note 
/// 	\todo 
///	\date
///	\warning
class GlobalPath
{
public:
    
    GlobalPath()
    {
        reset();
    }

    void reset()
    {
        num_waypoints_ = 0;
        path_.waypoints.clear();
        
        current_waypoint_idx_ = 0;
        current_local_goal_idx_ = 0;
        
        remaning_cost_path_ = 0; 
        
        //b_have_final_rotation_ = false;
    }
    
public: // getters 
    
    // did we set this global path? 
    bool isSet() const { return num_waypoints_ > 1; } // we need at list two waypoints since the first one is the starting position of the robot 
    
    bool isLastWaypoint() const { return (current_waypoint_idx_ == (num_waypoints_ - 1));} 
    bool isPathCyclic() const { return (path_.type == kPathCyclic); }
    
    
    double computePathLength(int start_index)
    {
        double d_estimated_distance_ = 0;
        int input_path_length = path_.path.poses.size();
        for (int ii = start_index; ii < (input_path_length - 1); ii++)
        {
            d_estimated_distance_ += sqrt(pow(path_.path.poses[ii + 1].pose.position.x - path_.path.poses[ii].pose.position.x, 2) +
                                          pow(path_.path.poses[ii + 1].pose.position.y - path_.path.poses[ii].pose.position.y, 2) +
                                          pow(path_.path.poses[ii + 1].pose.position.z - path_.path.poses[ii].pose.position.z, 2));
        }
        return d_estimated_distance_;
    }
    
public:
    
    boost::recursive_mutex mutex_;

    int num_waypoints_;
    int current_waypoint_idx_;     // the id of the waypoint we have moving to (starts from 0 to (num_waypoints - 1) )
    int current_local_goal_idx_;   // the id of the point we are actually "locally" planning to
        
    double remaning_cost_path_; // cost of the portion of path which is not covered by the local path planner 
    
    //bool b_have_final_rotation_;  // do we have a final rotation to perform? 
    
    trajectory_control_msgs::PlanningGlobalPath path_;
    //    std_msgs/Header header
    //    string name
    //    int32 task_id
    //    geometry_msgs/Point[] waypoints  
    //    nav_msgs/Path path
};

GlobalPath global_path;

/// < Queue planning stuff

//boost::recursive_mutex queue_path_mutex;
//nav_msgs::Path queue_path;

ros::Publisher queue_task_feedback_pub; // to say "hey, I'm ready!"
ros::Subscriber queue_task_feedback_sub; // to know when to stop
ros::Subscriber queue_task_path_sub; // path to follow

std::string queue_task_feedback_topic;
std::string queue_task_path_topic;


/// < declarations 

void localGoalCallback();
void globalPathCallback(const trajectory_control_msgs::PlanningGlobalPath& global_path_msg);
void goalAbortCallback(std_msgs::Bool msg);
void resetGlobalPath();
void rssManagement(const sensor_msgs::PointCloud2& traversability_msg);
void rssPublishGoalMarker(double x, double y, double z);

/// < functions 

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


void publishEmptyRobotPathToDraw()
{
    // this is useful for 
    nav_msgs::Path path; // empty path 
    robot_global_path_draw_pub.publish(path);
    robot_local_path_draw_pub.publish(path);   
}

void publishEmptyRobotLocalPathToDraw()
{
    // this is useful for 
    nav_msgs::Path path; // empty path 
    robot_local_path_draw_pub.publish(path);   
}

void setDefinitiveFailure()
{
    ROS_WARN_STREAM("setDefinitiveFailure() - !!! definitive path planner failure!!! *******************************************************************"); 
            
    // stop path planner 
    p_planner_manager->setNoGoal();
    
    resetGlobalPath();
    
    // communicate definitive failure
    trajectory_control_msgs::PlanningStatus msg_plan_status;
    msg_plan_status.success = false;
    msg_plan_status.status  = trajectory_control_msgs::PlanningStatus::kFailure;
    msg_plan_status.path_cost = -1; // invalid
    path_plan_stat_pub.publish(msg_plan_status);
    
    publishEmptyRobotPathToDraw();
    
    std::string message = "Planning Failure: select another goal";
    if(p_marker_controller) p_marker_controller->setMarkerColor(Colors::Red(), message);
}

bool isSolutionFoundOnce()
{
    return global_path.isSet() || p_planner_manager->isSolutionFoundOnce(); 
}

void publishPath(nav_msgs::Path& path, bool is_global, bool is_close)
{
    ros::Duration elapsed_time = ros::Time::now() - time_last_path_msg;
    
    double timeIntervalToCheck = 0; 
    /// < if we are close to the goal wait more before publishing a new path 
    if(is_close) 
    {
        timeIntervalToCheck = kMinimumWaitingTimeForPublishingANewPath;
    }
    else
    {
        timeIntervalToCheck = kMinimumWaitingTimeForPublishingANewPathWhenClose;
    }
    
    if (elapsed_time.toSec() < timeIntervalToCheck)
    {
        ROS_WARN("path publication dropped");
        return; /// < EXIT POINT 
    }

    time_last_path_msg = ros::Time::now();
    if (is_global)
    {
        robot_global_path_pub.publish(path);
        
        robot_global_path_draw_pub.publish(path);
        robot_local_path_draw_pub.publish(path);
        
        publishEmptyRobotLocalPathToDraw();
    }
    else
    {
        robot_local_path_pub.publish(path);
        
        robot_local_path_draw_pub.publish(path);
    }
}

void resetGlobalPath()
{
    boost::recursive_mutex::scoped_lock locker(global_path.mutex_);
    
    global_path.reset(); 
}

void doPathPlanning()
{
    std::cout << "doPathPlanning() " << std::endl;
        
    boost::recursive_mutex::scoped_lock planner_manager_locker(planner_manager_mutex);
    
    if (p_planner_manager->isReady())
    {
        if(p_marker_controller) p_marker_controller->setMarkerColor(Colors::LightYellow(), "Planning");
    }

    PathPlannerManager::PlannerStatus planner_status = p_planner_manager->doPathPlanning();

    trajectory_control_msgs::PlanningStatus msg_plan_status;
    msg_plan_status.path_cost = -1; /// <  smaller than 0 means invalid 
    
    switch (planner_status)
    {
    case PathPlannerManager::kNotReady:
        if(p_marker_controller) p_marker_controller->setMarkerColor(Colors::LightYellow(), "Planner not ready");
        break;

    case PathPlannerManager::kFailure:
    case PathPlannerManager::kInputFailure:
    case PathPlannerManager::kTransformFailure:
        {
        std::string message; 
        if(planner_status == PathPlannerManager::kFailure) message = "Planning Failure: select another goal";
        if(planner_status == PathPlannerManager::kInputFailure) message = "Input Failure: cannot find a close starting node";
        if(planner_status == PathPlannerManager::kTransformFailure) message = "Transform Failure: cannot receive a valid transform!";
        if(p_marker_controller) p_marker_controller->setMarkerColor(Colors::Red(), message);
        }
        
        if(isSolutionFoundOnce())
        {
            // possible retry till a max num of attempts 
            if(remaining_planning_attempts_after_unexpected_failure == 0)
            {
                setDefinitiveFailure(); 
            }
            remaining_planning_attempts_after_unexpected_failure--; 
        }
        else
        {
            setDefinitiveFailure(); 
        }
        
        // stop trajectory control in any case
        ROS_WARN("PathPlannerManager - planning/input/transform failure - stopping the trajectory control");
        {
        std_msgs::Bool msg_abort;
        msg_abort.data = true;
        trajectory_control_abort_pub.publish(msg_abort);
        }
        
        // send path planner status
        {
        msg_plan_status.success = false;
        msg_plan_status.status  = trajectory_control_msgs::PlanningStatus::kFailure;
        path_plan_stat_pub.publish(msg_plan_status);
        }
        break;


    case PathPlannerManager::kSuccess:
        if(p_marker_controller) p_marker_controller->setMarkerColor(Colors::Green(), "Success");
        {
        nav_msgs::Path& path = p_planner_manager->getPath();
        publishPath(path, b_global_goal, p_planner_manager->isCloseToGoal());
        }
        
        // send path planner status
        {      
        msg_plan_status.success   = true;
        msg_plan_status.status    = trajectory_control_msgs::PlanningStatus::kSuccess;
        msg_plan_status.path_cost = p_planner_manager->getPathCost() + global_path.remaning_cost_path_;
        path_plan_stat_pub.publish(msg_plan_status);
        boost::recursive_mutex::scoped_lock time_locker(last_pp_success_timemutex_);
        time_last_path_planning_success = ros::Time::now();
        }
        
        // reset replanning attempts after unexpected failure (environment change)
        remaining_planning_attempts_after_unexpected_failure = kMaxNumReplanningAttemptsAfterUnexpectedFailure; 
        
        break;


    case PathPlannerManager::kArrived:

        if(p_marker_controller) p_marker_controller->setMarkerColor(Colors::LightGrey(), "Arrived...select another goal");
        p_planner_manager->setNoGoal();

        {
        boost::recursive_mutex::scoped_lock locker(global_path.mutex_);
        if(global_path.isSet())
        {
//            if(global_path.isLastWaypoint() && global_path.b_have_final_rotation_)
//            {
//                    /// < send rotation 
//            }
                            
            if(global_path.isLastWaypoint() && !global_path.isPathCyclic()) // are we managing the last waypoint? 
            {
                /// < reset global path 
                resetGlobalPath();
            }
            else
            { 
                 /// < go to the next waypoint 
                if(global_path.isLastWaypoint() && global_path.isPathCyclic())
                {
                    global_path.current_local_goal_idx_ = 0; 
                }
                global_path.current_waypoint_idx_ = (global_path.current_waypoint_idx_ + 1) % global_path.num_waypoints_ ;
                time_last_path_msg = ros::TIME_MIN;                
            }
        }
        }
        
        // send path planner status
        {
        msg_plan_status.success = true;
        msg_plan_status.status  = trajectory_control_msgs::PlanningStatus::kArrived;
        path_plan_stat_pub.publish(msg_plan_status);
        boost::recursive_mutex::scoped_lock time_locker(last_pp_success_timemutex_);
        time_last_path_planning_success = ros::Time::now();
        }
        break;

    case PathPlannerManager::kAborted:
        ROS_INFO("PathPlannerManager abort");
        publishEmptyRobotPathToDraw();
        break;

    default:
        ROS_ERROR("unknown PathPlannerManager status");
    }

}

void traversabilityCloudCallback(const sensor_msgs::PointCloud2& traversability_msg)
{
    p_planner_manager->traversabilityCloudCallback(traversability_msg);
    
    rssManagement(traversability_msg);

    localGoalCallback();

    doPathPlanning();
}

void wallCloudCallback(const sensor_msgs::PointCloud2& wall_msg)
{
    p_planner_manager->wallCloudCallback(wall_msg);
}

void utilityCloudCallback(const sensor_msgs::PointCloud2& utility_msg)
{
    ROS_INFO("Got Utility PC");
    p_planner_manager->utility2DCloudCallback(utility_msg);
}

void goalSelectionCallback(geometry_msgs::PoseStamped goal_msg)
{
    std::cout << "goalSelectionCallback() " << std::endl;
    ROS_INFO("got new goal");
    
    boost::recursive_mutex::scoped_lock planner_manager_locker(planner_manager_mutex);
    
    // abort previous goal 
    std_msgs::Bool abort_msg; 
    abort_msg.data = true; 
    goalAbortCallback(abort_msg); 
    
    // clean old paths 
    publishEmptyRobotPathToDraw();
    
    // now set the new goal
    boost::recursive_mutex::scoped_lock locker(global_path.mutex_);
    
    /// < a single waypoint is considered as a global waypoint
    b_global_goal = true;
    p_planner_manager->goalSelectionCallback(goal_msg); 
    
    // reset replanning attempts after unexpected failure (environment change)
    remaining_planning_attempts_after_unexpected_failure = kMaxNumReplanningAttemptsAfterUnexpectedFailure;
    
    PathPlannerManager::PlannerStatus planning_status = PathPlannerManager::kNone;
  
    for(int attempt = 0; attempt < kMaxNumInitialPlanningAttempts; attempt++)
    {
        /// < compute a first solution after having received the goal 
        doPathPlanning();
    
        planning_status = p_planner_manager->getPlanningStatus(); 
        std::cout << "goalSelectionCallback() - attempt: "<<attempt << ", status: " << (int)planning_status << std::endl; 
        if(planning_status == PathPlannerManager::kSuccess) break; 
        
        {
        trajectory_control_msgs::PlanningStatus msg_plan_status;
        msg_plan_status.success   = false;
        msg_plan_status.status    = trajectory_control_msgs::PlanningStatus::kFailure;
        msg_plan_status.path_cost = -1;
        path_plan_stat_pub.publish(msg_plan_status);
        }
        
        ros::Duration(kSleepTimeAfterInitialAttemptSec).sleep();
    }
    
    /// < generate a global path from the first solution 
    switch(planning_status)
    {
        case PathPlannerManager::kSuccess:
        {
            nav_msgs::Path& path = p_planner_manager->getPath();
            double path_length   = p_planner_manager->getPathCost();
            size_t path_size     = path.poses.size();

            {
                /// < send first success 
                trajectory_control_msgs::PlanningStatus msg_plan_status;
                msg_plan_status.success = true;
                msg_plan_status.status  = trajectory_control_msgs::PlanningStatus::kFirstSuccess;
                msg_plan_status.path_cost = path_length;
                path_plan_stat_pub.publish(msg_plan_status);
                boost::recursive_mutex::scoped_lock time_locker(last_pp_success_timemutex_);
                time_last_path_planning_success = ros::Time::now();
            }

            if(path_size > 0)
            {            
                trajectory_control_msgs::PlanningGlobalPath global_path_msg;

                global_path_msg.header = path.header;
                global_path_msg.name   = "task"; 
                global_path_msg.task_id = 0; 
                global_path_msg.waypoints.push_back(path.poses[0].pose.position); 
                global_path_msg.waypoints.push_back(path.poses[path_size-1].pose.position); 
                global_path_msg.type = kPathNormal; 
                global_path_msg.path = path;

                globalPathCallback(global_path_msg);
            }
            else
            {
                ROS_ERROR_STREAM("goalSelectionCallback() success with an empty path"); 
            }
        }
        break;
    
        case PathPlannerManager::kArrived:
        {
            /// < send success 
            trajectory_control_msgs::PlanningStatus msg_plan_status;
            msg_plan_status.success = true;
            msg_plan_status.status  = trajectory_control_msgs::PlanningStatus::kArrived;
            msg_plan_status.path_cost = 0;
            path_plan_stat_pub.publish(msg_plan_status);
            boost::recursive_mutex::scoped_lock time_locker(last_pp_success_timemutex_);
            time_last_path_planning_success = ros::Time::now();
        }
        break;

        default:
            setDefinitiveFailure();
    
    }
}

void goalAbortCallback(std_msgs::Bool msg)
{
    std::cout << "goalAbortCallback() - start " << std::endl;
    
    //boost::recursive_mutex::scoped_lock planner_manager_locker(planner_manager_mutex);
        
    p_planner_manager->goalAbortCallback(msg);
    if(p_marker_controller) p_marker_controller->setMarkerColor(Colors::Red(), "Abort");
    
    resetGlobalPath(); // needed since all the tasks are executed as a global path 
    
    /// < N.B..: the same topic arrive to the trajectory control and stops it
    std::cout << "goalAbortCallback() - end " << std::endl;
}

void feedbackCallback(const trajectory_control_msgs::PlanningFeedback& feedback_msg)
{
    // if the message has been published by the tool node, then
    if (!feedback_msg.node.compare("tool"))
    {
        trajectory_control_msgs::PlanningFeedback feedback_msg;
        feedback_msg.header.stamp = ros::Time::now();
        feedback_msg.node = "planner_manager";
        feedback_msg.task = "stop";

        std::cout << "feedbackCallback() - aborting " << std::endl;

        resetGlobalPath();

        p_planner_manager->setAbort(true);

        /// < queue_task_feedback_pub.publish(feedback_msg);
    }
}

bool pathPlanningServiceCallback(trajectory_control_msgs::PathPlanning::Request  &req, trajectory_control_msgs::PathPlanning::Response &res)
{
    std::cout << "pathPlanningServiceCallback()" << std::endl;
    
    boost::recursive_mutex::scoped_lock planner_manager_locker(planner_manager_mutex);
    
    geometry_msgs::PoseStamped start = req.start;
    geometry_msgs::PoseStamped goal  = req.goal;
    
    res.success = false; 
    
    PathPlannerManager::PlannerStatus planner_status = p_planner_manager->pathPlanningServiceCallback(start, goal, res.path, res.path_cost);
    if (planner_status == PathPlannerManager::kSuccess) 
    {
        res.success = true; 
    }
    return true; 
}

bool isRobotFarFromFirstWp()
{
    bool res = true; 
    
    /// < check if the current goal is too far
    Transform transform("/map", robot_frame_id);
    tf::StampedTransform robot_pose;
    bool is_ok_transform = false;
    try
    {
        robot_pose = transform.get();
        is_ok_transform = transform.isOk();

    }
    catch (TransformException e)
    {
        ROS_WARN("%s", e.what());
    }
    
    if(is_ok_transform)
    {
        geometry_msgs::Point robot_point;
        robot_point.x = robot_pose.getOrigin().getX();
        robot_point.y = robot_pose.getOrigin().getY();
        robot_point.z = robot_pose.getOrigin().getZ();

        geometry_msgs::Point first_wp = global_path.path_.waypoints[0];
        
        res = (PathPlanner::dist(first_wp,robot_point) > kMaxDistanceFromFirstWaypoint);
    }
    
    return res; 
}

void localGoalCallback()
{
    boost::recursive_mutex::scoped_lock locker(global_path.mutex_);

    if (global_path.isSet()) 
    {
        std::cout << "localGoalCallback() - waypoint " << global_path.current_waypoint_idx_ + 1 << "/"<< global_path.num_waypoints_ << std::endl;
        
        if(global_path.isLastWaypoint() && !global_path.isPathCyclic()) 
        {
            // we are managing the last waypoint, which is considered global 
            b_global_goal = true;
        }
        else
        {
            // the current intermediate waypoint is considered local 
            b_global_goal = false;
        }
        
        pcl::PointXYZI next_goal_point;

        /// < get the last reached pose of the path and set it as goal 
        geometry_msgs::Point next_point = global_path.path_.waypoints[global_path.current_waypoint_idx_];
        next_goal_point.x = next_point.x;
        next_goal_point.y = next_point.y;
        next_goal_point.z = next_point.z;
        global_path.remaning_cost_path_ = 0; // reset remaining path cost 
        
        /// < check if the current goal is too far   (FIXME: this distance should be computed on the path)
        Transform transform("/map", robot_frame_id);
        tf::StampedTransform robot_pose;
        bool is_ok_transform = false; 
        try
        {
            robot_pose = transform.get();
            is_ok_transform = transform.isOk(); 
            
        }
        catch(TransformException e )
        {
            ROS_WARN("%s",e.what());
        }
        geometry_msgs::Point robot_point; 
        robot_point.x = robot_pose.getOrigin().getX(); 
        robot_point.y = robot_pose.getOrigin().getY();
        robot_point.z = robot_pose.getOrigin().getZ();
        

        /// < if the current local goal is too far select a point on the trajectory as a new goal 
        if(is_ok_transform && (PathPlanner::dist(next_point,robot_point) > kMaxDistanceToNextWaypoint) )
        {
            b_global_goal = false;
            for (/*idx_local_goal = 0*/; global_path.current_local_goal_idx_ < global_path.path_.path.poses.size(); global_path.current_local_goal_idx_++)
            {
                /// < (FIXME: this distance should be computed on the path)
                if( PathPlanner::dist(global_path.path_.path.poses[global_path.current_local_goal_idx_].pose.position,robot_point) > kMaxDistanceToNextWaypoint )
                {
                    break;
                }
            }
            
            next_goal_point.x = global_path.path_.path.poses[global_path.current_local_goal_idx_].pose.position.x;
            next_goal_point.y = global_path.path_.path.poses[global_path.current_local_goal_idx_].pose.position.y;
            next_goal_point.z = global_path.path_.path.poses[global_path.current_local_goal_idx_].pose.position.z;
            global_path.remaning_cost_path_ = global_path.computePathLength(global_path.current_local_goal_idx_); 
        }

        std::cout << "localGoalCallback() - setting goal" << std::endl;

        p_planner_manager->setGoal(next_goal_point);
    }
}

void globalPathCallback(const trajectory_control_msgs::PlanningGlobalPath& global_path_msg)
{
    boost::recursive_mutex::scoped_lock locker(global_path.mutex_);
            
    global_path.path_ = global_path_msg;

    global_path.current_waypoint_idx_ = 1; // start from the second (the first is the starting position of the robot) 
    global_path.num_waypoints_ = global_path.path_.waypoints.size();
    
    std::cout << "globalPathCallback() - num waypoints: " << global_path.num_waypoints_ << std::endl;
    
    // reset replanning attempts after unexpected failure (environment change)
    remaining_planning_attempts_after_unexpected_failure = kMaxNumReplanningAttemptsAfterUnexpectedFailure;
    
    if( isRobotFarFromFirstWp() )
    {
        // stop trajectory control: the local planner will recompute the path
        ROS_WARN("PathPlannerManager - too far from first WP - stopping the trajectory control");
        std_msgs::Bool msg_abort;
        msg_abort.data = true;
        trajectory_control_abort_pub.publish(msg_abort);
    }
}


void laserProximityCallback(const std_msgs::Bool msg)
{
    if(!b_enable_laser_proximity_callback) return;     /// < EXIT POINT (for disabling the callback)
    
    std::cout << "laserProximityCallback() ******************************************" << std::endl;
    if(msg.data == true)
    {
        /// < if we have proximity and it has passed too much since the last path planning, stop the robot in order to force it to replan
        
        boost::recursive_mutex::scoped_lock time_locker(last_pp_success_timemutex_);
        
        if(time_last_path_planning_success == ros::TIME_MAX) return; 
        
        ros::Time time_now = ros::Time::now();
        double elapsed_time_since_last_pp_success = ( time_now - time_last_path_planning_success).toSec();
        double elapsed_time_since_last_abort      = ( time_now - time_last_proximity_abort).toSec();
        if(
                ( elapsed_time_since_last_pp_success > kPathPlannerTimeoutForAbortingOnLaserProximity ) && 
                ( elapsed_time_since_last_abort > kPathPlannerMinTimeForReabortTrajectoryOnLaserProximity)
           )
        {
            
            /// < abort the path planner 
            p_planner_manager->goalAbortCallback(msg);
            //if(p_marker_controller) p_marker_controller->setMarkerColor(Colors::Red(), "Abort");

            //resetGlobalPath(); // needed since all the tasks are executed as a global path 

            /// < N.B..: the same topic arrive to the trajectory control and stops it
            ROS_WARN_STREAM("laserProximityCallback() - stopping trajectory ");
            
            /// < reset path planning last time success (an abort will be reconsidered after a new success)
            time_last_path_planning_success = ros::TIME_MAX;
            

            time_last_proximity_abort = time_now;
            
            {
                std_msgs::Bool msg_abort;
                msg_abort.data = true;
                trajectory_control_abort_pub.publish(msg_abort);
            }
            
        }
    }
}

void rssManagement(const sensor_msgs::PointCloud2& traversability_msg)
{
    if(b_use_rss)
    {
        bool b_request_max_point =  false;
        {
        boost::recursive_mutex::scoped_lock rss_locker(rss_mutex);
        b_request_max_point = b_rss_take_action;
        }
       
        
        /// < request RSSI information 
        wireless_network_msgs::RequestRSS_PC srv_pc_request;
        
        srv_pc_request.request.max_point_requested = b_request_max_point; 
        
        srv_pc_request.request.surveypoints = traversability_msg;
        bool b_service_exists = ros::service::exists(rss_service_name,true);
        if( b_service_exists && p_srv_client_rss->call(srv_pc_request) )
        {
            p_planner_manager->utility2DCloudCallback(srv_pc_request.response.rssi);
            ROS_INFO("rssManagement() - Got RSS point cloud");
            
            if(b_request_max_point)
            {                
                // abort previous goal 
                std_msgs::Bool abort_msg; 
                abort_msg.data = true; 
                goalAbortCallback(abort_msg); 
                
                geometry_msgs::PoseStamped rss_goal;
                rss_goal.pose.position.x = srv_pc_request.response.max_point.x; 
                rss_goal.pose.position.y = srv_pc_request.response.max_point.y;
                rss_goal.pose.position.z = srv_pc_request.response.max_point.z;
                
                rssPublishGoalMarker(srv_pc_request.response.max_point.x, srv_pc_request.response.max_point.y, srv_pc_request.response.max_point.z);
                                
                ROS_INFO_STREAM("rssManagement() - setting new goal at " << rss_goal);
                
                goalSelectionCallback(rss_goal);           
            }
            
            // reset take action flag 
            {
            boost::recursive_mutex::scoped_lock rss_locker(rss_mutex);
            if(b_rss_take_action) b_rss_take_action = false; 
            }    
            
        }
        else
        {
            p_planner_manager->setNo2DUtility();
            ROS_ERROR("Failed to call wifi point cloud service");
        }
       
    }
}

void rssEnableCallback(const std_msgs::Bool& msg)
{    
    b_use_rss = (bool) msg.data;
    
    ROS_INFO_STREAM("rssEnableCallback(): rss enable " << b_use_rss);    
}

void rssSignalCallback(const networkanalysis_msgs::wirelesslink& msg)
{   
    // in case we have been not receiving anything for a while force a reset to critical RSS time
    ros::Duration elapsed_time_from_last_msg = ros::Time::now() - time_last_rssi_msg;
    if(fabs(elapsed_time_from_last_msg.toSec()) > kTimeFromLastMsgReset)
    {
        b_iInit_critical_rssi_time = true; 
        ROS_INFO_STREAM("rssSignalCallback(): reset "); 
    }
    time_last_rssi_msg = ros::Time::now();
    
    
    if(b_iInit_critical_rssi_time)
    {
        b_iInit_critical_rssi_time   = false; 
        //reset the critical RSS time 
        time_last_critical_rssi = ros::Time::now();
    }
            
    int16_t rssi = msg.rssi; 
    //ROS_INFO_STREAM("rssSignalCallback(): rss signal " << rssi);  
    
    // if we are below the allowed threshold 
    if(rssi < min_rssi_signal)
    {
        ROS_WARN_STREAM("rssSignalCallback(): critical RSS : " << rssi);
    }
    else
    {
        time_last_critical_rssi = ros::Time::now();
    }
    
    ros::Duration elapsed_critical_rssi_time = ros::Time::now() - time_last_critical_rssi;    
    
    if(elapsed_critical_rssi_time.toSec() > kMaxCriticalRssiTime)
    {
        // trigger action 
        {
        boost::recursive_mutex::scoped_lock rss_locker(rss_mutex);
        b_rss_take_action = true; 
        }            
        ROS_WARN_STREAM("rssSignalCallback(): taking RSS action ");  
        
        std::stringstream ss;
        ss << "RSS weak: " << rssi << " => taking action";
        
        std_msgs::String msg;
        msg.data = ss.str();
        rviz_message_string_pub.publish(msg);
        
        // reset RSS critical time
        time_last_critical_rssi = ros::Time::now();
    }
}

void rssMinSignalValueCallback(const std_msgs::Int32& msg)
{    
    min_rssi_signal = (int16_t) msg.data;
    
    ROS_INFO_STREAM("rssMinSignalValueCallback(): rss min value " << min_rssi_signal);   
}

void rssPublishGoalMarker(double x, double y, double z)
{
    
    ROS_INFO_STREAM("rssPublishGoalMarker()");  
    
    rss_markerArr.markers.clear();
            
    visualization_msgs::Marker marker;
    marker.header.frame_id = "/map";
    marker.header.stamp = ros::Time::now();
    marker.type = visualization_msgs::Marker::SPHERE;
    marker.action = visualization_msgs::Marker::ADD;
    marker.scale.x = marker.scale.y = marker.scale.z = 0.5;
    marker.color.a = 1.0;
    marker.color.r = 1.0;
    marker.color.g = 1.0;
    marker.color.b = 0.0;
    marker.pose.position.x = x;
    marker.pose.position.y = y;
    marker.pose.position.z = z;
    marker.lifetime = ros::Duration(20);
    marker.id = 1;
    rss_markerArr.markers.push_back(marker);
    
    marker_array_pub.publish(rss_markerArr);
}

template <class Point>
bool extractConnectedComponent(const Point& seed, typename pcl::PointCloud<Point>::Ptr cloud_in, typename pcl::PointCloud<Point>::Ptr cloud_out)
{

    // Creating the KdTree object for the search method of the extraction
    typename pcl::search::KdTree<Point>::Ptr tree(new pcl::search::KdTree<pcl::PointXYZ>);
    tree->setInputCloud(cloud_in);

    std::vector<pcl::PointIndices> cluster_indices;
    pcl::EuclideanClusterExtraction<Point> ec;
    ec.setClusterTolerance(0.1); // 10 cm
    ec.setMinClusterSize(100);
    ec.setMaxClusterSize(cloud_in->size());
    ec.setSearchMethod(tree);
    ec.setInputCloud(cloud_in);
    ec.extract(cluster_indices);
    
    /// find the closest point index 
    size_t closest_point_index = 0;
    
    std::vector<int> pointIdxNKNSearch(1);
    std::vector<float> pointNKNSquaredDistance(1);
    int found = tree.nearestKSearch(seed, 1, pointIdxNKNSearch, pointNKNSquaredDistance);
    if(found > 0)
    {
        closest_point_index = pointIdxNKNSearch[0];
    }
    else
    {
        return false;  /// < EXIT POINT 
    }
    

    for (std::vector<pcl::PointIndices>::const_iterator it = cluster_indices.begin(); it != cluster_indices.end(); ++it)
    {
        typename pcl::PointCloud<Point>::Ptr cloud_cluster(new pcl::PointCloud<Point>);
        bool b_copy_cluster = false; 
        
        std::vector<int>::const_iterator pit;
        for (pit = it->indices.begin(); pit != it->indices.end(); ++pit)
        {
            if(closest_point_index == *pit) 
            {
                b_copy_cluster = true; 
                break;
            }
        }

        if(b_copy_cluster)
        {
            for(pit = it->indices.begin(); pit != it->indices.end(); ++pit)
            {
                cloud_cluster->points.push_back(cloud_in->points[*pit]); 
            }                
            cloud_cluster->width  = cloud_cluster->points.size();
            cloud_cluster->height = 1;
            cloud_cluster->is_dense = true;

            cloud_out = cloud_cluster;
            break;  /// < STOP THE LOOP
        }
    }
    
    return true;
}

void mySigintHandler(int signum)
{
    std::cout << "mySigintHandler()" << std::endl;
    //boost::recursive_mutex::scoped_lock destroy_locker(destroy_mutex); 

    ros::shutdown();
    exit(signum);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "path_planner_manager_node");

    //override default sigint handler 
    signal(SIGINT, mySigintHandler);

    ros::NodeHandle n("~");

    /// < get parameters
    robot_frame_id = getParam<std::string>(n, "robot_frame_name", "/base_link");
    std::string int_marker_server_name = getParam<std::string>(n, "int_marker_server_name", "marker_controller");
    std::string int_marker_name = getParam<std::string>(n, "int_marker_name", "Goal");

    bool b_use_marker_controller = getParam<bool>(n, "use_marker_controller", true);
    
    b_enable_laser_proximity_callback = getParam<bool>(n, "enable_laser_proximity_callback", false);

    queue_task_feedback_topic = getParam<std::string>(n, "queue_task_feedback_topic", "/planner/tasks/feedback");
    queue_task_path_topic     = getParam<std::string>(n, "queue_task_path_topic", "/planner/tasks/path");

    int cost_function_type = getParam<int>(n, "cost_function_type", (int)BaseCostFunction::kOriginalCost);
    double lambda_trav                  = getParam<double>(n, "lambda_trav", 1.);
    double lambda_utility_2d            = getParam<double>(n, "lambda_aux_utility", 1.);
    //std::string utility_2d_service_name = getParam<std::string>(n, "utility_2d_service_name", "");
    rss_service_name = getParam<std::string>(n, "rss_service_name", "/Request_RSS_PointCloud"); /// < rss map is used as an utility function 
    b_use_rss = getParam<bool>(n, "use_rss", false);
        
    std::string path_planning_service_name = getParam<std::string>(n, "path_planning_service_name", "/path_planning_service"); 
        
    std::cout << "got parameters" << std::endl;

    /// ========================================================================
    
    /// < get a first robot pose in order to initialize the marker on robot starting position
    Transform transform("/map", robot_frame_id); 
    tf::StampedTransform robot_pose;
    try
    {
	robot_pose = transform.get();
    }
    catch(TransformException e )
    {
	ROS_WARN("%s",e.what());
    }

    p_planner_manager.reset(new PathPlannerManager);
    p_planner_manager->setFramesRobot("/map", robot_frame_id);
    
    p_planner_manager->setCostFunctionType(cost_function_type,lambda_trav,lambda_utility_2d);
    
    /// < Publishers 
    robot_global_path_pub = n.advertise<nav_msgs::Path>("/robot_path", 1);   /// < sent to trajectory control!
    robot_local_path_pub  = n.advertise<nav_msgs::Path>("/robot_local_path", 1); /// < sent to trajectory control!
    
    robot_global_path_draw_pub = n.advertise<nav_msgs::Path>("/robot_path_draw", 1); /// < sent to rviz!
    robot_local_path_draw_pub  = n.advertise<nav_msgs::Path>("/robot_local_path_draw", 1); /// < sent to rviz!
    
    //path_plan_stat_pub = n.advertise<std_msgs::Bool>("/path_planning_status", 1);
    path_plan_stat_pub = n.advertise<trajectory_control_msgs::PlanningStatus>("/path_planning_status", 1);
    
    goal_abort_pub = n.advertise<std_msgs::Bool>("/goal_abort_topic", 1);
    trajectory_control_abort_pub = n.advertise<std_msgs::Bool>("/trajectory_control_abort_topic", 1);
    
    // feedback between nodes: "tool", "planner" and "control"
    queue_task_feedback_pub = n.advertise<trajectory_control_msgs::PlanningFeedback>(queue_task_feedback_topic, 1);
    
    //rss_point_cloud_pub = n.advertise<sensor_msgs::PointCloud2>(queue_task_feedback_topic, 1);
    
    rviz_message_string_pub = n.advertise<std_msgs::String>("/rviz_message_string",1);
    
    marker_array_pub = n.advertise<visualization_msgs::MarkerArray>("/rss_goal_visualization", 1);
    
    
    /// < Subscribers
    ros::Subscriber sub_trav = n.subscribe("/trav/traversability", 1, traversabilityCloudCallback);
    ros::Subscriber sub_wall = n.subscribe("/clustered_pcl/wall", 1, wallCloudCallback);

    //ros::Subscriber sub_goal = n.subscribe("/goal_topic", 1, goalSelectionCallback);
    ros::Subscriber sub_goal = n.subscribe("/goal_topic", 1, goalSelectionCallback);
    ros::Subscriber sub_goal_abort = n.subscribe("/goal_abort_topic", 1, goalAbortCallback);
    ros::Subscriber sub_global_path = n.subscribe("/planner/tasks/global_path", 1, globalPathCallback);

    // feedback between nodes: "tool", "planner" and "control"
    queue_task_feedback_sub = n.subscribe(queue_task_feedback_topic, 10, feedbackCallback);

    ros::Subscriber laser_proximity_sub = n.subscribe("/laser_proximity_topic", 1, laserProximityCallback);
    
    ros::Subscriber rss_enable_sub = n.subscribe("/rss_enable", 1, rssEnableCallback);
    
    ros::Subscriber rss_signal_sub = n.subscribe("/networkanalysis/wirelessquality", 1, rssSignalCallback);
    
    ros::Subscriber rss_min_signal_value_sub = n.subscribe("/rss_min_value", 1, rssMinSignalValueCallback);
    
    
    /// < Services 
    ros::ServiceServer service = n.advertiseService(path_planning_service_name, pathPlanningServiceCallback);

    // add service client for requesting wifi RSS point cloud 
    p_srv_client_rss.reset(new ros::ServiceClient); 
    *p_srv_client_rss = n.serviceClient<wireless_network_msgs::RequestRSS_PC>(rss_service_name);
    
    
    /// < Start
    
    if (b_use_marker_controller)
    {
        p_marker_controller.reset(new MarkerController(robot_pose.getOrigin(), "/goal_topic", "/goal_abort_topic", int_marker_server_name, int_marker_name));
    } 
    
    /// < just for for testing
    //ros::Subscriber sub_rssi = n.subscribe("/RSS_PointCloud2", 1, rssiCloudCallback);

    ros::MultiThreadedSpinner spinner(4); // Use 4 threads
    spinner.spin(); // spin() will not return until the node has been shutdown

    //ros::spin();

    //if(p_marker_controller) p_marker_controller->reset();

    return 0;
}
