# Install script for directory: /home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM/gtsam/global_includes.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/config.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/dllexport.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsam.so.4.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsam.so.4"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsam.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/libgtsam.so.4.0.0"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/libgtsam.so.4"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/libgtsam.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsam.so.4.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsam.so.4"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtsam.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/3rdparty/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/base/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/geometry/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/inference/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/symbolic/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/discrete/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/linear/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/nonlinear/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/slam/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/navigation/cmake_install.cmake")

endif()

