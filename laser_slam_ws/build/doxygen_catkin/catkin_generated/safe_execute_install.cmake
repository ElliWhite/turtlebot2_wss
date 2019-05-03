execute_process(COMMAND "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/doxygen_catkin/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/doxygen_catkin/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
