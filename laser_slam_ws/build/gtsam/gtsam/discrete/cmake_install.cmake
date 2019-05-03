# Install script for directory: /home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam/discrete" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete/DiscreteBayesTree.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete/DiscreteMarginals.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete/DiscreteKey.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete/DecisionTreeFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete/Assignment.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete/DecisionTree-inl.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete/DiscreteJunctionTree.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete/DiscreteEliminationTree.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete/DiscreteConditional.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete/DiscreteBayesNet.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete/DecisionTree.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete/Potentials.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete/DiscreteFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete/Signature.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete/DiscreteFactorGraph.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/discrete/AlgebraicDecisionTree.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/discrete/tests/cmake_install.cmake")

endif()

