# Install script for directory: /home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_launchers

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-ugv-base/nifti_launchers/catkin_generated/installspace/nifti_launchers.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_launchers/cmake" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-ugv-base/nifti_launchers/catkin_generated/installspace/nifti_launchersConfig.cmake"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-ugv-base/nifti_launchers/catkin_generated/installspace/nifti_launchersConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_launchers" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_launchers/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_launchers" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_launchers/launch/bagger_base.launch"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_launchers/launch/bagger_robot.launch"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_launchers/launch/default-environment.yaml"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_launchers/launch/default-robot.yaml"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_launchers/launch/emilia_all_on_robot.launch"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_launchers/launch/eth-lab.yaml"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_launchers/launch/eth-robot.yaml"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_launchers/launch/robot_3d.launch"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_launchers/launch/show_model.launch"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_launchers/launch/user_no_map_nav_vision.launch"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_launchers/launch/user_teleop_and_autonomy.launch"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_launchers/launch/user_teleop_only.launch"
    )
endif()

