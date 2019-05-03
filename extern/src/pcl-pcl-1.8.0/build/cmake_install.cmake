# Install script for directory: /home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "pcl_common")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.8/pcl" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/include/pcl/pcl_config.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "pclconfig")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pcl-1.8" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/PCLConfig.cmake"
    "/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/PCLConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/common/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/octree/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/io/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/kdtree/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/search/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/sample_consensus/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/filters/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/2d/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/features/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/geometry/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/keypoints/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/surface/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/registration/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/ml/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/segmentation/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/recognition/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/visualization/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/people/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/outofcore/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/test/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/tracking/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/stereo/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/apps/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/cuda/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/gpu/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/examples/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/simulation/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/tools/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/doc/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
