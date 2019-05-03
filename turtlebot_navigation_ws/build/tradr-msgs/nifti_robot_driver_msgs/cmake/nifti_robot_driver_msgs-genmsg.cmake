# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "nifti_robot_driver_msgs: 14 messages, 0 services")

set(MSG_I_FLAGS "-Inifti_robot_driver_msgs:/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(nifti_robot_driver_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorque.msg" NAME_WE)
add_custom_target(_nifti_robot_driver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_robot_driver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorque.msg" ""
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatusStamped.msg" NAME_WE)
add_custom_target(_nifti_robot_driver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_robot_driver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatusStamped.msg" "std_msgs/Header:nifti_robot_driver_msgs/ControllersStatus"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersState.msg" NAME_WE)
add_custom_target(_nifti_robot_driver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_robot_driver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersState.msg" ""
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg" NAME_WE)
add_custom_target(_nifti_robot_driver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_robot_driver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVel.msg" NAME_WE)
add_custom_target(_nifti_robot_driver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_robot_driver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVel.msg" ""
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorqueStamped.msg" NAME_WE)
add_custom_target(_nifti_robot_driver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_robot_driver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorqueStamped.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVelStamped.msg" NAME_WE)
add_custom_target(_nifti_robot_driver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_robot_driver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVelStamped.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatus.msg" NAME_WE)
add_custom_target(_nifti_robot_driver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_robot_driver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatus.msg" "nifti_robot_driver_msgs/ControllersStatus"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Currents.msg" NAME_WE)
add_custom_target(_nifti_robot_driver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_robot_driver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Currents.msg" ""
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/TracksStamped.msg" NAME_WE)
add_custom_target(_nifti_robot_driver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_robot_driver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/TracksStamped.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlipperCommand.msg" NAME_WE)
add_custom_target(_nifti_robot_driver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_robot_driver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlipperCommand.msg" ""
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg" NAME_WE)
add_custom_target(_nifti_robot_driver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_robot_driver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg" ""
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg" NAME_WE)
add_custom_target(_nifti_robot_driver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_robot_driver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg" ""
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/CurrentsStamped.msg" NAME_WE)
add_custom_target(_nifti_robot_driver_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nifti_robot_driver_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/CurrentsStamped.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorque.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_cpp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_cpp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_cpp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_cpp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_cpp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_cpp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorqueStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_cpp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVelStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_cpp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_cpp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_cpp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/TracksStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_cpp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlipperCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_cpp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/CurrentsStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_cpp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Currents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(nifti_robot_driver_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(nifti_robot_driver_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(nifti_robot_driver_msgs_generate_messages nifti_robot_driver_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorque.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatusStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersState.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVel.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorqueStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVelStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatus.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Currents.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/TracksStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlipperCommand.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/CurrentsStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nifti_robot_driver_msgs_gencpp)
add_dependencies(nifti_robot_driver_msgs_gencpp nifti_robot_driver_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nifti_robot_driver_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorque.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_eus(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_eus(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_eus(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_eus(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_eus(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_eus(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorqueStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_eus(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVelStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_eus(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_eus(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_eus(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/TracksStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_eus(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlipperCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_eus(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/CurrentsStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_eus(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Currents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(nifti_robot_driver_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(nifti_robot_driver_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(nifti_robot_driver_msgs_generate_messages nifti_robot_driver_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorque.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_eus _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatusStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_eus _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersState.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_eus _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_eus _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVel.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_eus _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorqueStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_eus _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVelStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_eus _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatus.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_eus _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Currents.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_eus _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/TracksStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_eus _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlipperCommand.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_eus _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_eus _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_eus _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/CurrentsStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_eus _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nifti_robot_driver_msgs_geneus)
add_dependencies(nifti_robot_driver_msgs_geneus nifti_robot_driver_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nifti_robot_driver_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorque.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_lisp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_lisp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_lisp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_lisp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_lisp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_lisp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorqueStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_lisp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVelStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_lisp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_lisp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_lisp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/TracksStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_lisp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlipperCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_lisp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/CurrentsStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_lisp(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Currents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(nifti_robot_driver_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(nifti_robot_driver_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(nifti_robot_driver_msgs_generate_messages nifti_robot_driver_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorque.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatusStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersState.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVel.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorqueStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVelStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatus.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Currents.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/TracksStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlipperCommand.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/CurrentsStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nifti_robot_driver_msgs_genlisp)
add_dependencies(nifti_robot_driver_msgs_genlisp nifti_robot_driver_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nifti_robot_driver_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorque.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_nodejs(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_nodejs(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_nodejs(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_nodejs(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_nodejs(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_nodejs(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorqueStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_nodejs(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVelStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_nodejs(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_nodejs(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_nodejs(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/TracksStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_nodejs(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlipperCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_nodejs(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/CurrentsStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_nodejs(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Currents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(nifti_robot_driver_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(nifti_robot_driver_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(nifti_robot_driver_msgs_generate_messages nifti_robot_driver_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorque.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatusStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersState.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVel.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorqueStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVelStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatus.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Currents.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/TracksStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlipperCommand.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/CurrentsStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nifti_robot_driver_msgs_gennodejs)
add_dependencies(nifti_robot_driver_msgs_gennodejs nifti_robot_driver_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nifti_robot_driver_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorque.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_py(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_py(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatusStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_py(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_py(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_py(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_py(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorqueStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_py(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVelStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_py(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_py(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_py(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/TracksStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_py(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlipperCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_py(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/CurrentsStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs
)
_generate_msg_py(nifti_robot_driver_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Currents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(nifti_robot_driver_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(nifti_robot_driver_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(nifti_robot_driver_msgs_generate_messages nifti_robot_driver_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorque.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_py _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatusStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_py _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersState.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_py _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_py _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVel.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_py _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorqueStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_py _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVelStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_py _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatus.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_py _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Currents.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_py _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/TracksStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_py _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlipperCommand.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_py _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_py _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_py _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/CurrentsStamped.msg" NAME_WE)
add_dependencies(nifti_robot_driver_msgs_generate_messages_py _nifti_robot_driver_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nifti_robot_driver_msgs_genpy)
add_dependencies(nifti_robot_driver_msgs_genpy nifti_robot_driver_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nifti_robot_driver_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nifti_robot_driver_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(nifti_robot_driver_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nifti_robot_driver_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(nifti_robot_driver_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(nifti_robot_driver_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(nifti_robot_driver_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nifti_robot_driver_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(nifti_robot_driver_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nifti_robot_driver_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(nifti_robot_driver_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nifti_robot_driver_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(nifti_robot_driver_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(nifti_robot_driver_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(nifti_robot_driver_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
