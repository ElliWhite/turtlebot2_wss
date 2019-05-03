# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot_trajectory_saver_msgs: 0 messages, 4 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/kinetic/share/visualization_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_trajectory_saver_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/CheckPath.srv" NAME_WE)
add_custom_target(_robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_trajectory_saver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/CheckPath.srv" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:nav_msgs/Path"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/GetRobotTrajectories.srv" NAME_WE)
add_custom_target(_robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_trajectory_saver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/GetRobotTrajectories.srv" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:nav_msgs/Path"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/SaveRobotTrajectories.srv" NAME_WE)
add_custom_target(_robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_trajectory_saver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/SaveRobotTrajectories.srv" ""
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/LoadRobotTrajectories.srv" NAME_WE)
add_custom_target(_robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_trajectory_saver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/LoadRobotTrajectories.srv" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:nav_msgs/Path"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/CheckPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_trajectory_saver_msgs
)
_generate_srv_cpp(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/GetRobotTrajectories.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_trajectory_saver_msgs
)
_generate_srv_cpp(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/SaveRobotTrajectories.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_trajectory_saver_msgs
)
_generate_srv_cpp(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/LoadRobotTrajectories.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_trajectory_saver_msgs
)

### Generating Module File
_generate_module_cpp(robot_trajectory_saver_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_trajectory_saver_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_trajectory_saver_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_trajectory_saver_msgs_generate_messages robot_trajectory_saver_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/CheckPath.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_cpp _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/GetRobotTrajectories.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_cpp _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/SaveRobotTrajectories.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_cpp _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/LoadRobotTrajectories.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_cpp _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_trajectory_saver_msgs_gencpp)
add_dependencies(robot_trajectory_saver_msgs_gencpp robot_trajectory_saver_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_trajectory_saver_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/CheckPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_trajectory_saver_msgs
)
_generate_srv_eus(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/GetRobotTrajectories.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_trajectory_saver_msgs
)
_generate_srv_eus(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/SaveRobotTrajectories.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_trajectory_saver_msgs
)
_generate_srv_eus(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/LoadRobotTrajectories.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_trajectory_saver_msgs
)

### Generating Module File
_generate_module_eus(robot_trajectory_saver_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_trajectory_saver_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robot_trajectory_saver_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robot_trajectory_saver_msgs_generate_messages robot_trajectory_saver_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/CheckPath.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_eus _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/GetRobotTrajectories.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_eus _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/SaveRobotTrajectories.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_eus _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/LoadRobotTrajectories.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_eus _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_trajectory_saver_msgs_geneus)
add_dependencies(robot_trajectory_saver_msgs_geneus robot_trajectory_saver_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_trajectory_saver_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/CheckPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_trajectory_saver_msgs
)
_generate_srv_lisp(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/GetRobotTrajectories.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_trajectory_saver_msgs
)
_generate_srv_lisp(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/SaveRobotTrajectories.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_trajectory_saver_msgs
)
_generate_srv_lisp(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/LoadRobotTrajectories.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_trajectory_saver_msgs
)

### Generating Module File
_generate_module_lisp(robot_trajectory_saver_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_trajectory_saver_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_trajectory_saver_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_trajectory_saver_msgs_generate_messages robot_trajectory_saver_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/CheckPath.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_lisp _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/GetRobotTrajectories.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_lisp _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/SaveRobotTrajectories.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_lisp _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/LoadRobotTrajectories.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_lisp _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_trajectory_saver_msgs_genlisp)
add_dependencies(robot_trajectory_saver_msgs_genlisp robot_trajectory_saver_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_trajectory_saver_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/CheckPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_trajectory_saver_msgs
)
_generate_srv_nodejs(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/GetRobotTrajectories.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_trajectory_saver_msgs
)
_generate_srv_nodejs(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/SaveRobotTrajectories.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_trajectory_saver_msgs
)
_generate_srv_nodejs(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/LoadRobotTrajectories.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_trajectory_saver_msgs
)

### Generating Module File
_generate_module_nodejs(robot_trajectory_saver_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_trajectory_saver_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robot_trajectory_saver_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robot_trajectory_saver_msgs_generate_messages robot_trajectory_saver_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/CheckPath.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_nodejs _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/GetRobotTrajectories.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_nodejs _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/SaveRobotTrajectories.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_nodejs _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/LoadRobotTrajectories.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_nodejs _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_trajectory_saver_msgs_gennodejs)
add_dependencies(robot_trajectory_saver_msgs_gennodejs robot_trajectory_saver_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_trajectory_saver_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/CheckPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_trajectory_saver_msgs
)
_generate_srv_py(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/GetRobotTrajectories.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_trajectory_saver_msgs
)
_generate_srv_py(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/SaveRobotTrajectories.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_trajectory_saver_msgs
)
_generate_srv_py(robot_trajectory_saver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/LoadRobotTrajectories.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_trajectory_saver_msgs
)

### Generating Module File
_generate_module_py(robot_trajectory_saver_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_trajectory_saver_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_trajectory_saver_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_trajectory_saver_msgs_generate_messages robot_trajectory_saver_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/CheckPath.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_py _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/GetRobotTrajectories.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_py _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/SaveRobotTrajectories.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_py _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/robot_trajectory_saver_msgs/srv/LoadRobotTrajectories.srv" NAME_WE)
add_dependencies(robot_trajectory_saver_msgs_generate_messages_py _robot_trajectory_saver_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_trajectory_saver_msgs_genpy)
add_dependencies(robot_trajectory_saver_msgs_genpy robot_trajectory_saver_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_trajectory_saver_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_trajectory_saver_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_trajectory_saver_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_trajectory_saver_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_trajectory_saver_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_trajectory_saver_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_trajectory_saver_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_trajectory_saver_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_trajectory_saver_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_trajectory_saver_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_trajectory_saver_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_trajectory_saver_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(robot_trajectory_saver_msgs_generate_messages_py visualization_msgs_generate_messages_py)
endif()
