## *********************************************************
##
## File autogenerated for the path_planner package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 245, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 290, 'description': 'Laser frame', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'laser_frame', 'edit_method': '', 'default': '/laser', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 290, 'description': 'Global frame', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'global_frame', 'edit_method': '', 'default': '/map', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 290, 'description': 'Colorize points', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'colorize_points', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 290, 'description': 'Number of subdivisions', 'max': 128, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'num_subdivisions', 'edit_method': '', 'default': 50, 'level': 0, 'min': 4, 'type': 'int'}, {'srcline': 290, 'description': 'Near/far partitioning threshold', 'max': 15.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'radius_near', 'edit_method': '', 'default': 5.0, 'level': 0, 'min': 0.5, 'type': 'double'}, {'srcline': 290, 'description': 'Downsampling leaf size', 'max': 0.2, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'leaf_size', 'edit_method': '', 'default': 0.02, 'level': 0, 'min': 0.0005, 'type': 'double'}, {'srcline': 290, 'description': 'Outlier removal', 'max': 2, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'outlier_removal', 'edit_method': "{'enum_description': 'Outlier removal', 'enum': [{'srcline': 18, 'description': 'Don_t remove outliers', 'srcfile': '/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-loc-map-nav/path_planner/cfg/DynamicJoinPcl.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'OutlierRemoval_None'}, {'srcline': 19, 'description': 'Statistical removal', 'srcfile': '/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-loc-map-nav/path_planner/cfg/DynamicJoinPcl.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'OutlierRemoval_Statistical'}, {'srcline': 20, 'description': 'Deterministic removal', 'srcfile': '/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-loc-map-nav/path_planner/cfg/DynamicJoinPcl.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'OutlierRemoval_Deterministic'}]}", 'default': 2, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 290, 'description': 'Statistical outlier removal: mean K', 'max': 100, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'mean_k', 'edit_method': '', 'default': 50, 'level': 0, 'min': 10, 'type': 'int'}, {'srcline': 290, 'description': 'Statistical outlier removal: std.dev.', 'max': 10.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'stddev_mul_thresh', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.1, 'type': 'double'}, {'srcline': 290, 'description': 'Deterministic outlier removal: search radius', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'radius_search', 'edit_method': '', 'default': 0.1, 'level': 0, 'min': 0.01, 'type': 'double'}, {'srcline': 290, 'description': 'Deterministic outlier removal: min neighbors', 'max': 50, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'min_neighbors', 'edit_method': '', 'default': 3, 'level': 0, 'min': 2, 'type': 'int'}, {'srcline': 290, 'description': 'RANSAC distance treshold', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'ransac_distance_threshold', 'edit_method': '', 'default': 0.05, 'level': 0, 'min': 0.001, 'type': 'double'}, {'srcline': 290, 'description': 'RANSAC min. inliers', 'max': 50, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'ransac_min_inliers', 'edit_method': '', 'default': 4, 'level': 0, 'min': 3, 'type': 'int'}, {'srcline': 290, 'description': 'Bucket volume model type', 'max': 2, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'bucket_volume_model_type', 'edit_method': "{'enum_description': 'Bucket volume model type', 'enum': [{'srcline': 33, 'description': 'Minimum distance', 'srcfile': '/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-loc-map-nav/path_planner/cfg/DynamicJoinPcl.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'BucketVolumeModelType_MinimumDistance'}, {'srcline': 34, 'description': 'Maximum distance', 'srcfile': '/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-loc-map-nav/path_planner/cfg/DynamicJoinPcl.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'BucketVolumeModelType_MaximumDistance'}, {'srcline': 35, 'description': 'Single plane', 'srcfile': '/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-loc-map-nav/path_planner/cfg/DynamicJoinPcl.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'BucketVolumeModelType_SinglePlane'}]}", 'default': 2, 'level': 0, 'min': 0, 'type': 'int'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

DynamicJoinPcl_OutlierRemoval_None = 0
DynamicJoinPcl_OutlierRemoval_Statistical = 1
DynamicJoinPcl_OutlierRemoval_Deterministic = 2
DynamicJoinPcl_BucketVolumeModelType_MinimumDistance = 0
DynamicJoinPcl_BucketVolumeModelType_MaximumDistance = 1
DynamicJoinPcl_BucketVolumeModelType_SinglePlane = 2