
#ifndef WAYPOINTS_TOOL_SIM_UGV3_H
#define WAYPOINTS_TOOL_SIM_UGV3_H

#define DEFINING_ANOTHER_PLUGIN 1  /// < this will hide the definition of the basic WaypointTool plugin

#include "WaypointsTool.h"

namespace path_planner_rviz_wp_plugin
{

#define NAME_SIMULATOR "/vrep"
#define NAME_UGV "/ugv3"
#define NAME_PARAMETER_ROBOT_NAME "robot3_name"

#define NAME_BASE_LOCAL_MAP_TOPIC "/local_map"
#define NAME_BASE_TASK_FEEDBACK_TOPIC "/planner/tasks/feedback"
#define NAME_BASE_TASK_APPEND_TOPIC "/planner/tasks/append"
#define NAME_BASE_TASK_REMOVE_TOPIC "/planner/tasks/remove"
#define NAME_BASE_SERVER_NAME "/planner/waypoints/server"
#define NAME_BASE_BASE_LINK "/base_link"
#define NAME_WORLD_FRAME "/map"

/// < string concatenation 
#define NAME_LOCAL_MAP_TOPIC      NAME_SIMULATOR NAME_UGV  NAME_BASE_LOCAL_MAP_TOPIC 
#define NAME_TASK_FEEDBACK_TOPIC  NAME_SIMULATOR NAME_UGV  NAME_BASE_TASK_FEEDBACK_TOPIC
#define NAME_TASK_APPEND_TOPIC    NAME_SIMULATOR NAME_UGV  NAME_BASE_TASK_APPEND_TOPIC
#define NAME_TASK_REMOVE_TOPIC    NAME_SIMULATOR NAME_UGV  NAME_BASE_TASK_REMOVE_TOPIC
#define NAME_SERVER_NAME          NAME_SIMULATOR NAME_UGV  NAME_BASE_SERVER_NAME
#define NAME_BASE_LINK            NAME_UGV  NAME_BASE_BASE_LINK


class WaypointsToolSimUgv3: public WaypointsTool
{
    Q_OBJECT
public:
    WaypointsToolSimUgv3(  
    const std::string& pcl_input_topic_name = NAME_LOCAL_MAP_TOPIC,
    const std::string& planner_task_feedback_topic_name = NAME_TASK_FEEDBACK_TOPIC,
    const std::string& planner_task_append_topic_name = NAME_TASK_APPEND_TOPIC,
    const std::string& planner_task_remove_topic_name = NAME_TASK_REMOVE_TOPIC,
    const std::string& planner_waypoints_server_name  = NAME_SERVER_NAME,
    const std::string& patrolling_task_append_topic_name = NAME_PATROLLING_TASK_APPEND_TOPIC,
    const std::string& patrolling_task_send_topic_name   = NAME_PATROLLING_TASK_SEND_TOPIC,
    const std::string& patrolling_task_stop_topic_name   = NAME_PATROLLING_TASK_PAUSE_TOPIC,
    const std::string& robot_frame_name = NAME_BASE_LINK,
    const std::string& world_frame_name = NAME_WORLD_FRAME,                          
    const std::string& robot_name = NAME_UGV
    );
    
};


} // end namespace path_planner_rviz_wp_plugin

#endif // WAYPOINTS_TOOL_SIM_UGV1_H
