
#ifndef WAYPOINTS_TOOL_NIMBRO_H
#define WAYPOINTS_TOOL_NIMBRO_H

#define DEFINING_ANOTHER_PLUGIN 1  /// < this will hide the definition of the basic WaypointTool plugin

#include "WaypointsTool.h"


namespace path_planner_rviz_wp_plugin
{

#define NAME_SIMULATOR ""
#define NAME_UGV ""


/// < N.B: for Nimbro the topics are required not to start with "/"

#define NAME_BASE_LOCAL_MAP_TOPIC "volumetric_mapping/octomap_pcl"
#define NAME_BASE_TASK_FEEDBACK_TOPIC "planner/tasks/feedback"
#define NAME_BASE_TASK_APPEND_TOPIC "planner/tasks/append"
#define NAME_BASE_TASK_REMOVE_TOPIC "planner/tasks/remove"
#define NAME_BASE_SERVER_NAME "/planner/waypoints/server"
#define NAME_BASE_BASE_LINK "/base_link"


/// < string concatenation 
#define NAME_LOCAL_MAP_TOPIC      NAME_SIMULATOR NAME_UGV  NAME_BASE_LOCAL_MAP_TOPIC 
#define NAME_TASK_FEEDBACK_TOPIC  NAME_SIMULATOR NAME_UGV  NAME_BASE_TASK_FEEDBACK_TOPIC
#define NAME_TASK_APPEND_TOPIC    NAME_SIMULATOR NAME_UGV  NAME_BASE_TASK_APPEND_TOPIC
#define NAME_TASK_REMOVE_TOPIC    NAME_SIMULATOR NAME_UGV  NAME_BASE_TASK_REMOVE_TOPIC
#define NAME_SERVER_NAME          NAME_SIMULATOR NAME_UGV  NAME_BASE_SERVER_NAME
#define NAME_BASE_LINK            NAME_UGV  NAME_BASE_BASE_LINK


class WaypointsToolNimbro: public WaypointsTool
{
    Q_OBJECT
public:
    WaypointsToolNimbro(
    const std::string& pcl_input_topic_name = NAME_LOCAL_MAP_TOPIC,
    const std::string& planner_task_feedback_topic_name = NAME_TASK_FEEDBACK_TOPIC,
    const std::string& planner_task_append_topic_name = NAME_TASK_APPEND_TOPIC,
    const std::string& planner_task_remove_topic_name = NAME_TASK_REMOVE_TOPIC,
    const std::string& planner_waypoints_server_name = NAME_SERVER_NAME,
    const std::string& patrolling_task_append_topic_name = NAME_PATROLLING_TASK_APPEND_TOPIC,
    const std::string& patrolling_task_pause_topic_name = NAME_PATROLLING_TASK_PAUSE_TOPIC,
    const std::string& robot_frame_name = NAME_BASE_LINK,
    const std::string& world_frame_name = "/map", 
    const std::string& robot_name = NAME_UGV
            
    );
    
};

/// < The lines below are OK in C++11 but the Qt MOC is not able to interpret them 

//#define NAME_LOCAL_MAP_TOPIC(UGV_TOPIC_PREFIX)     UGV_TOPIC_PREFIX  NAME_BASE_LOCAL_MAP_TOPIC 
//#define NAME_TASK_FEEDBACK_TOPIC(UGV_TOPIC_PREFIX)     UGV_TOPIC_PREFIX NAME_BASE_TASK_FEEDBACK_TOPIC
//#define NAME_TASK_APPEND_TOPIC(UGV_TOPIC_PREFIX)     UGV_TOPIC_PREFIX  NAME_BASE_TASK_APPEND_TOPIC
//#define NAME_TASK_REMOVE_TOPIC(UGV_TOPIC_PREFIX)     UGV_TOPIC_PREFIX  NAME_BASE_TASK_REMOVE_TOPIC
//#define NAME_SERVER_NAME(UGV_TOPIC_PREFIX)     UGV_TOPIC_PREFIX  NAME_BASE_SERVER_NAME
//
//#define WP_TOOL_CLASS_DECLARATION(UGV_NAME,UGV_TOPIC_PREFIX) \                     
//    WaypointsToolSim##UGV_NAME(                                                          \
//    const std::string& pcl_input_topic_name = NAME_LOCAL_MAP_TOPIC(UGV_TOPIC_PREFIX),\
//    const std::string& planner_task_feedback_topic_name = NAME_TASK_FEEDBACK_TOPIC(UGV_TOPIC_PREFIX),\
//    const std::string& planner_task_append_topic_name = NAME_TASK_APPEND_TOPIC(UGV_TOPIC_PREFIX),    \
//    const std::string& planner_task_remove_topic_name = NAME_TASK_REMOVE_TOPIC(UGV_TOPIC_PREFIX),    \
//    const std::string& planner_waypoints_server_name = NAME_SERVER_NAME(UGV_TOPIC_PREFIX)           \
//    );
//
//class WaypointsToolNimbro: public WaypointsTool
//{
//    Q_OBJECT   
//    WP_TOOL_CLASS_DECLARATION(Ugv1,"/vrep/ugv1")
//};


} // end namespace path_planner_rviz_wp_plugin

#endif // WAYPOINTS_TOOL_SIM_UGV1_H
