;; Auto-generated. Do not edit!


(when (boundp 'ethzasl_icp_mapper::MatchClouds)
  (if (not (find-package "ETHZASL_ICP_MAPPER"))
    (make-package "ETHZASL_ICP_MAPPER"))
  (shadow 'MatchClouds (find-package "ETHZASL_ICP_MAPPER")))
(unless (find-package "ETHZASL_ICP_MAPPER::MATCHCLOUDS")
  (make-package "ETHZASL_ICP_MAPPER::MATCHCLOUDS"))
(unless (find-package "ETHZASL_ICP_MAPPER::MATCHCLOUDSREQUEST")
  (make-package "ETHZASL_ICP_MAPPER::MATCHCLOUDSREQUEST"))
(unless (find-package "ETHZASL_ICP_MAPPER::MATCHCLOUDSRESPONSE")
  (make-package "ETHZASL_ICP_MAPPER::MATCHCLOUDSRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ethzasl_icp_mapper::MatchCloudsRequest
  :super ros::object
  :slots (_reference _readings ))

(defmethod ethzasl_icp_mapper::MatchCloudsRequest
  (:init
   (&key
    ((:reference __reference) (instance sensor_msgs::PointCloud2 :init))
    ((:readings __readings) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _reference __reference)
   (setq _readings __readings)
   self)
  (:reference
   (&rest __reference)
   (if (keywordp (car __reference))
       (send* _reference __reference)
     (progn
       (if __reference (setq _reference (car __reference)))
       _reference)))
  (:readings
   (&rest __readings)
   (if (keywordp (car __readings))
       (send* _readings __readings)
     (progn
       (if __readings (setq _readings (car __readings)))
       _readings)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _reference
    (send _reference :serialization-length)
    ;; sensor_msgs/PointCloud2 _readings
    (send _readings :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _reference
       (send _reference :serialize s)
     ;; sensor_msgs/PointCloud2 _readings
       (send _readings :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _reference
     (send _reference :deserialize buf ptr-) (incf ptr- (send _reference :serialization-length))
   ;; sensor_msgs/PointCloud2 _readings
     (send _readings :deserialize buf ptr-) (incf ptr- (send _readings :serialization-length))
   ;;
   self)
  )

(defclass ethzasl_icp_mapper::MatchCloudsResponse
  :super ros::object
  :slots (_transform ))

(defmethod ethzasl_icp_mapper::MatchCloudsResponse
  (:init
   (&key
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    )
   (send-super :init)
   (setq _transform __transform)
   self)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;;
   self)
  )

(defclass ethzasl_icp_mapper::MatchClouds
  :super ros::object
  :slots ())

(setf (get ethzasl_icp_mapper::MatchClouds :md5sum-) "2d80ae9747b1317b7b969a4ee0f353c7")
(setf (get ethzasl_icp_mapper::MatchClouds :datatype-) "ethzasl_icp_mapper/MatchClouds")
(setf (get ethzasl_icp_mapper::MatchClouds :request) ethzasl_icp_mapper::MatchCloudsRequest)
(setf (get ethzasl_icp_mapper::MatchClouds :response) ethzasl_icp_mapper::MatchCloudsResponse)

(defmethod ethzasl_icp_mapper::MatchCloudsRequest
  (:response () (instance ethzasl_icp_mapper::MatchCloudsResponse :init)))

(setf (get ethzasl_icp_mapper::MatchCloudsRequest :md5sum-) "2d80ae9747b1317b7b969a4ee0f353c7")
(setf (get ethzasl_icp_mapper::MatchCloudsRequest :datatype-) "ethzasl_icp_mapper/MatchCloudsRequest")
(setf (get ethzasl_icp_mapper::MatchCloudsRequest :definition-)
      "sensor_msgs/PointCloud2 reference
sensor_msgs/PointCloud2 readings

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
---
geometry_msgs/Transform transform


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

(setf (get ethzasl_icp_mapper::MatchCloudsResponse :md5sum-) "2d80ae9747b1317b7b969a4ee0f353c7")
(setf (get ethzasl_icp_mapper::MatchCloudsResponse :datatype-) "ethzasl_icp_mapper/MatchCloudsResponse")
(setf (get ethzasl_icp_mapper::MatchCloudsResponse :definition-)
      "sensor_msgs/PointCloud2 reference
sensor_msgs/PointCloud2 readings

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
---
geometry_msgs/Transform transform


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



(provide :ethzasl_icp_mapper/MatchClouds "2d80ae9747b1317b7b969a4ee0f353c7")


