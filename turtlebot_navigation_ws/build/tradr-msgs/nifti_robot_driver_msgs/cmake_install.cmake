# Install script for directory: /home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_robot_driver_msgs/msg" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/ControllersStatus.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Currents.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/CurrentsStamped.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersState.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVel.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersVelStamped.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersStateStamped.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorque.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlippersTorqueStamped.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/FlipperCommand.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatus.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/RobotStatusStamped.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/Tracks.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/msg/TracksStamped.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_robot_driver_msgs/cmake" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/nifti_robot_driver_msgs/catkin_generated/installspace/nifti_robot_driver_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/include/nifti_robot_driver_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/roseus/ros/nifti_robot_driver_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/common-lisp/ros/nifti_robot_driver_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/gennodejs/ros/nifti_robot_driver_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/lib/python2.7/dist-packages/nifti_robot_driver_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/lib/python2.7/dist-packages/nifti_robot_driver_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/nifti_robot_driver_msgs/catkin_generated/installspace/nifti_robot_driver_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_robot_driver_msgs/cmake" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/nifti_robot_driver_msgs/catkin_generated/installspace/nifti_robot_driver_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_robot_driver_msgs/cmake" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/nifti_robot_driver_msgs/catkin_generated/installspace/nifti_robot_driver_msgsConfig.cmake"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/nifti_robot_driver_msgs/catkin_generated/installspace/nifti_robot_driver_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_robot_driver_msgs" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/nifti_robot_driver_msgs/package.xml")
endif()

