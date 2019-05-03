# Install script for directory: /home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam/geometry" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/Cal3_S2Stereo.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/OrientedPlane3.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/StereoCamera.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/Quaternion.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/PinholeCamera.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/Unit3.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/EssentialMatrix.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/Cal3Bundler.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/SimpleCamera.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/Cal3Unified.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/concepts.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/triangulation.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/Pose3.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/Rot3.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/CameraSet.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/SO3.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/Cal3DS2_Base.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/Cal3_S2.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/CalibratedCamera.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/Point2.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/Point3.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/Cal3DS2.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/Cyclic.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/Pose2.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/Rot2.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/StereoPoint2.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/PinholePose.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/geometry/PinholeSet.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/geometry/tests/cmake_install.cmake")

endif()

