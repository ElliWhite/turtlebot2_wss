;; Auto-generated. Do not edit!


(when (boundp 'wireless_network_msgs::RequestRSS_PC)
  (if (not (find-package "WIRELESS_NETWORK_MSGS"))
    (make-package "WIRELESS_NETWORK_MSGS"))
  (shadow 'RequestRSS_PC (find-package "WIRELESS_NETWORK_MSGS")))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_PC")
  (make-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_PC"))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_PCREQUEST")
  (make-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_PCREQUEST"))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_PCRESPONSE")
  (make-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_PCRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass wireless_network_msgs::RequestRSS_PCRequest
  :super ros::object
  :slots (_surveypoints _max_point_requested ))

(defmethod wireless_network_msgs::RequestRSS_PCRequest
  (:init
   (&key
    ((:surveypoints __surveypoints) (instance sensor_msgs::PointCloud2 :init))
    ((:max_point_requested __max_point_requested) nil)
    )
   (send-super :init)
   (setq _surveypoints __surveypoints)
   (setq _max_point_requested __max_point_requested)
   self)
  (:surveypoints
   (&rest __surveypoints)
   (if (keywordp (car __surveypoints))
       (send* _surveypoints __surveypoints)
     (progn
       (if __surveypoints (setq _surveypoints (car __surveypoints)))
       _surveypoints)))
  (:max_point_requested
   (&optional __max_point_requested)
   (if __max_point_requested (setq _max_point_requested __max_point_requested)) _max_point_requested)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _surveypoints
    (send _surveypoints :serialization-length)
    ;; bool _max_point_requested
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _surveypoints
       (send _surveypoints :serialize s)
     ;; bool _max_point_requested
       (if _max_point_requested (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _surveypoints
     (send _surveypoints :deserialize buf ptr-) (incf ptr- (send _surveypoints :serialization-length))
   ;; bool _max_point_requested
     (setq _max_point_requested (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass wireless_network_msgs::RequestRSS_PCResponse
  :super ros::object
  :slots (_rssi _max_point ))

(defmethod wireless_network_msgs::RequestRSS_PCResponse
  (:init
   (&key
    ((:rssi __rssi) (instance sensor_msgs::PointCloud2 :init))
    ((:max_point __max_point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _rssi __rssi)
   (setq _max_point __max_point)
   self)
  (:rssi
   (&rest __rssi)
   (if (keywordp (car __rssi))
       (send* _rssi __rssi)
     (progn
       (if __rssi (setq _rssi (car __rssi)))
       _rssi)))
  (:max_point
   (&rest __max_point)
   (if (keywordp (car __max_point))
       (send* _max_point __max_point)
     (progn
       (if __max_point (setq _max_point (car __max_point)))
       _max_point)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _rssi
    (send _rssi :serialization-length)
    ;; geometry_msgs/Point _max_point
    (send _max_point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _rssi
       (send _rssi :serialize s)
     ;; geometry_msgs/Point _max_point
       (send _max_point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _rssi
     (send _rssi :deserialize buf ptr-) (incf ptr- (send _rssi :serialization-length))
   ;; geometry_msgs/Point _max_point
     (send _max_point :deserialize buf ptr-) (incf ptr- (send _max_point :serialization-length))
   ;;
   self)
  )

(defclass wireless_network_msgs::RequestRSS_PC
  :super ros::object
  :slots ())

(setf (get wireless_network_msgs::RequestRSS_PC :md5sum-) "5c2bbf57008d143c633c6f0ef62d113b")
(setf (get wireless_network_msgs::RequestRSS_PC :datatype-) "wireless_network_msgs/RequestRSS_PC")
(setf (get wireless_network_msgs::RequestRSS_PC :request) wireless_network_msgs::RequestRSS_PCRequest)
(setf (get wireless_network_msgs::RequestRSS_PC :response) wireless_network_msgs::RequestRSS_PCResponse)

(defmethod wireless_network_msgs::RequestRSS_PCRequest
  (:response () (instance wireless_network_msgs::RequestRSS_PCResponse :init)))

(setf (get wireless_network_msgs::RequestRSS_PCRequest :md5sum-) "5c2bbf57008d143c633c6f0ef62d113b")
(setf (get wireless_network_msgs::RequestRSS_PCRequest :datatype-) "wireless_network_msgs/RequestRSS_PCRequest")
(setf (get wireless_network_msgs::RequestRSS_PCRequest :definition-)
      "
sensor_msgs/PointCloud2 surveypoints
bool max_point_requested

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

sensor_msgs/PointCloud2 rssi
geometry_msgs/Point max_point



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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get wireless_network_msgs::RequestRSS_PCResponse :md5sum-) "5c2bbf57008d143c633c6f0ef62d113b")
(setf (get wireless_network_msgs::RequestRSS_PCResponse :datatype-) "wireless_network_msgs/RequestRSS_PCResponse")
(setf (get wireless_network_msgs::RequestRSS_PCResponse :definition-)
      "
sensor_msgs/PointCloud2 surveypoints
bool max_point_requested

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

sensor_msgs/PointCloud2 rssi
geometry_msgs/Point max_point



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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :wireless_network_msgs/RequestRSS_PC "5c2bbf57008d143c633c6f0ef62d113b")


