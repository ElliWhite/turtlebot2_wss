;; Auto-generated. Do not edit!


(when (boundp 'laser_mapper::GetLaserTrackSrv)
  (if (not (find-package "LASER_MAPPER"))
    (make-package "LASER_MAPPER"))
  (shadow 'GetLaserTrackSrv (find-package "LASER_MAPPER")))
(unless (find-package "LASER_MAPPER::GETLASERTRACKSRV")
  (make-package "LASER_MAPPER::GETLASERTRACKSRV"))
(unless (find-package "LASER_MAPPER::GETLASERTRACKSRVREQUEST")
  (make-package "LASER_MAPPER::GETLASERTRACKSRVREQUEST"))
(unless (find-package "LASER_MAPPER::GETLASERTRACKSRVRESPONSE")
  (make-package "LASER_MAPPER::GETLASERTRACKSRVRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass laser_mapper::GetLaserTrackSrvRequest
  :super ros::object
  :slots ())

(defmethod laser_mapper::GetLaserTrackSrvRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass laser_mapper::GetLaserTrackSrvResponse
  :super ros::object
  :slots (_laser_scans _transforms ))

(defmethod laser_mapper::GetLaserTrackSrvResponse
  (:init
   (&key
    ((:laser_scans __laser_scans) (let (r) (dotimes (i 0) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
    ((:transforms __transforms) (let (r) (dotimes (i 0) (push (instance geometry_msgs::TransformStamped :init) r)) r))
    )
   (send-super :init)
   (setq _laser_scans __laser_scans)
   (setq _transforms __transforms)
   self)
  (:laser_scans
   (&rest __laser_scans)
   (if (keywordp (car __laser_scans))
       (send* _laser_scans __laser_scans)
     (progn
       (if __laser_scans (setq _laser_scans (car __laser_scans)))
       _laser_scans)))
  (:transforms
   (&rest __transforms)
   (if (keywordp (car __transforms))
       (send* _transforms __transforms)
     (progn
       (if __transforms (setq _transforms (car __transforms)))
       _transforms)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2[] _laser_scans
    (apply #'+ (send-all _laser_scans :serialization-length)) 4
    ;; geometry_msgs/TransformStamped[] _transforms
    (apply #'+ (send-all _transforms :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2[] _laser_scans
     (write-long (length _laser_scans) s)
     (dolist (elem _laser_scans)
       (send elem :serialize s)
       )
     ;; geometry_msgs/TransformStamped[] _transforms
     (write-long (length _transforms) s)
     (dolist (elem _transforms)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2[] _laser_scans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _laser_scans (let (r) (dotimes (i n) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
     (dolist (elem- _laser_scans)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/TransformStamped[] _transforms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transforms (let (r) (dotimes (i n) (push (instance geometry_msgs::TransformStamped :init) r)) r))
     (dolist (elem- _transforms)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass laser_mapper::GetLaserTrackSrv
  :super ros::object
  :slots ())

(setf (get laser_mapper::GetLaserTrackSrv :md5sum-) "f8c9b713ee42e20fb731eb3adffef133")
(setf (get laser_mapper::GetLaserTrackSrv :datatype-) "laser_mapper/GetLaserTrackSrv")
(setf (get laser_mapper::GetLaserTrackSrv :request) laser_mapper::GetLaserTrackSrvRequest)
(setf (get laser_mapper::GetLaserTrackSrv :response) laser_mapper::GetLaserTrackSrvResponse)

(defmethod laser_mapper::GetLaserTrackSrvRequest
  (:response () (instance laser_mapper::GetLaserTrackSrvResponse :init)))

(setf (get laser_mapper::GetLaserTrackSrvRequest :md5sum-) "f8c9b713ee42e20fb731eb3adffef133")
(setf (get laser_mapper::GetLaserTrackSrvRequest :datatype-) "laser_mapper/GetLaserTrackSrvRequest")
(setf (get laser_mapper::GetLaserTrackSrvRequest :definition-)
      "---

sensor_msgs/PointCloud2[] laser_scans

geometry_msgs/TransformStamped[] transforms

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get laser_mapper::GetLaserTrackSrvResponse :md5sum-) "f8c9b713ee42e20fb731eb3adffef133")
(setf (get laser_mapper::GetLaserTrackSrvResponse :datatype-) "laser_mapper/GetLaserTrackSrvResponse")
(setf (get laser_mapper::GetLaserTrackSrvResponse :definition-)
      "---

sensor_msgs/PointCloud2[] laser_scans

geometry_msgs/TransformStamped[] transforms

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :laser_mapper/GetLaserTrackSrv "f8c9b713ee42e20fb731eb3adffef133")


