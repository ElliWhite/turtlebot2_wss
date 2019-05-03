# Install script for directory: /home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/nifti_robot_description" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/include/nifti_robot_description/RobotPartsConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/nifti_robot_description" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/lib/python2.7/dist-packages/nifti_robot_description/__init__.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/lib/python2.7/dist-packages/nifti_robot_description/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/nifti_robot_description" TYPE DIRECTORY FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/devel/lib/python2.7/dist-packages/nifti_robot_description/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-ugv-base/nifti_robot_description/catkin_generated/installspace/nifti_robot_description.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_robot_description/cmake" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-ugv-base/nifti_robot_description/catkin_generated/installspace/nifti_robot_descriptionConfig.cmake"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-ugv-base/nifti_robot_description/catkin_generated/installspace/nifti_robot_descriptionConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_robot_description" TYPE FILE FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/nifti_robot_description" TYPE PROGRAM FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-ugv-base/nifti_robot_description/catkin_generated/installspace/dynamic_robot_model_server.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/nifti_robot_description" TYPE PROGRAM FILES "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/build/tradr-ugv-base/nifti_robot_description/catkin_generated/installspace/print_robot_model.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_robot_description/meshes" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/meshes/antenna.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/meshes/battery.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/meshes/body.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/meshes/bogie.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/meshes/flipper.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/meshes/laser.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/meshes/omnicam.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/meshes/top_box.dae"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_robot_description/meshes/collide" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/meshes/collide/antenna.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/meshes/collide/battery.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/meshes/collide/body.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/meshes/collide/bogie.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/meshes/collide/flipper.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/meshes/collide/laser.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/meshes/collide/omnicam.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/meshes/collide/top_box.dae"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_robot_description/textures" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/textures/antenna_color.png"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/textures/body_color.png"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/textures/bogie_color.png"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/textures/flipper_color.png"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/textures/laser_color.png"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/textures/omnicam_color.png"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/textures/top_box_color.png"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_robot_description/launch" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/launch/display.launch"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/launch/load_robot_model.launch"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nifti_robot_description/old_model" TYPE FILE FILES
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/old_model/nifti_robot.urdf"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/old_model/body.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/old_model/body_color.png"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/old_model/bogie.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/old_model/bogie_color.png"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/old_model/flipper.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/old_model/flipper_color.png"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/old_model/laser.dae"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/old_model/laser_color.png"
    "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-ugv-base/nifti_robot_description/old_model/omnicam.stl"
    )
endif()

