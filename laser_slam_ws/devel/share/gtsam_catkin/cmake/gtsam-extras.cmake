find_package(GTSAM REQUIRED)

if( TARGET gtsam_unstable)
    set( gtsam_catkin_LIBRARIES gtsam gtsam_unstable )
else()
    set( gtsam_catkin_LIBRARIES gtsam )
endif()
