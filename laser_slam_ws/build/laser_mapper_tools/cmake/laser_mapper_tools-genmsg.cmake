# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "laser_mapper_tools: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Iroscpp:/opt/ros/kinetic/share/roscpp/cmake/../msg;-Itf:/opt/ros/kinetic/share/tf/cmake/../msg;-Ivisualization_msgs:/opt/ros/kinetic/share/visualization_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(laser_mapper_tools_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/tradr-laser-slam/laser_slam_ros/laser_mapper_tools/srv/SetPose.srv" NAME_WE)
add_custom_target(_laser_mapper_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laser_mapper_tools" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/tradr-laser-slam/laser_slam_ros/laser_mapper_tools/srv/SetPose.srv" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(laser_mapper_tools
  "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/tradr-laser-slam/laser_slam_ros/laser_mapper_tools/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_mapper_tools
)

### Generating Module File
_generate_module_cpp(laser_mapper_tools
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_mapper_tools
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(laser_mapper_tools_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(laser_mapper_tools_generate_messages laser_mapper_tools_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/tradr-laser-slam/laser_slam_ros/laser_mapper_tools/srv/SetPose.srv" NAME_WE)
add_dependencies(laser_mapper_tools_generate_messages_cpp _laser_mapper_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laser_mapper_tools_gencpp)
add_dependencies(laser_mapper_tools_gencpp laser_mapper_tools_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_mapper_tools_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(laser_mapper_tools
  "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/tradr-laser-slam/laser_slam_ros/laser_mapper_tools/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laser_mapper_tools
)

### Generating Module File
_generate_module_eus(laser_mapper_tools
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laser_mapper_tools
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(laser_mapper_tools_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(laser_mapper_tools_generate_messages laser_mapper_tools_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/tradr-laser-slam/laser_slam_ros/laser_mapper_tools/srv/SetPose.srv" NAME_WE)
add_dependencies(laser_mapper_tools_generate_messages_eus _laser_mapper_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laser_mapper_tools_geneus)
add_dependencies(laser_mapper_tools_geneus laser_mapper_tools_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_mapper_tools_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(laser_mapper_tools
  "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/tradr-laser-slam/laser_slam_ros/laser_mapper_tools/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_mapper_tools
)

### Generating Module File
_generate_module_lisp(laser_mapper_tools
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_mapper_tools
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(laser_mapper_tools_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(laser_mapper_tools_generate_messages laser_mapper_tools_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/tradr-laser-slam/laser_slam_ros/laser_mapper_tools/srv/SetPose.srv" NAME_WE)
add_dependencies(laser_mapper_tools_generate_messages_lisp _laser_mapper_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laser_mapper_tools_genlisp)
add_dependencies(laser_mapper_tools_genlisp laser_mapper_tools_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_mapper_tools_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(laser_mapper_tools
  "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/tradr-laser-slam/laser_slam_ros/laser_mapper_tools/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laser_mapper_tools
)

### Generating Module File
_generate_module_nodejs(laser_mapper_tools
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laser_mapper_tools
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(laser_mapper_tools_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(laser_mapper_tools_generate_messages laser_mapper_tools_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/tradr-laser-slam/laser_slam_ros/laser_mapper_tools/srv/SetPose.srv" NAME_WE)
add_dependencies(laser_mapper_tools_generate_messages_nodejs _laser_mapper_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laser_mapper_tools_gennodejs)
add_dependencies(laser_mapper_tools_gennodejs laser_mapper_tools_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_mapper_tools_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(laser_mapper_tools
  "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/tradr-laser-slam/laser_slam_ros/laser_mapper_tools/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_mapper_tools
)

### Generating Module File
_generate_module_py(laser_mapper_tools
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_mapper_tools
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(laser_mapper_tools_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(laser_mapper_tools_generate_messages laser_mapper_tools_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/tradr-laser-slam/laser_slam_ros/laser_mapper_tools/srv/SetPose.srv" NAME_WE)
add_dependencies(laser_mapper_tools_generate_messages_py _laser_mapper_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laser_mapper_tools_genpy)
add_dependencies(laser_mapper_tools_genpy laser_mapper_tools_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_mapper_tools_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_mapper_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_mapper_tools
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(laser_mapper_tools_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET laser_mapper_generate_messages_cpp)
  add_dependencies(laser_mapper_tools_generate_messages_cpp laser_mapper_generate_messages_cpp)
endif()
if(TARGET volumetric_msgs_generate_messages_cpp)
  add_dependencies(laser_mapper_tools_generate_messages_cpp volumetric_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laser_mapper_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laser_mapper_tools
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(laser_mapper_tools_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET laser_mapper_generate_messages_eus)
  add_dependencies(laser_mapper_tools_generate_messages_eus laser_mapper_generate_messages_eus)
endif()
if(TARGET volumetric_msgs_generate_messages_eus)
  add_dependencies(laser_mapper_tools_generate_messages_eus volumetric_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_mapper_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_mapper_tools
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(laser_mapper_tools_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET laser_mapper_generate_messages_lisp)
  add_dependencies(laser_mapper_tools_generate_messages_lisp laser_mapper_generate_messages_lisp)
endif()
if(TARGET volumetric_msgs_generate_messages_lisp)
  add_dependencies(laser_mapper_tools_generate_messages_lisp volumetric_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laser_mapper_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laser_mapper_tools
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(laser_mapper_tools_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET laser_mapper_generate_messages_nodejs)
  add_dependencies(laser_mapper_tools_generate_messages_nodejs laser_mapper_generate_messages_nodejs)
endif()
if(TARGET volumetric_msgs_generate_messages_nodejs)
  add_dependencies(laser_mapper_tools_generate_messages_nodejs volumetric_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_mapper_tools)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_mapper_tools\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_mapper_tools
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(laser_mapper_tools_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET laser_mapper_generate_messages_py)
  add_dependencies(laser_mapper_tools_generate_messages_py laser_mapper_generate_messages_py)
endif()
if(TARGET volumetric_msgs_generate_messages_py)
  add_dependencies(laser_mapper_tools_generate_messages_py volumetric_msgs_generate_messages_py)
endif()
