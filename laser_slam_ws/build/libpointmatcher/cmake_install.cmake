# Install script for directory: /home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libpointmatcher

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libpointmatcher" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libpointmatcher/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libpointmatcher.so.1.2.3"
      "$ENV{DESTDIR}/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libpointmatcher.so.1"
      "$ENV{DESTDIR}/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libpointmatcher.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libpointmatcher.so.1.2.3;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libpointmatcher.so.1;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libpointmatcher.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib" TYPE SHARED_LIBRARY FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libpointmatcher/libpointmatcher.so.1.2.3"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libpointmatcher/libpointmatcher.so.1"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libpointmatcher/libpointmatcher.so"
    )
  foreach(file
      "$ENV{DESTDIR}/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libpointmatcher.so.1.2.3"
      "$ENV{DESTDIR}/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libpointmatcher.so.1"
      "$ENV{DESTDIR}/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libpointmatcher.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/include/pointmatcher/PointMatcher.h;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/include/pointmatcher/PointMatcherPrivate.h;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/include/pointmatcher/Parametrizable.h;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/include/pointmatcher/Registrar.h;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/include/pointmatcher/Timer.h;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/include/pointmatcher/Functions.h;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/include/pointmatcher/IO.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/include/pointmatcher" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libpointmatcher/pointmatcher/PointMatcher.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libpointmatcher/pointmatcher/PointMatcherPrivate.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libpointmatcher/pointmatcher/Parametrizable.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libpointmatcher/pointmatcher/Registrar.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libpointmatcher/pointmatcher/Timer.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libpointmatcher/pointmatcher/Functions.h"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libpointmatcher/pointmatcher/IO.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/pointmatcher/libpointmatcherConfig.cmake;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/pointmatcher/libpointmatcherConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/pointmatcher" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libpointmatcher/CMakeFiles/libpointmatcherConfig.cmake"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libpointmatcher/libpointmatcherConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libpointmatcher/cmake" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libpointmatcher/CMakeFiles/libpointmatcherConfig.cmake"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libpointmatcher/libpointmatcherConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libpointmatcher/libpointmatcher.pc"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libpointmatcher/pointmatcher.pc"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libpointmatcher/contrib/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libpointmatcher/examples/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libpointmatcher/evaluations/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libpointmatcher/utest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libpointmatcher/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
