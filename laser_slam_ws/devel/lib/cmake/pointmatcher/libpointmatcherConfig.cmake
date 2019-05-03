# - Config file for the libpointmatcher package
# It defines the following variables
#  libpointmatcher_INCLUDE_DIRS - include directories for pointmatcher
#  libpointmatcher_LIBRARIES    - libraries to link against

# Compute paths
get_filename_component(POINTMATCHER_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(libpointmatcher_INCLUDE_DIRS "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/include;/usr/include;/usr/include/eigen3;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/include;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libpointmatcher/pointmatcher")
set(LIBPOINTMATCHER_INCLUDE_DIRS "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/include;/usr/include;/usr/include/eigen3;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/include;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libpointmatcher/pointmatcher")
set(pointmatcher_INCLUDE_DIRS "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/include;/usr/include;/usr/include/eigen3;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/include;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libpointmatcher/pointmatcher")
set(POINTMATCHER_INCLUDE_DIRS "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/include;/usr/include;/usr/include/eigen3;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/include;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libpointmatcher/pointmatcher")

set(libpointmatcher_LIBRARIES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libpointmatcher.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_program_options.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libpthread.so;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libnabo.a;gomp;rt")
set(LIBPOINTMATCHER_LIBRARIES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libpointmatcher.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_program_options.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libpthread.so;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libnabo.a;gomp;rt")
set(pointmatcher_LIBRARIES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libpointmatcher.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_program_options.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libpthread.so;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libnabo.a;gomp;rt")
set(POINTMATCHER_LIBRARIES "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libpointmatcher.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_program_options.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libpthread.so;/home/elliottwhite/turtlebot2_wss/laser_slam_ws/devel/lib/libnabo.a;gomp;rt")

# This causes catkin simple to link against these libraries
set(libpointmatcher_FOUND_CATKIN_PROJECT true)
set(LIBPOINTMATCHER_FOUND_CATKIN_PROJECT true)
set(pointmatcher_FOUND_CATKIN_PROJECT true)
set(POINTMATCHER_FOUND_CATKIN_PROJECT true)
