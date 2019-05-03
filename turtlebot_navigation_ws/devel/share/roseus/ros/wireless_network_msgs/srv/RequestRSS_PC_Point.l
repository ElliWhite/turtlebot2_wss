;; Auto-generated. Do not edit!


(when (boundp 'wireless_network_msgs::RequestRSS_PC_Point)
  (if (not (find-package "WIRELESS_NETWORK_MSGS"))
    (make-package "WIRELESS_NETWORK_MSGS"))
  (shadow 'RequestRSS_PC_Point (find-package "WIRELESS_NETWORK_MSGS")))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_PC_POINT")
  (make-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_PC_POINT"))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_PC_POINTREQUEST")
  (make-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_PC_POINTREQUEST"))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_PC_POINTRESPONSE")
  (make-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_PC_POINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass wireless_network_msgs::RequestRSS_PC_PointRequest
  :super ros::object
  :slots (_surveypoints _simulated ))

(defmethod wireless_network_msgs::RequestRSS_PC_PointRequest
  (:init
   (&key
    ((:surveypoints __surveypoints) (instance sensor_msgs::PointCloud2 :init))
    ((:simulated __simulated) nil)
    )
   (send-super :init)
   (setq _surveypoints __surveypoints)
   (setq _simulated __simulated)
   self)
  (:surveypoints
   (&rest __surveypoints)
   (if (keywordp (car __surveypoints))
       (send* _surveypoints __surveypoints)
     (progn
       (if __surveypoints (setq _surveypoints (car __surveypoints)))
       _surveypoints)))
  (:simulated
   (&optional __simulated)
   (if __simulated (setq _simulated __simulated)) _simulated)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _surveypoints
    (send _surveypoints :serialization-length)
    ;; bool _simulated
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _surveypoints
       (send _surveypoints :serialize s)
     ;; bool _simulated
       (if _simulated (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _surveypoints
     (send _surveypoints :deserialize buf ptr-) (incf ptr- (send _surveypoints :serialization-length))
   ;; bool _simulated
     (setq _simulated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass wireless_network_msgs::RequestRSS_PC_PointResponse
  :super ros::object
  :slots (_bestpointrssi ))

(defmethod wireless_network_msgs::RequestRSS_PC_PointResponse
  (:init
   (&key
    ((:bestpointrssi __bestpointrssi) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _bestpointrssi __bestpointrssi)
   self)
  (:bestpointrssi
   (&rest __bestpointrssi)
   (if (keywordp (car __bestpointrssi))
       (send* _bestpointrssi __bestpointrssi)
     (progn
       (if __bestpointrssi (setq _bestpointrssi (car __bestpointrssi)))
       _bestpointrssi)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _bestpointrssi
    (send _bestpointrssi :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _bestpointrssi
       (send _bestpointrssi :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _bestpointrssi
     (send _bestpointrssi :deserialize buf ptr-) (incf ptr- (send _bestpointrssi :serialization-length))
   ;;
   self)
  )

(defclass wireless_network_msgs::RequestRSS_PC_Point
  :super ros::object
  :slots ())

(setf (get wireless_network_msgs::RequestRSS_PC_Point :md5sum-) "c2b2aa1a5c63edd72f88325c073d2e78")
(setf (get wireless_network_msgs::RequestRSS_PC_Point :datatype-) "wireless_network_msgs/RequestRSS_PC_Point")
(setf (get wireless_network_msgs::RequestRSS_PC_Point :request) wireless_network_msgs::RequestRSS_PC_PointRequest)
(setf (get wireless_network_msgs::RequestRSS_PC_Point :response) wireless_network_msgs::RequestRSS_PC_PointResponse)

(defmethod wireless_network_msgs::RequestRSS_PC_PointRequest
  (:response () (instance wireless_network_msgs::RequestRSS_PC_PointResponse :init)))

(setf (get wireless_network_msgs::RequestRSS_PC_PointRequest :md5sum-) "c2b2aa1a5c63edd72f88325c073d2e78")
(setf (get wireless_network_msgs::RequestRSS_PC_PointRequest :datatype-) "wireless_network_msgs/RequestRSS_PC_PointRequest")
(setf (get wireless_network_msgs::RequestRSS_PC_PointRequest :definition-)
      "
sensor_msgs/PointCloud2 surveypoints
bool simulated

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

geometry_msgs/Point bestpointrssi



================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get wireless_network_msgs::RequestRSS_PC_PointResponse :md5sum-) "c2b2aa1a5c63edd72f88325c073d2e78")
(setf (get wireless_network_msgs::RequestRSS_PC_PointResponse :datatype-) "wireless_network_msgs/RequestRSS_PC_PointResponse")
(setf (get wireless_network_msgs::RequestRSS_PC_PointResponse :definition-)
      "
sensor_msgs/PointCloud2 surveypoints
bool simulated

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

geometry_msgs/Point bestpointrssi



================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :wireless_network_msgs/RequestRSS_PC_Point "c2b2aa1a5c63edd72f88325c073d2e78")


