# Install script for directory: /home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/3rdparty/ceres

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam/3rdparty/ceres" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/3rdparty/ceres/rotation.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/3rdparty/ceres/variadic_evaluate.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/3rdparty/ceres/fpclassify.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/3rdparty/ceres/jet.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/3rdparty/ceres/eigen.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/3rdparty/ceres/autodiff.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/3rdparty/ceres/manual_constructor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/3rdparty/ceres/macros.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/3rdparty/ceres/fixed_array.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/3rdparty/ceres/example.h"
    )
endif()

