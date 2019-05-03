# CMake generated Testfile for 
# Source directory: /home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests
# Build directory: /home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/libnabo/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validation-2D-exhaustive "/knnvalidate" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.2d.txt" "10" "2" "-1")
add_test(validation-2D-random "/knnvalidate" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.2d.txt" "10" "2" "10000")
add_test(validation-3D-exhaustive "/knnvalidate" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.3d.txt" "10" "3" "-1")
add_test(validation-3D-random "/knnvalidate" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.3d.txt" "10" "3" "10000")
add_test(validation-3D-large-random "/knnvalidate" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.3d.large.txt" "10" "3" "1000")
add_test(validation-3D-large-random-radius "/knnvalidate" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.3d.large.txt" "10" "3" "1000" "0.5")
add_test(bench-3D-large-exhaustive-10000-K1 "/knnbench" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.3d.large.txt" "1" "-10000" "3" "5")
add_test(bench-3D-large-exhaustive-1000-K1 "/knnbench" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.3d.large.txt" "1" "-1000" "3" "5")
add_test(bench-3D-large-exhaustive-100-K1 "/knnbench" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.3d.large.txt" "1" "-100" "3" "5")
add_test(bench-3D-large-random-K1 "/knnbench" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.3d.large.txt" "1" "40000" "3" "5")
add_test(bench-3D-large-exhaustive-10000-K10 "/knnbench" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.3d.large.txt" "10" "-10000" "3" "5")
add_test(bench-3D-large-exhaustive-1000-K10 "/knnbench" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.3d.large.txt" "10" "-1000" "3" "5")
add_test(bench-3D-large-exhaustive-100-K10 "/knnbench" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.3d.large.txt" "10" "-100" "3" "5")
add_test(bench-3D-large-random-K20 "/knnbench" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.3d.large.txt" "10" "40000" "3" "5")
add_test(bench-3D-large-exhaustive-10000-K30 "/knnbench" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.3d.large.txt" "30" "-10000" "3" "5")
add_test(bench-3D-large-exhaustive-1000-K30 "/knnbench" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.3d.large.txt" "30" "-1000" "3" "5")
add_test(bench-3D-large-exhaustive-100-K30 "/knnbench" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.3d.large.txt" "30" "-100" "3" "5")
add_test(bench-3D-large-random-K30 "/knnbench" "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/libnabo/tests/data/scan.3d.large.txt" "30" "40000" "3" "5")
