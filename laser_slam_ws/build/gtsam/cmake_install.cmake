# Install script for directory: /home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/GTSAM

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
   "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/GTSAM/gtsam_extra.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/GTSAM" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam_extra.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/GTSAM/GTSAMConfig.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/cmake/GTSAM" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/GTSAMConfig.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/GTSAM/GTSAM-exports.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/GTSAM/GTSAM-exports.cmake"
         "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/CMakeFiles/Export/lib/cmake/GTSAM/GTSAM-exports.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/GTSAM/GTSAM-exports-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/GTSAM/GTSAM-exports.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/GTSAM" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/CMakeFiles/Export/lib/cmake/GTSAM/GTSAM-exports.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/GTSAM" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/CMakeFiles/Export/lib/cmake/GTSAM/GTSAM-exports-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/CppUnitLite/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/wrap/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/tests/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/examples/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/timing/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/gtsam_unstable/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/doc/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/cmake/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/gtsam/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
