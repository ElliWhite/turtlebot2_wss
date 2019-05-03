# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "stamped_msgs: 44 messages, 0 services")

set(MSG_I_FLAGS "-Istamped_msgs:/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(stamped_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32Array.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32Array.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Duration.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Duration.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16MultiArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16MultiArray.msg" "std_msgs/MultiArrayDimension:std_msgs/Header:std_msgs/MultiArrayLayout"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteMultiArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteMultiArray.msg" "std_msgs/MultiArrayDimension:std_msgs/Header:std_msgs/MultiArrayLayout"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64MultiArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64MultiArray.msg" "std_msgs/MultiArrayDimension:std_msgs/Header:std_msgs/MultiArrayLayout"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64MultiArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64MultiArray.msg" "std_msgs/MultiArrayDimension:std_msgs/Header:std_msgs/MultiArrayLayout"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/BoolArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/BoolArray.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/StringArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/StringArray.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32Array.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32Array.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Char.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Char.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32MultiArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32MultiArray.msg" "std_msgs/MultiArrayDimension:std_msgs/Header:std_msgs/MultiArrayLayout"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64Array.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64Array.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32MultiArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32MultiArray.msg" "std_msgs/MultiArrayDimension:std_msgs/Header:std_msgs/MultiArrayLayout"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32Array.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32Array.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Byte.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Byte.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8MultiArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8MultiArray.msg" "std_msgs/MultiArrayDimension:std_msgs/Header:std_msgs/MultiArrayLayout"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16Array.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16Array.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteArray.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Empty.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Empty.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8MultiArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8MultiArray.msg" "std_msgs/MultiArrayDimension:std_msgs/Header:std_msgs/MultiArrayLayout"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/CharArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/CharArray.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32MultiArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32MultiArray.msg" "std_msgs/MultiArrayDimension:std_msgs/Header:std_msgs/MultiArrayLayout"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBAArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBAArray.msg" "std_msgs/ColorRGBA:std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/DurationArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/DurationArray.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBA.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBA.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64Array.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64Array.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/String.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/String.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64Array.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64Array.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Bool.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Bool.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16Array.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16Array.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8Array.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8Array.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64MultiArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64MultiArray.msg" "std_msgs/MultiArrayDimension:std_msgs/Header:std_msgs/MultiArrayLayout"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8Array.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8Array.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16MultiArray.msg" NAME_WE)
add_custom_target(_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stamped_msgs" "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16MultiArray.msg" "std_msgs/MultiArrayDimension:std_msgs/Header:std_msgs/MultiArrayLayout"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Duration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteMultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/BoolArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/StringArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Char.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Byte.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Empty.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/CharArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBAArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/String.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/DurationArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Bool.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_cpp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(stamped_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(stamped_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(stamped_msgs_generate_messages stamped_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Duration.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteMultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/BoolArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/StringArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Char.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Byte.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Empty.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/CharArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBAArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/DurationArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBA.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/String.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Bool.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_cpp _stamped_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stamped_msgs_gencpp)
add_dependencies(stamped_msgs_gencpp stamped_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stamped_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Duration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteMultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/BoolArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/StringArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Char.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Byte.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Empty.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/CharArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBAArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/String.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/DurationArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Bool.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)
_generate_msg_eus(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(stamped_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(stamped_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(stamped_msgs_generate_messages stamped_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Duration.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteMultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/BoolArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/StringArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Char.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Byte.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Empty.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/CharArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBAArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/DurationArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBA.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/String.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Bool.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_eus _stamped_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stamped_msgs_geneus)
add_dependencies(stamped_msgs_geneus stamped_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stamped_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Duration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteMultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/BoolArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/StringArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Char.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Byte.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Empty.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/CharArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBAArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/String.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/DurationArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Bool.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)
_generate_msg_lisp(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(stamped_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(stamped_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(stamped_msgs_generate_messages stamped_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Duration.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteMultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/BoolArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/StringArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Char.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Byte.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Empty.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/CharArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBAArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/DurationArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBA.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/String.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Bool.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_lisp _stamped_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stamped_msgs_genlisp)
add_dependencies(stamped_msgs_genlisp stamped_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stamped_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Duration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteMultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/BoolArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/StringArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Char.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Byte.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Empty.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/CharArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBAArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/String.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/DurationArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Bool.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)
_generate_msg_nodejs(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(stamped_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(stamped_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(stamped_msgs_generate_messages stamped_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Duration.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteMultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/BoolArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/StringArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Char.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Byte.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Empty.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/CharArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBAArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/DurationArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBA.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/String.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Bool.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_nodejs _stamped_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stamped_msgs_gennodejs)
add_dependencies(stamped_msgs_gennodejs stamped_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stamped_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Duration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteMultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/BoolArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/StringArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Char.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Byte.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Empty.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/CharArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBAArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/String.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/DurationArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Bool.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)
_generate_msg_py(stamped_msgs
  "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16MultiArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(stamped_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(stamped_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(stamped_msgs_generate_messages stamped_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Duration.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteMultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/BoolArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/StringArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Char.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float64Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Byte.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int16Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ByteArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Empty.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/CharArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Float32MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBAArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/DurationArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/ColorRGBA.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt32.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/String.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int64.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int32.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Bool.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt64MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt8Array.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/Int8.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/stamped_msgs/msg/UInt16MultiArray.msg" NAME_WE)
add_dependencies(stamped_msgs_generate_messages_py _stamped_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stamped_msgs_genpy)
add_dependencies(stamped_msgs_genpy stamped_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stamped_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stamped_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(stamped_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stamped_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(stamped_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stamped_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(stamped_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stamped_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(stamped_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stamped_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(stamped_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
