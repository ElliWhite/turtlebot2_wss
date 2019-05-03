#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/doxygen_catkin"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install/lib/python2.7/dist-packages:/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/doxygen_catkin/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/doxygen_catkin" \
    "/usr/bin/python" \
    "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/src/doxygen_catkin/setup.py" \
    build --build-base "/home/elliottwhite/turtlebot2_wss/laser_slam_ws/build/doxygen_catkin" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install" --install-scripts="/home/elliottwhite/turtlebot2_wss/laser_slam_ws/install/bin"
