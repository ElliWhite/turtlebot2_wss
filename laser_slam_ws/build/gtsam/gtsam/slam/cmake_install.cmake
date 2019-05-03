# Install script for directory: /home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam/slam" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/TriangulationFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/JacobianFactorSVD.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/RegularImplicitSchurFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/lago.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/StereoFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/PoseRotationPrior.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/BetweenFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/PoseTranslationPrior.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/SmartProjectionPoseFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/ProjectionFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/RangeFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/PriorFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/ReferenceFrameFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/dataset.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/SmartProjectionFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/SmartFactorBase.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/InitializePose3.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/GeneralSFMFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/JacobianFactorQ.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/OrientedPlane3Factor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/EssentialMatrixConstraint.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/AntiFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/JacobianFactorQR.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/RotateFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/BoundingConstraint.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/EssentialMatrixFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/BearingFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/BearingRangeFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/slam/expressions.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/slam/tests/cmake_install.cmake")

endif()

