# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "trajectory_control_msgs: 13 messages, 1 services")

set(MSG_I_FLAGS "-Itrajectory_control_msgs:/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg;-Itrajectory_control_msgs:/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Inifti_robot_driver_msgs:/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/kinetic/share/visualization_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(trajectory_control_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlAction.msg" NAME_WE)
add_custom_target(_trajectory_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_control_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlAction.msg" "trajectory_control_msgs/TrajectoryControlGoal:nifti_robot_driver_msgs/FlippersStateStamped:geometry_msgs/PoseStamped:trajectory_control_msgs/TrajectoryControlFeedback:std_msgs/Header:geometry_msgs/Twist:std_msgs/Int32:geometry_msgs/Quaternion:geometry_msgs/Vector3:trajectory_control_msgs/TrajectoryControlActionGoal:geometry_msgs/Point:nifti_robot_driver_msgs/Tracks:trajectory_control_msgs/TrajectoryControlActionFeedback:geometry_msgs/Pose:trajectory_control_msgs/TrajectoryControlResult:trajectory_control_msgs/TrajectoryControlActionResult:actionlib_msgs/GoalID:nav_msgs/Path:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPath.msg" NAME_WE)
add_custom_target(_trajectory_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_control_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPath.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningGlobalPath.msg" NAME_WE)
add_custom_target(_trajectory_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_control_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningGlobalPath.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:nav_msgs/Path"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg" NAME_WE)
add_custom_target(_trajectory_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_control_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg" "trajectory_control_msgs/TrajectoryControlGoal:actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Pose:nav_msgs/Path"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningFeedback.msg" NAME_WE)
add_custom_target(_trajectory_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_control_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningFeedback.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg" NAME_WE)
add_custom_target(_trajectory_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_control_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg" ""
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg" NAME_WE)
add_custom_target(_trajectory_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_control_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg" "geometry_msgs/Point:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:nifti_robot_driver_msgs/FlippersStateStamped:nifti_robot_driver_msgs/Tracks:geometry_msgs/Twist:std_msgs/Int32"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningStatus.msg" NAME_WE)
add_custom_target(_trajectory_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_control_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/srv/PathPlanning.srv" NAME_WE)
add_custom_target(_trajectory_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_control_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/srv/PathPlanning.srv" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:nav_msgs/Path"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningTask.msg" NAME_WE)
add_custom_target(_trajectory_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_control_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningTask.msg" "std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg" NAME_WE)
add_custom_target(_trajectory_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_control_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg" "geometry_msgs/Point:geometry_msgs/Twist:std_msgs/Header:std_msgs/Int32:trajectory_control_msgs/TrajectoryControlFeedback:geometry_msgs/Vector3:nifti_robot_driver_msgs/FlippersStateStamped:nifti_robot_driver_msgs/Tracks:geometry_msgs/Pose:geometry_msgs/Quaternion:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg" NAME_WE)
add_custom_target(_trajectory_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_control_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:nav_msgs/Path"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPose.msg" NAME_WE)
add_custom_target(_trajectory_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_control_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPose.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg" NAME_WE)
add_custom_target(_trajectory_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trajectory_control_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg" "trajectory_control_msgs/TrajectoryControlResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlAction.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_cpp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_cpp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningGlobalPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_cpp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_cpp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_cpp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_cpp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_cpp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_cpp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_cpp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_cpp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_cpp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_cpp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs
)

### Generating Services
_generate_srv_cpp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/srv/PathPlanning.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs
)

### Generating Module File
_generate_module_cpp(trajectory_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(trajectory_control_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(trajectory_control_msgs_generate_messages trajectory_control_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlAction.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_cpp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPath.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_cpp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningGlobalPath.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_cpp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_cpp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningFeedback.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_cpp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_cpp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_cpp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningStatus.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_cpp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/srv/PathPlanning.srv" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_cpp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningTask.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_cpp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_cpp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_cpp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPose.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_cpp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_cpp _trajectory_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trajectory_control_msgs_gencpp)
add_dependencies(trajectory_control_msgs_gencpp trajectory_control_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trajectory_control_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlAction.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_eus(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_eus(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningGlobalPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_eus(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_eus(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_eus(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_eus(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_eus(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_eus(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_eus(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_eus(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_eus(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_eus(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs
)

### Generating Services
_generate_srv_eus(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/srv/PathPlanning.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs
)

### Generating Module File
_generate_module_eus(trajectory_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(trajectory_control_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(trajectory_control_msgs_generate_messages trajectory_control_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlAction.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_eus _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPath.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_eus _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningGlobalPath.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_eus _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_eus _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningFeedback.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_eus _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_eus _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_eus _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningStatus.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_eus _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/srv/PathPlanning.srv" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_eus _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningTask.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_eus _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_eus _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_eus _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPose.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_eus _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_eus _trajectory_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trajectory_control_msgs_geneus)
add_dependencies(trajectory_control_msgs_geneus trajectory_control_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trajectory_control_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlAction.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_lisp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_lisp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningGlobalPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_lisp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_lisp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_lisp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_lisp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_lisp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_lisp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_lisp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_lisp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_lisp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_lisp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs
)

### Generating Services
_generate_srv_lisp(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/srv/PathPlanning.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs
)

### Generating Module File
_generate_module_lisp(trajectory_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(trajectory_control_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(trajectory_control_msgs_generate_messages trajectory_control_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlAction.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_lisp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPath.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_lisp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningGlobalPath.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_lisp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_lisp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningFeedback.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_lisp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_lisp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_lisp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningStatus.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_lisp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/srv/PathPlanning.srv" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_lisp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningTask.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_lisp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_lisp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_lisp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPose.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_lisp _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_lisp _trajectory_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trajectory_control_msgs_genlisp)
add_dependencies(trajectory_control_msgs_genlisp trajectory_control_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trajectory_control_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlAction.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_nodejs(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_nodejs(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningGlobalPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_nodejs(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_nodejs(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_nodejs(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_nodejs(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_nodejs(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_nodejs(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_nodejs(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_nodejs(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_nodejs(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_nodejs(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs
)

### Generating Services
_generate_srv_nodejs(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/srv/PathPlanning.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs
)

### Generating Module File
_generate_module_nodejs(trajectory_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(trajectory_control_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(trajectory_control_msgs_generate_messages trajectory_control_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlAction.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_nodejs _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPath.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_nodejs _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningGlobalPath.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_nodejs _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_nodejs _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningFeedback.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_nodejs _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_nodejs _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_nodejs _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningStatus.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_nodejs _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/srv/PathPlanning.srv" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_nodejs _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningTask.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_nodejs _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_nodejs _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_nodejs _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPose.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_nodejs _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_nodejs _trajectory_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trajectory_control_msgs_gennodejs)
add_dependencies(trajectory_control_msgs_gennodejs trajectory_control_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trajectory_control_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlAction.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_py(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_py(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningGlobalPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_py(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_py(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_py(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_py(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_py(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_py(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_py(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_py(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_py(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs
)
_generate_msg_py(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs
)

### Generating Services
_generate_srv_py(trajectory_control_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/srv/PathPlanning.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs
)

### Generating Module File
_generate_module_py(trajectory_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(trajectory_control_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(trajectory_control_msgs_generate_messages trajectory_control_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlAction.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_py _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPath.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_py _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningGlobalPath.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_py _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionGoal.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_py _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningFeedback.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_py _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlResult.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_py _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlFeedback.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_py _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningStatus.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_py _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/srv/PathPlanning.srv" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_py _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/PlanningTask.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_py _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionFeedback.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_py _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlGoal.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_py _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/trajectory_control_msgs/msg/MultiRobotPose.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_py _trajectory_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/trajectory_control_msgs/msg/TrajectoryControlActionResult.msg" NAME_WE)
add_dependencies(trajectory_control_msgs_generate_messages_py _trajectory_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trajectory_control_msgs_genpy)
add_dependencies(trajectory_control_msgs_genpy trajectory_control_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trajectory_control_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trajectory_control_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(trajectory_control_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(trajectory_control_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(trajectory_control_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET nifti_robot_driver_msgs_generate_messages_cpp)
  add_dependencies(trajectory_control_msgs_generate_messages_cpp nifti_robot_driver_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(trajectory_control_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(trajectory_control_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(trajectory_control_msgs_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trajectory_control_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(trajectory_control_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(trajectory_control_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(trajectory_control_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET nifti_robot_driver_msgs_generate_messages_eus)
  add_dependencies(trajectory_control_msgs_generate_messages_eus nifti_robot_driver_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(trajectory_control_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(trajectory_control_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(trajectory_control_msgs_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trajectory_control_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(trajectory_control_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(trajectory_control_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(trajectory_control_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET nifti_robot_driver_msgs_generate_messages_lisp)
  add_dependencies(trajectory_control_msgs_generate_messages_lisp nifti_robot_driver_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(trajectory_control_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(trajectory_control_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(trajectory_control_msgs_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trajectory_control_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(trajectory_control_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(trajectory_control_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(trajectory_control_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET nifti_robot_driver_msgs_generate_messages_nodejs)
  add_dependencies(trajectory_control_msgs_generate_messages_nodejs nifti_robot_driver_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(trajectory_control_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(trajectory_control_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(trajectory_control_msgs_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trajectory_control_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(trajectory_control_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(trajectory_control_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(trajectory_control_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET nifti_robot_driver_msgs_generate_messages_py)
  add_dependencies(trajectory_control_msgs_generate_messages_py nifti_robot_driver_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(trajectory_control_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(trajectory_control_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(trajectory_control_msgs_generate_messages_py visualization_msgs_generate_messages_py)
endif()
