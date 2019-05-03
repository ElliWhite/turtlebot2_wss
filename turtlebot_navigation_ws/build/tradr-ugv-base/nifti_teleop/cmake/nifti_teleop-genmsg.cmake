# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "nifti_teleop: 7 messages, 2 services")

set(MSG_I_FLAGS "-Inifti_teleop:/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg;-Iactionlib:/opt/ros/kinetic/share/actionlib/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(nifti_teleop_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg" NAME_WE)
add_custom_target(_nifti_teleop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_teleop" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg" ""
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg" NAME_WE)
add_custom_target(_nifti_teleop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_teleop" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:nifti_teleop/ScanningResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Acquire.srv" NAME_WE)
add_custom_target(_nifti_teleop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_teleop" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Acquire.srv" ""
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg" NAME_WE)
add_custom_target(_nifti_teleop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_teleop" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg" ""
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Release.srv" NAME_WE)
add_custom_target(_nifti_teleop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_teleop" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Release.srv" ""
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg" NAME_WE)
add_custom_target(_nifti_teleop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_teleop" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg" ""
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningAction.msg" NAME_WE)
add_custom_target(_nifti_teleop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_teleop" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningAction.msg" "nifti_teleop/ScanningResult:actionlib_msgs/GoalStatus:nifti_teleop/ScanningActionResult:nifti_teleop/ScanningActionGoal:nifti_teleop/ScanningGoal:nifti_teleop/ScanningActionFeedback:nifti_teleop/ScanningFeedback:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg" NAME_WE)
add_custom_target(_nifti_teleop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_teleop" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:nifti_teleop/ScanningGoal"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg" NAME_WE)
add_custom_target(_nifti_teleop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_teleop" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:nifti_teleop/ScanningFeedback:actionlib_msgs/GoalStatus"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_teleop
)
_generate_msg_cpp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_teleop
)
_generate_msg_cpp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_teleop
)
_generate_msg_cpp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_teleop
)
_generate_msg_cpp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningAction.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_teleop
)
_generate_msg_cpp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_teleop
)
_generate_msg_cpp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_teleop
)

### Generating Services
_generate_srv_cpp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Release.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_teleop
)
_generate_srv_cpp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Acquire.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_teleop
)

### Generating Module File
_generate_module_cpp(nifti_teleop
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_teleop
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(nifti_teleop_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(nifti_teleop_generate_messages nifti_teleop_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_cpp _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_cpp _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Acquire.srv" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_cpp _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_cpp _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Release.srv" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_cpp _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_cpp _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningAction.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_cpp _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_cpp _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_cpp _nifti_teleop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nifti_teleop_gencpp)
add_dependencies(nifti_teleop_gencpp nifti_teleop_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nifti_teleop_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_teleop
)
_generate_msg_eus(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_teleop
)
_generate_msg_eus(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_teleop
)
_generate_msg_eus(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_teleop
)
_generate_msg_eus(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningAction.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_teleop
)
_generate_msg_eus(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_teleop
)
_generate_msg_eus(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_teleop
)

### Generating Services
_generate_srv_eus(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Release.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_teleop
)
_generate_srv_eus(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Acquire.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_teleop
)

### Generating Module File
_generate_module_eus(nifti_teleop
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_teleop
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(nifti_teleop_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(nifti_teleop_generate_messages nifti_teleop_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_eus _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_eus _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Acquire.srv" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_eus _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_eus _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Release.srv" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_eus _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_eus _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningAction.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_eus _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_eus _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_eus _nifti_teleop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nifti_teleop_geneus)
add_dependencies(nifti_teleop_geneus nifti_teleop_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nifti_teleop_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_teleop
)
_generate_msg_lisp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_teleop
)
_generate_msg_lisp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_teleop
)
_generate_msg_lisp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_teleop
)
_generate_msg_lisp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningAction.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_teleop
)
_generate_msg_lisp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_teleop
)
_generate_msg_lisp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_teleop
)

### Generating Services
_generate_srv_lisp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Release.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_teleop
)
_generate_srv_lisp(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Acquire.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_teleop
)

### Generating Module File
_generate_module_lisp(nifti_teleop
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_teleop
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(nifti_teleop_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(nifti_teleop_generate_messages nifti_teleop_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_lisp _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_lisp _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Acquire.srv" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_lisp _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_lisp _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Release.srv" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_lisp _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_lisp _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningAction.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_lisp _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_lisp _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_lisp _nifti_teleop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nifti_teleop_genlisp)
add_dependencies(nifti_teleop_genlisp nifti_teleop_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nifti_teleop_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_teleop
)
_generate_msg_nodejs(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_teleop
)
_generate_msg_nodejs(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_teleop
)
_generate_msg_nodejs(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_teleop
)
_generate_msg_nodejs(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningAction.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_teleop
)
_generate_msg_nodejs(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_teleop
)
_generate_msg_nodejs(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_teleop
)

### Generating Services
_generate_srv_nodejs(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Release.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_teleop
)
_generate_srv_nodejs(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Acquire.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_teleop
)

### Generating Module File
_generate_module_nodejs(nifti_teleop
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_teleop
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(nifti_teleop_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(nifti_teleop_generate_messages nifti_teleop_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_nodejs _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_nodejs _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Acquire.srv" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_nodejs _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_nodejs _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Release.srv" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_nodejs _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_nodejs _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningAction.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_nodejs _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_nodejs _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_nodejs _nifti_teleop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nifti_teleop_gennodejs)
add_dependencies(nifti_teleop_gennodejs nifti_teleop_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nifti_teleop_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_teleop
)
_generate_msg_py(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_teleop
)
_generate_msg_py(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_teleop
)
_generate_msg_py(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_teleop
)
_generate_msg_py(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningAction.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_teleop
)
_generate_msg_py(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_teleop
)
_generate_msg_py(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_teleop
)

### Generating Services
_generate_srv_py(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Release.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_teleop
)
_generate_srv_py(nifti_teleop
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Acquire.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_teleop
)

### Generating Module File
_generate_module_py(nifti_teleop
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_teleop
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(nifti_teleop_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(nifti_teleop_generate_messages nifti_teleop_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_py _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_py _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Acquire.srv" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_py _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_py _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Release.srv" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_py _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_py _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningAction.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_py _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_py _nifti_teleop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg" NAME_WE)
add_dependencies(nifti_teleop_generate_messages_py _nifti_teleop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nifti_teleop_genpy)
add_dependencies(nifti_teleop_genpy nifti_teleop_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nifti_teleop_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_teleop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_teleop
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_generate_messages_cpp)
  add_dependencies(nifti_teleop_generate_messages_cpp actionlib_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(nifti_teleop_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_teleop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_teleop
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_generate_messages_eus)
  add_dependencies(nifti_teleop_generate_messages_eus actionlib_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(nifti_teleop_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_teleop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_teleop
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_generate_messages_lisp)
  add_dependencies(nifti_teleop_generate_messages_lisp actionlib_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(nifti_teleop_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_teleop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_teleop
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_generate_messages_nodejs)
  add_dependencies(nifti_teleop_generate_messages_nodejs actionlib_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(nifti_teleop_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_teleop)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_teleop\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_teleop
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_generate_messages_py)
  add_dependencies(nifti_teleop_generate_messages_py actionlib_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(nifti_teleop_generate_messages_py std_msgs_generate_messages_py)
endif()
