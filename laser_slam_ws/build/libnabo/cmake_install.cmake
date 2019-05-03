# Install script for directory: /home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libnabo/libnabo.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/nabo" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/nabo/nabo.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/nabo/third_party" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/nabo/third_party/any.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/libnabo" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/README.md")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/libnabo/api" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libnabo/doc/html")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libnabo" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libnabo/cmake" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libnabo/CMakeFiles/libnaboConfig.cmake"
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libnabo/libnaboConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libnabo/examples/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libnabo/tests/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libnabo/python/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libnabo/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
