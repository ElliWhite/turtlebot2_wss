# Install script for directory: /home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_teleop/srv" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Acquire.srv"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/srv/Release.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_teleop/action" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/action/Scanning.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_teleop/msg" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningAction.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionGoal.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionResult.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningActionFeedback.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningGoal.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningResult.msg"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/nifti_teleop/msg/ScanningFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_teleop/cmake" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-ugv-base/nifti_teleop/catkin_generated/installspace/nifti_teleop-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/include/nifti_teleop")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/roseus/ros/nifti_teleop")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/common-lisp/ros/nifti_teleop")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/share/gennodejs/ros/nifti_teleop")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/lib/python2.7/dist-packages/nifti_teleop")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/lib/python2.7/dist-packages/nifti_teleop")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-ugv-base/nifti_teleop/catkin_generated/installspace/nifti_teleop.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_teleop/cmake" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-ugv-base/nifti_teleop/catkin_generated/installspace/nifti_teleop-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_teleop/cmake" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-ugv-base/nifti_teleop/catkin_generated/installspace/nifti_teleopConfig.cmake"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-ugv-base/nifti_teleop/catkin_generated/installspace/nifti_teleopConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_teleop" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/nifti_teleop/nodes" TYPE PROGRAM FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/nodes/joy_to_twist.py"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/nodes/nifti_no.py"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/nodes/nifti_teleop_tank.py"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/nodes/priority_wrapper.py"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/nodes/laser_rotate.sh"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/nodes/nifti_teleop_helper.py"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/nodes/nifti_test_flippers.py"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/nodes/nifti_mux_ctrl.py"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/nodes/nifti_teleop_joy.py"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/nodes/nifti_teleop_xbox.py"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/nodes/nth_action.py"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_teleop/launch" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/launch/default_teleop_joy.yaml"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/launch/nifti_diag.launch"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/launch/nifti_test_flippers.launch"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/launch/tank.launch"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/launch/diag.yaml"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/launch/nifti_joy.launch"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/launch/nifti_ugv_teleop.launch"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_teleop/launch/test_wrapper.launch"
    )
endif()

