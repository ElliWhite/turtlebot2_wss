; Auto-generated. Do not edit!


(cl:in-package wireless_network_msgs-srv)


;//! \htmlinclude RequestRSS_PC-request.msg.html

(cl:defclass <RequestRSS_PC-request> (roslisp-msg-protocol:ros-message)
  ((surveypoints
    :reader surveypoints
    :initarg :surveypoints
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (max_point_requested
    :reader max_point_requested
    :initarg :max_point_requested
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RequestRSS_PC-request (<RequestRSS_PC-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestRSS_PC-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestRSS_PC-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wireless_network_msgs-srv:<RequestRSS_PC-request> is deprecated: use wireless_network_msgs-srv:RequestRSS_PC-request instead.")))

(cl:ensure-generic-function 'surveypoints-val :lambda-list '(m))
(cl:defmethod surveypoints-val ((m <RequestRSS_PC-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-srv:surveypoints-val is deprecated.  Use wireless_network_msgs-srv:surveypoints instead.")
  (surveypoints m))

(cl:ensure-generic-function 'max_point_requested-val :lambda-list '(m))
(cl:defmethod max_point_requested-val ((m <RequestRSS_PC-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-srv:max_point_requested-val is deprecated.  Use wireless_network_msgs-srv:max_point_requested instead.")
  (max_point_requested m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestRSS_PC-request>) ostream)
  "Serializes a message object of type '<RequestRSS_PC-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'surveypoints) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'max_point_requested) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestRSS_PC-request>) istream)
  "Deserializes a message object of type '<RequestRSS_PC-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'surveypoints) istream)
    (cl:setf (cl:slot-value msg 'max_point_requested) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestRSS_PC-request>)))
  "Returns string type for a service object of type '<RequestRSS_PC-request>"
  "wireless_network_msgs/RequestRSS_PCRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestRSS_PC-request)))
  "Returns string type for a service object of type 'RequestRSS_PC-request"
  "wireless_network_msgs/RequestRSS_PCRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestRSS_PC-request>)))
  "Returns md5sum for a message object of type '<RequestRSS_PC-request>"
  "5c2bbf57008d143c633c6f0ef62d113b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestRSS_PC-request)))
  "Returns md5sum for a message object of type 'RequestRSS_PC-request"
  "5c2bbf57008d143c633c6f0ef62d113b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestRSS_PC-request>)))
  "Returns full string definition for message of type '<RequestRSS_PC-request>"
  (cl:format cl:nil "~%sensor_msgs/PointCloud2 surveypoints~%bool max_point_requested~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestRSS_PC-request)))
  "Returns full string definition for message of type 'RequestRSS_PC-request"
  (cl:format cl:nil "~%sensor_msgs/PointCloud2 surveypoints~%bool max_point_requested~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestRSS_PC-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'surveypoints))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestRSS_PC-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestRSS_PC-request
    (cl:cons ':surveypoints (surveypoints msg))
    (cl:cons ':max_point_requested (max_point_requested msg))
))
;//! \htmlinclude RequestRSS_PC-response.msg.html

(cl:defclass <RequestRSS_PC-response> (roslisp-msg-protocol:ros-message)
  ((rssi
    :reader rssi
    :initarg :rssi
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (max_point
    :reader max_point
    :initarg :max_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass RequestRSS_PC-response (<RequestRSS_PC-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestRSS_PC-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestRSS_PC-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wireless_network_msgs-srv:<RequestRSS_PC-response> is deprecated: use wireless_network_msgs-srv:RequestRSS_PC-response instead.")))

(cl:ensure-generic-function 'rssi-val :lambda-list '(m))
(cl:defmethod rssi-val ((m <RequestRSS_PC-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-srv:rssi-val is deprecated.  Use wireless_network_msgs-srv:rssi instead.")
  (rssi m))

(cl:ensure-generic-function 'max_point-val :lambda-list '(m))
(cl:defmethod max_point-val ((m <RequestRSS_PC-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-srv:max_point-val is deprecated.  Use wireless_network_msgs-srv:max_point instead.")
  (max_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestRSS_PC-response>) ostream)
  "Serializes a message object of type '<RequestRSS_PC-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rssi) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestRSS_PC-response>) istream)
  "Deserializes a message object of type '<RequestRSS_PC-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rssi) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestRSS_PC-response>)))
  "Returns string type for a service object of type '<RequestRSS_PC-response>"
  "wireless_network_msgs/RequestRSS_PCResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestRSS_PC-response)))
  "Returns string type for a service object of type 'RequestRSS_PC-response"
  "wireless_network_msgs/RequestRSS_PCResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestRSS_PC-response>)))
  "Returns md5sum for a message object of type '<RequestRSS_PC-response>"
  "5c2bbf57008d143c633c6f0ef62d113b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestRSS_PC-response)))
  "Returns md5sum for a message object of type 'RequestRSS_PC-response"
  "5c2bbf57008d143c633c6f0ef62d113b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestRSS_PC-response>)))
  "Returns full string definition for message of type '<RequestRSS_PC-response>"
  (cl:format cl:nil "~%sensor_msgs/PointCloud2 rssi~%geometry_msgs/Point max_point~%~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestRSS_PC-response)))
  "Returns full string definition for message of type 'RequestRSS_PC-response"
  (cl:format cl:nil "~%sensor_msgs/PointCloud2 rssi~%geometry_msgs/Point max_point~%~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestRSS_PC-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rssi))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestRSS_PC-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestRSS_PC-response
    (cl:cons ':rssi (rssi msg))
    (cl:cons ':max_point (max_point msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RequestRSS_PC)))
  'RequestRSS_PC-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RequestRSS_PC)))
  'RequestRSS_PC-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestRSS_PC)))
  "Returns string type for a service object of type '<RequestRSS_PC>"
  "wireless_network_msgs/RequestRSS_PC")