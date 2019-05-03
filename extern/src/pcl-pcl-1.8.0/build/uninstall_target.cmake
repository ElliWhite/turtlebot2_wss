if(NOT EXISTS "/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/install_manifest.txt")
    message(FATAL_ERROR "Cannot find install manifest: \"/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/install_manifest.txt\"")
endif(NOT EXISTS "/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/install_manifest.txt")

file(READ "/home/elliottwhite/turtlebot2_wss/extern/src/pcl-pcl-1.8.0/build/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")
foreach(file ${files})
    message(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
    if(EXISTS "$ENV{DESTDIR}${file}" OR IS_SYMLINK "$ENV{DESTDIR}${file}")
        exec_program("/usr/bin/cmake" ARGS "-E remove \"$ENV{DESTDIR}${file}\""
            OUTPUT_VARIABLE rm_out RETURN_VALUE rm_retval)
        if(NOT "${rm_retval}" STREQUAL 0)
            message(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
        endif(NOT "${rm_retval}" STREQUAL 0)
    else(EXISTS "$ENV{DESTDIR}${file}" OR IS_SYMLINK "$ENV{DESTDIR}${file}")
        message(STATUS "File \"$ENV{DESTDIR}${file}\" does not exist.")
    endif(EXISTS "$ENV{DESTDIR}${file}" OR IS_SYMLINK "$ENV{DESTDIR}${file}")
endforeach(file)

# remove pcl directory in include (removes all files in it!)
message(STATUS "Uninstalling \"/usr/local/include/pcl-1.8\"")
if(EXISTS "/usr/local/include/pcl-1.8")
    exec_program("/usr/bin/cmake"
        ARGS "-E remove_directory \"/usr/local/include/pcl-1.8\""
        OUTPUT_VARIABLE rm_out RETURN_VALUE rm_retval)
    if(NOT "${rm_retval}" STREQUAL 0)
        message(FATAL_ERROR
            "Problem when removing \"/usr/local/include/pcl-1.8\"")
    endif(NOT "${rm_retval}" STREQUAL 0)
else(EXISTS "/usr/local/include/pcl-1.8")
    message(STATUS
        "Directory \"/usr/local/include/pcl-1.8\" does not exist.")
endif(EXISTS "/usr/local/include/pcl-1.8")

# remove pcl directory in share (removes all files in it!)
# created by CMakeLists.txt for PCLConfig.cmake
message(STATUS "Uninstalling \"/usr/local/share/pcl-1.8\"")
if(EXISTS "/usr/local/share/pcl-1.8")
    exec_program("/usr/bin/cmake"
        ARGS "-E remove_directory \"/usr/local/share/pcl-1.8\""
        OUTPUT_VARIABLE rm_out RETURN_VALUE rm_retval)
    if(NOT "${rm_retval}" STREQUAL 0)
        message(FATAL_ERROR
            "Problem when removing \"/usr/local/share/pcl-1.8\"")
    endif(NOT "${rm_retval}" STREQUAL 0)
else(EXISTS "/usr/local/share/pcl-1.8")
    message(STATUS
        "Directory \"/usr/local/share/pcl-1.8\" does not exist.")
endif(EXISTS "/usr/local/share/pcl-1.8")

# remove pcl directory in share/doc (removes all files in it!)
if(OFF)
  message(STATUS "Uninstalling \"/usr/local/share/doc/pcl-1.8\"")
  if(EXISTS "/usr/local/share/doc/pcl-1.8")
      exec_program("/usr/bin/cmake"
          ARGS "-E remove_directory \"/usr/local/share/doc/pcl-1.8\""
          OUTPUT_VARIABLE rm_out RETURN_VALUE rm_retval)
      if(NOT "${rm_retval}" STREQUAL 0)
          message(FATAL_ERROR
              "Problem when removing \"/usr/local/share/doc/pcl-1.8\"")
      endif(NOT "${rm_retval}" STREQUAL 0)
  else(EXISTS "/usr/local/share/doc/pcl-1.8")
      message(STATUS
          "Directory \"/usr/local/share/doc/pcl-1.8\" does not exist.")
  endif(EXISTS "/usr/local/share/doc/pcl-1.8")
endif()
