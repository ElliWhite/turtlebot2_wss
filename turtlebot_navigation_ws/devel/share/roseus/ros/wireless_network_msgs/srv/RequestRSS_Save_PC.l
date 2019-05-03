;; Auto-generated. Do not edit!


(when (boundp 'wireless_network_msgs::RequestRSS_Save_PC)
  (if (not (find-package "WIRELESS_NETWORK_MSGS"))
    (make-package "WIRELESS_NETWORK_MSGS"))
  (shadow 'RequestRSS_Save_PC (find-package "WIRELESS_NETWORK_MSGS")))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_SAVE_PC")
  (make-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_SAVE_PC"))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_SAVE_PCREQUEST")
  (make-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_SAVE_PCREQUEST"))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_SAVE_PCRESPONSE")
  (make-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_SAVE_PCRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass wireless_network_msgs::RequestRSS_Save_PCRequest
  :super ros::object
  :slots (_surveypoints ))

(defmethod wireless_network_msgs::RequestRSS_Save_PCRequest
  (:init
   (&key
    ((:surveypoints __surveypoints) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _surveypoints __surveypoints)
   self)
  (:surveypoints
   (&rest __surveypoints)
   (if (keywordp (car __surveypoints))
       (send* _surveypoints __surveypoints)
     (progn
       (if __surveypoints (setq _surveypoints (car __surveypoints)))
       _surveypoints)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _surveypoints
    (send _surveypoints :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _surveypoints
       (send _surveypoints :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _surveypoints
     (send _surveypoints :deserialize buf ptr-) (incf ptr- (send _surveypoints :serialization-length))
   ;;
   self)
  )

(defclass wireless_network_msgs::RequestRSS_Save_PCResponse
  :super ros::object
  :slots (_status ))

(defmethod wireless_network_msgs::RequestRSS_Save_PCResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass wireless_network_msgs::RequestRSS_Save_PC
  :super ros::object
  :slots ())

(setf (get wireless_network_msgs::RequestRSS_Save_PC :md5sum-) "be35b97a626a98d93d3670b842cadba3")
(setf (get wireless_network_msgs::RequestRSS_Save_PC :datatype-) "wireless_network_msgs/RequestRSS_Save_PC")
(setf (get wireless_network_msgs::RequestRSS_Save_PC :request) wireless_network_msgs::RequestRSS_Save_PCRequest)
(setf (get wireless_network_msgs::RequestRSS_Save_PC :response) wireless_network_msgs::RequestRSS_Save_PCResponse)

(defmethod wireless_network_msgs::RequestRSS_Save_PCRequest
  (:response () (instance wireless_network_msgs::RequestRSS_Save_PCResponse :init)))

(setf (get wireless_network_msgs::RequestRSS_Save_PCRequest :md5sum-) "be35b97a626a98d93d3670b842cadba3")
(setf (get wireless_network_msgs::RequestRSS_Save_PCRequest :datatype-) "wireless_network_msgs/RequestRSS_Save_PCRequest")
(setf (get wireless_network_msgs::RequestRSS_Save_PCRequest :definition-)
      "
sensor_msgs/PointCloud2 surveypoints

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

bool status


")

(setf (get wireless_network_msgs::RequestRSS_Save_PCResponse :md5sum-) "be35b97a626a98d93d3670b842cadba3")
(setf (get wireless_network_msgs::RequestRSS_Save_PCResponse :datatype-) "wireless_network_msgs/RequestRSS_Save_PCResponse")
(setf (get wireless_network_msgs::RequestRSS_Save_PCResponse :definition-)
      "
sensor_msgs/PointCloud2 surveypoints

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

bool status


")



(provide :wireless_network_msgs/RequestRSS_Save_PC "be35b97a626a98d93d3670b842cadba3")


