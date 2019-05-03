# Install script for directory: /home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/install")
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
   "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/install" TYPE PROGRAM FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/install" TYPE PROGRAM FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/install" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/install" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/install" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/install" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/gtest/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/ms_octomap_mapping/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-ugv-base/nifti_launchers/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/networkanalysis_msgs/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/nifti_robot_driver_msgs/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/stamped_msgs/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-simulation/vrep_ugv_simulation/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-ugv-base/nifti_teleop/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/exploration_msgs/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/patrolling_build_graph_msgs/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/ms_octomap_server/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/robot_trajectory_saver_msgs/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/trajectory_control_msgs/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-simulation/vrep_common/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-simulation/vrep_ugv_plugin/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-msgs/wireless_network_msgs/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-loc-map-nav/path_planner/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-loc-map-nav/path_planner_rviz_wp_plugin/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-loc-map-nav/trajectory_control/cmake_install.cmake")
  include("/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-ugv-base/nifti_robot_description/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
