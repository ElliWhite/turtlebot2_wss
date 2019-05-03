# Install script for directory: /home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libpointmatcher_ros/ethzasl_extrinsic_calibration

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install")
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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install" TYPE PROGRAM FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/ethzasl_extrinsic_calibration/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install" TYPE PROGRAM FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/ethzasl_extrinsic_calibration/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/ethzasl_extrinsic_calibration/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/ethzasl_extrinsic_calibration/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/ethzasl_extrinsic_calibration/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/ethzasl_extrinsic_calibration/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/ethzasl_extrinsic_calibration/catkin_generated/installspace/ethzasl_extrinsic_calibration.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ethzasl_extrinsic_calibration/cmake" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/ethzasl_extrinsic_calibration/catkin_generated/installspace/ethzasl_extrinsic_calibrationConfig.cmake"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/ethzasl_extrinsic_calibration/catkin_generated/installspace/ethzasl_extrinsic_calibrationConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ethzasl_extrinsic_calibration" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libpointmatcher_ros/ethzasl_extrinsic_calibration/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ethzasl_extrinsic_calibration/tf_logger" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ethzasl_extrinsic_calibration/tf_logger")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ethzasl_extrinsic_calibration/tf_logger"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ethzasl_extrinsic_calibration" TYPE EXECUTABLE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/ethzasl_extrinsic_calibration/tf_logger")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ethzasl_extrinsic_calibration/tf_logger" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ethzasl_extrinsic_calibration/tf_logger")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ethzasl_extrinsic_calibration/tf_logger"
         OLD_RPATH "/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ethzasl_extrinsic_calibration/tf_logger")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ethzasl_extrinsic_calibration/optimize" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ethzasl_extrinsic_calibration/optimize")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ethzasl_extrinsic_calibration/optimize"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ethzasl_extrinsic_calibration" TYPE EXECUTABLE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/ethzasl_extrinsic_calibration/optimize")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ethzasl_extrinsic_calibration/optimize" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ethzasl_extrinsic_calibration/optimize")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ethzasl_extrinsic_calibration/optimize")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/ethzasl_extrinsic_calibration/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/ethzasl_extrinsic_calibration/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
