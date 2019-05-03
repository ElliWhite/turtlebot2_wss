# Install script for directory: /home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam/linear" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/linearAlgorithms-inst.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/SubgraphPreconditioner.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/BinaryJacobianFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/GaussianISAM.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/NoiseModel.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/GaussianBayesNet.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/GaussianConditional-inl.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/JacobianFactor-inl.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/VectorValues.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/IterativeSolver.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/GaussianFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/GaussianBayesTree-inl.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/Errors.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/GaussianFactorGraph.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/JacobianFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/RegularJacobianFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/linearExceptions.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/HessianFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/RegularHessianFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/iterative-inl.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/PCGSolver.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/Preconditioner.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/KalmanFilter.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/SubgraphSolver.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/iterative.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/GaussianJunctionTree.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/GaussianConditional.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/GaussianDensity.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/GaussianEliminationTree.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/ConjugateGradientSolver.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/Scatter.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/GaussianBayesTree.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/Sampler.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/linear/HessianFactor-inl.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/linear/tests/cmake_install.cmake")

endif()

