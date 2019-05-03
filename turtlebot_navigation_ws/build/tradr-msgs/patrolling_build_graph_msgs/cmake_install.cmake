# Install script for directory: /home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/patrolling_build_graph_msgs/msg" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/BuildGraphEvent.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/Graph.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PatrollingPoints.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/msg/PriorityPoint.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/patrolling_build_graph_msgs/cmake" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/patrolling_build_graph_msgs/catkin_generated/installspace/patrolling_build_graph_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/include/patrolling_build_graph_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/roseus/ros/patrolling_build_graph_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/common-lisp/ros/patrolling_build_graph_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/gennodejs/ros/patrolling_build_graph_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/lib/python2.7/dist-packages/patrolling_build_graph_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/lib/python2.7/dist-packages/patrolling_build_graph_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/patrolling_build_graph_msgs/catkin_generated/installspace/patrolling_build_graph_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/patrolling_build_graph_msgs/cmake" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/patrolling_build_graph_msgs/catkin_generated/installspace/patrolling_build_graph_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/patrolling_build_graph_msgs/cmake" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/patrolling_build_graph_msgs/catkin_generated/installspace/patrolling_build_graph_msgsConfig.cmake"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/patrolling_build_graph_msgs/catkin_generated/installspace/patrolling_build_graph_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/patrolling_build_graph_msgs" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/patrolling_build_graph_msgs/package.xml")
endif()

