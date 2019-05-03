# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "patrolling_build_graph_msgs: 4 messages, 0 services")

set(MSG_I_FLAGS "-Ipatrolling_build_graph_msgs:/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/kinetic/share/visualization_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(patrolling_build_graph_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/BuildGraphEvent.msg" NAME_WE)
add_custom_target(_patrolling_build_graph_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "patrolling_build_graph_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/BuildGraphEvent.msg" ""
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/Graph.msg" NAME_WE)
add_custom_target(_patrolling_build_graph_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "patrolling_build_graph_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/Graph.msg" "std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PatrollingPoints.msg" NAME_WE)
add_custom_target(_patrolling_build_graph_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "patrolling_build_graph_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PatrollingPoints.msg" "std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PriorityPoint.msg" NAME_WE)
add_custom_target(_patrolling_build_graph_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "patrolling_build_graph_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PriorityPoint.msg" "std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PriorityPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/patrolling_build_graph_msgs
)
_generate_msg_cpp(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/Graph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/patrolling_build_graph_msgs
)
_generate_msg_cpp(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PatrollingPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/patrolling_build_graph_msgs
)
_generate_msg_cpp(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/BuildGraphEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/patrolling_build_graph_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(patrolling_build_graph_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/patrolling_build_graph_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(patrolling_build_graph_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(patrolling_build_graph_msgs_generate_messages patrolling_build_graph_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/BuildGraphEvent.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_cpp _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/Graph.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_cpp _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PatrollingPoints.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_cpp _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PriorityPoint.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_cpp _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(patrolling_build_graph_msgs_gencpp)
add_dependencies(patrolling_build_graph_msgs_gencpp patrolling_build_graph_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS patrolling_build_graph_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PriorityPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/patrolling_build_graph_msgs
)
_generate_msg_eus(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/Graph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/patrolling_build_graph_msgs
)
_generate_msg_eus(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PatrollingPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/patrolling_build_graph_msgs
)
_generate_msg_eus(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/BuildGraphEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/patrolling_build_graph_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(patrolling_build_graph_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/patrolling_build_graph_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(patrolling_build_graph_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(patrolling_build_graph_msgs_generate_messages patrolling_build_graph_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/BuildGraphEvent.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_eus _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/Graph.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_eus _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PatrollingPoints.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_eus _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PriorityPoint.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_eus _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(patrolling_build_graph_msgs_geneus)
add_dependencies(patrolling_build_graph_msgs_geneus patrolling_build_graph_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS patrolling_build_graph_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PriorityPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/patrolling_build_graph_msgs
)
_generate_msg_lisp(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/Graph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/patrolling_build_graph_msgs
)
_generate_msg_lisp(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PatrollingPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/patrolling_build_graph_msgs
)
_generate_msg_lisp(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/BuildGraphEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/patrolling_build_graph_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(patrolling_build_graph_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/patrolling_build_graph_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(patrolling_build_graph_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(patrolling_build_graph_msgs_generate_messages patrolling_build_graph_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/BuildGraphEvent.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_lisp _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/Graph.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_lisp _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PatrollingPoints.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_lisp _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PriorityPoint.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_lisp _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(patrolling_build_graph_msgs_genlisp)
add_dependencies(patrolling_build_graph_msgs_genlisp patrolling_build_graph_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS patrolling_build_graph_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PriorityPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/patrolling_build_graph_msgs
)
_generate_msg_nodejs(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/Graph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/patrolling_build_graph_msgs
)
_generate_msg_nodejs(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PatrollingPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/patrolling_build_graph_msgs
)
_generate_msg_nodejs(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/BuildGraphEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/patrolling_build_graph_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(patrolling_build_graph_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/patrolling_build_graph_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(patrolling_build_graph_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(patrolling_build_graph_msgs_generate_messages patrolling_build_graph_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/BuildGraphEvent.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_nodejs _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/Graph.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_nodejs _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PatrollingPoints.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_nodejs _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PriorityPoint.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_nodejs _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(patrolling_build_graph_msgs_gennodejs)
add_dependencies(patrolling_build_graph_msgs_gennodejs patrolling_build_graph_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS patrolling_build_graph_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PriorityPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/patrolling_build_graph_msgs
)
_generate_msg_py(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/Graph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/patrolling_build_graph_msgs
)
_generate_msg_py(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PatrollingPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/patrolling_build_graph_msgs
)
_generate_msg_py(patrolling_build_graph_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/BuildGraphEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/patrolling_build_graph_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(patrolling_build_graph_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/patrolling_build_graph_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(patrolling_build_graph_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(patrolling_build_graph_msgs_generate_messages patrolling_build_graph_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/BuildGraphEvent.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_py _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/Graph.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_py _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PatrollingPoints.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_py _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PriorityPoint.msg" NAME_WE)
add_dependencies(patrolling_build_graph_msgs_generate_messages_py _patrolling_build_graph_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(patrolling_build_graph_msgs_genpy)
add_dependencies(patrolling_build_graph_msgs_genpy patrolling_build_graph_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS patrolling_build_graph_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/patrolling_build_graph_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/patrolling_build_graph_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/patrolling_build_graph_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/patrolling_build_graph_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/patrolling_build_graph_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/patrolling_build_graph_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/patrolling_build_graph_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/patrolling_build_graph_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/patrolling_build_graph_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/patrolling_build_graph_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/patrolling_build_graph_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(patrolling_build_graph_msgs_generate_messages_py visualization_msgs_generate_messages_py)
endif()
