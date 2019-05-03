# Install script for directory: /home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/navigation

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam/navigation" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/navigation/AHRSFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/navigation/ImuFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/navigation/PreintegrationParams.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/navigation/ImuBias.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/navigation/TangentPreintegration.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/navigation/Scenario.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/navigation/NavState.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/navigation/PreintegratedRotation.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/navigation/MagFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/navigation/AttitudeFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/navigation/CombinedImuFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/navigation/ScenarioRunner.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/navigation/PreintegrationBase.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/navigation/GPSFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/navigation/ManifoldPreintegration.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src-build/gtsam/navigation/tests/cmake_install.cmake")

endif()

