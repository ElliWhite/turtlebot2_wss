# Install script for directory: /home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam/nonlinear" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/expressionTesting.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/DoglegOptimizer.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/Values.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/ISAM2.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/Expression-inl.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/Marginals.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/NonlinearFactorGraph.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/ISAM2-impl.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/NonlinearConjugateGradientOptimizer.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/ExtendedKalmanFilter.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/AdaptAutoDiff.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/LinearContainerFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/NonlinearOptimizer.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/Values-inl.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/Expression.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/factorTesting.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/NonlinearOptimizerParams.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/ExpressionFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/ISAM2-inl.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/Symbol.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/GaussNewtonOptimizer.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/NonlinearEquality.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/LevenbergMarquardtParams.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/WhiteNoiseFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/ExtendedKalmanFilter-inl.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/nonlinearExceptions.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/LevenbergMarquardtOptimizer.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/NonlinearISAM.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/DoglegOptimizerImpl.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/NonlinearFactor.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/expressions.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/ExpressionFactorGraph.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam/nonlinear/internal" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/internal/ExecutionTrace.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/internal/LevenbergMarquardtState.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/internal/CallRecord.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/internal/NonlinearOptimizerState.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/internal/ExpressionNode.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src/gtsam/nonlinear/internal/JacobianMap.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam_catkin/gtsam_src-prefix/src/gtsam_src-build/gtsam/nonlinear/tests/cmake_install.cmake")

endif()

