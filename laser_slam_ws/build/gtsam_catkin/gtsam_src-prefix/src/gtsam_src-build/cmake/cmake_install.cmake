# Install script for directory: /home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/cmake

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
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/GTSAMCMakeTools/GTSAMCMakeToolsConfig.cmake;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/GTSAMCMakeTools/Config.cmake.in;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/GTSAMCMakeTools/dllexport.h.in;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/GTSAMCMakeTools/GtsamBuildTypes.cmake;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/GTSAMCMakeTools/GtsamMakeConfigFile.cmake;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/GTSAMCMakeTools/GtsamMatlabWrap.cmake;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/GTSAMCMakeTools/GtsamPythonWrap.cmake;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/GTSAMCMakeTools/GtsamTesting.cmake;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/GTSAMCMakeTools/README.html")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/GTSAMCMakeTools" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/cmake/GTSAMCMakeToolsConfig.cmake"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/cmake/Config.cmake.in"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/cmake/dllexport.h.in"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/cmake/GtsamBuildTypes.cmake"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/cmake/GtsamMakeConfigFile.cmake"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/cmake/GtsamMatlabWrap.cmake"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/cmake/GtsamPythonWrap.cmake"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/cmake/GtsamTesting.cmake"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/cmake/README.html"
    )
endif()

