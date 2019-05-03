; Auto-generated. Do not edit!


(cl:in-package wireless_network_msgs-srv)


;//! \htmlinclude RequestRSS_PC_Point-request.msg.html

(cl:defclass <RequestRSS_PC_Point-request> (roslisp-msg-protocol:ros-message)
  ((surveypoints
    :reader surveypoints
    :initarg :surveypoints
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (simulated
    :reader simulated
    :initarg :simulated
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RequestRSS_PC_Point-request (<RequestRSS_PC_Point-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestRSS_PC_Point-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestRSS_PC_Point-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wireless_network_msgs-srv:<RequestRSS_PC_Point-request> is deprecated: use wireless_network_msgs-srv:RequestRSS_PC_Point-request instead.")))

(cl:ensure-generic-function 'surveypoints-val :lambda-list '(m))
(cl:defmethod surveypoints-val ((m <RequestRSS_PC_Point-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-srv:surveypoints-val is deprecated.  Use wireless_network_msgs-srv:surveypoints instead.")
  (surveypoints m))

(cl:ensure-generic-function 'simulated-val :lambda-list '(m))
(cl:defmethod simulated-val ((m <RequestRSS_PC_Point-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-srv:simulated-val is deprecated.  Use wireless_network_msgs-srv:simulated instead.")
  (simulated m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestRSS_PC_Point-request>) ostream)
  "Serializes a message object of type '<RequestRSS_PC_Point-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'surveypoints) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'simulated) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestRSS_PC_Point-request>) istream)
  "Deserializes a message object of type '<RequestRSS_PC_Point-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'surveypoints) istream)
    (cl:setf (cl:slot-value msg 'simulated) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestRSS_PC_Point-request>)))
  "Returns string type for a service object of type '<RequestRSS_PC_Point-request>"
  "wireless_network_msgs/RequestRSS_PC_PointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestRSS_PC_Point-request)))
  "Returns string type for a service object of type 'RequestRSS_PC_Point-request"
  "wireless_network_msgs/RequestRSS_PC_PointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestRSS_PC_Point-request>)))
  "Returns md5sum for a message object of type '<RequestRSS_PC_Point-request>"
  "c2b2aa1a5c63edd72f88325c073d2e78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestRSS_PC_Point-request)))
  "Returns md5sum for a message object of type 'RequestRSS_PC_Point-request"
  "c2b2aa1a5c63edd72f88325c073d2e78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestRSS_PC_Point-request>)))
  "Returns full string definition for message of type '<RequestRSS_PC_Point-request>"
  (cl:format cl:nil "~%sensor_msgs/PointCloud2 surveypoints~%bool simulated~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestRSS_PC_Point-request)))
  "Returns full string definition for message of type 'RequestRSS_PC_Point-request"
  (cl:format cl:nil "~%sensor_msgs/PointCloud2 surveypoints~%bool simulated~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestRSS_PC_Point-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'surveypoints))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestRSS_PC_Point-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestRSS_PC_Point-request
    (cl:cons ':surveypoints (surveypoints msg))
    (cl:cons ':simulated (simulated msg))
))
;//! \htmlinclude RequestRSS_PC_Point-response.msg.html

(cl:defclass <RequestRSS_PC_Point-response> (roslisp-msg-protocol:ros-message)
  ((bestpointrssi
    :reader bestpointrssi
    :initarg :bestpointrssi
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass RequestRSS_PC_Point-response (<RequestRSS_PC_Point-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestRSS_PC_Point-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestRSS_PC_Point-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wireless_network_msgs-srv:<RequestRSS_PC_Point-response> is deprecated: use wireless_network_msgs-srv:RequestRSS_PC_Point-response instead.")))

(cl:ensure-generic-function 'bestpointrssi-val :lambda-list '(m))
(cl:defmethod bestpointrssi-val ((m <RequestRSS_PC_Point-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-srv:bestpointrssi-val is deprecated.  Use wireless_network_msgs-srv:bestpointrssi instead.")
  (bestpointrssi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestRSS_PC_Point-response>) ostream)
  "Serializes a message object of type '<RequestRSS_PC_Point-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bestpointrssi) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestRSS_PC_Point-response>) istream)
  "Deserializes a message object of type '<RequestRSS_PC_Point-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bestpointrssi) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestRSS_PC_Point-response>)))
  "Returns string type for a service object of type '<RequestRSS_PC_Point-response>"
  "wireless_network_msgs/RequestRSS_PC_PointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestRSS_PC_Point-response)))
  "Returns string type for a service object of type 'RequestRSS_PC_Point-response"
  "wireless_network_msgs/RequestRSS_PC_PointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestRSS_PC_Point-response>)))
  "Returns md5sum for a message object of type '<RequestRSS_PC_Point-response>"
  "c2b2aa1a5c63edd72f88325c073d2e78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestRSS_PC_Point-response)))
  "Returns md5sum for a message object of type 'RequestRSS_PC_Point-response"
  "c2b2aa1a5c63edd72f88325c073d2e78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestRSS_PC_Point-response>)))
  "Returns full string definition for message of type '<RequestRSS_PC_Point-response>"
  (cl:format cl:nil "~%geometry_msgs/Point bestpointrssi~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestRSS_PC_Point-response)))
  "Returns full string definition for message of type 'RequestRSS_PC_Point-response"
  (cl:format cl:nil "~%geometry_msgs/Point bestpointrssi~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestRSS_PC_Point-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bestpointrssi))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestRSS_PC_Point-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestRSS_PC_Point-response
    (cl:cons ':bestpointrssi (bestpointrssi msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RequestRSS_PC_Point)))
  'RequestRSS_PC_Point-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RequestRSS_PC_Point)))
  'RequestRSS_PC_Point-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestRSS_PC_Point)))
  "Returns string type for a service object of type '<RequestRSS_PC_Point>"
  "wireless_network_msgs/RequestRSS_PC_Point")