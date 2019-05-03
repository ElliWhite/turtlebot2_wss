;; Auto-generated. Do not edit!


(when (boundp 'ethzasl_icp_mapper::GetBoundedMap)
  (if (not (find-package "ETHZASL_ICP_MAPPER"))
    (make-package "ETHZASL_ICP_MAPPER"))
  (shadow 'GetBoundedMap (find-package "ETHZASL_ICP_MAPPER")))
(unless (find-package "ETHZASL_ICP_MAPPER::GETBOUNDEDMAP")
  (make-package "ETHZASL_ICP_MAPPER::GETBOUNDEDMAP"))
(unless (find-package "ETHZASL_ICP_MAPPER::GETBOUNDEDMAPREQUEST")
  (make-package "ETHZASL_ICP_MAPPER::GETBOUNDEDMAPREQUEST"))
(unless (find-package "ETHZASL_ICP_MAPPER::GETBOUNDEDMAPRESPONSE")
  (make-package "ETHZASL_ICP_MAPPER::GETBOUNDEDMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass ethzasl_icp_mapper::GetBoundedMapRequest
  :super ros::object
  :slots (_mapCenter _topRightCorner _bottomLeftCorner ))

(defmethod ethzasl_icp_mapper::GetBoundedMapRequest
  (:init
   (&key
    ((:mapCenter __mapCenter) (instance geometry_msgs::Pose :init))
    ((:topRightCorner __topRightCorner) (instance geometry_msgs::Point :init))
    ((:bottomLeftCorner __bottomLeftCorner) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _mapCenter __mapCenter)
   (setq _topRightCorner __topRightCorner)
   (setq _bottomLeftCorner __bottomLeftCorner)
   self)
  (:mapCenter
   (&rest __mapCenter)
   (if (keywordp (car __mapCenter))
       (send* _mapCenter __mapCenter)
     (progn
       (if __mapCenter (setq _mapCenter (car __mapCenter)))
       _mapCenter)))
  (:topRightCorner
   (&rest __topRightCorner)
   (if (keywordp (car __topRightCorner))
       (send* _topRightCorner __topRightCorner)
     (progn
       (if __topRightCorner (setq _topRightCorner (car __topRightCorner)))
       _topRightCorner)))
  (:bottomLeftCorner
   (&rest __bottomLeftCorner)
   (if (keywordp (car __bottomLeftCorner))
       (send* _bottomLeftCorner __bottomLeftCorner)
     (progn
       (if __bottomLeftCorner (setq _bottomLeftCorner (car __bottomLeftCorner)))
       _bottomLeftCorner)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _mapCenter
    (send _mapCenter :serialization-length)
    ;; geometry_msgs/Point _topRightCorner
    (send _topRightCorner :serialization-length)
    ;; geometry_msgs/Point _bottomLeftCorner
    (send _bottomLeftCorner :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _mapCenter
       (send _mapCenter :serialize s)
     ;; geometry_msgs/Point _topRightCorner
       (send _topRightCorner :serialize s)
     ;; geometry_msgs/Point _bottomLeftCorner
       (send _bottomLeftCorner :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _mapCenter
     (send _mapCenter :deserialize buf ptr-) (incf ptr- (send _mapCenter :serialization-length))
   ;; geometry_msgs/Point _topRightCorner
     (send _topRightCorner :deserialize buf ptr-) (incf ptr- (send _topRightCorner :serialization-length))
   ;; geometry_msgs/Point _bottomLeftCorner
     (send _bottomLeftCorner :deserialize buf ptr-) (incf ptr- (send _bottomLeftCorner :serialization-length))
   ;;
   self)
  )

(defclass ethzasl_icp_mapper::GetBoundedMapResponse
  :super ros::object
  :slots (_boundedMap ))

(defmethod ethzasl_icp_mapper::GetBoundedMapResponse
  (:init
   (&key
    ((:boundedMap __boundedMap) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _boundedMap __boundedMap)
   self)
  (:boundedMap
   (&rest __boundedMap)
   (if (keywordp (car __boundedMap))
       (send* _boundedMap __boundedMap)
     (progn
       (if __boundedMap (setq _boundedMap (car __boundedMap)))
       _boundedMap)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _boundedMap
    (send _boundedMap :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _boundedMap
       (send _boundedMap :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _boundedMap
     (send _boundedMap :deserialize buf ptr-) (incf ptr- (send _boundedMap :serialization-length))
   ;;
   self)
  )

(defclass ethzasl_icp_mapper::GetBoundedMap
  :super ros::object
  :slots ())

(setf (get ethzasl_icp_mapper::GetBoundedMap :md5sum-) "b0e234493a48c4bf1205e62b5652f4e1")
(setf (get ethzasl_icp_mapper::GetBoundedMap :datatype-) "ethzasl_icp_mapper/GetBoundedMap")
(setf (get ethzasl_icp_mapper::GetBoundedMap :request) ethzasl_icp_mapper::GetBoundedMapRequest)
(setf (get ethzasl_icp_mapper::GetBoundedMap :response) ethzasl_icp_mapper::GetBoundedMapResponse)

(defmethod ethzasl_icp_mapper::GetBoundedMapRequest
  (:response () (instance ethzasl_icp_mapper::GetBoundedMapResponse :init)))

(setf (get ethzasl_icp_mapper::GetBoundedMapRequest :md5sum-) "b0e234493a48c4bf1205e62b5652f4e1")
(setf (get ethzasl_icp_mapper::GetBoundedMapRequest :datatype-) "ethzasl_icp_mapper/GetBoundedMapRequest")
(setf (get ethzasl_icp_mapper::GetBoundedMapRequest :definition-)
      "geometry_msgs/Pose mapCenter
geometry_msgs/Point topRightCorner
geometry_msgs/Point bottomLeftCorner

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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
---
sensor_msgs/PointCloud2 boundedMap


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
")

(setf (get ethzasl_icp_mapper::GetBoundedMapResponse :md5sum-) "b0e234493a48c4bf1205e62b5652f4e1")
(setf (get ethzasl_icp_mapper::GetBoundedMapResponse :datatype-) "ethzasl_icp_mapper/GetBoundedMapResponse")
(setf (get ethzasl_icp_mapper::GetBoundedMapResponse :definition-)
      "geometry_msgs/Pose mapCenter
geometry_msgs/Point topRightCorner
geometry_msgs/Point bottomLeftCorner

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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
---
sensor_msgs/PointCloud2 boundedMap


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
")



(provide :ethzasl_icp_mapper/GetBoundedMap "b0e234493a48c4bf1205e62b5652f4e1")


