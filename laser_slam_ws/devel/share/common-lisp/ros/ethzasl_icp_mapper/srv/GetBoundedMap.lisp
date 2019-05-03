; Auto-generated. Do not edit!


(cl:in-package ethzasl_icp_mapper-srv)


;//! \htmlinclude GetBoundedMap-request.msg.html

(cl:defclass <GetBoundedMap-request> (roslisp-msg-protocol:ros-message)
  ((mapCenter
    :reader mapCenter
    :initarg :mapCenter
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (topRightCorner
    :reader topRightCorner
    :initarg :topRightCorner
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (bottomLeftCorner
    :reader bottomLeftCorner
    :initarg :bottomLeftCorner
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass GetBoundedMap-request (<GetBoundedMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBoundedMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBoundedMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethzasl_icp_mapper-srv:<GetBoundedMap-request> is deprecated: use ethzasl_icp_mapper-srv:GetBoundedMap-request instead.")))

(cl:ensure-generic-function 'mapCenter-val :lambda-list '(m))
(cl:defmethod mapCenter-val ((m <GetBoundedMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:mapCenter-val is deprecated.  Use ethzasl_icp_mapper-srv:mapCenter instead.")
  (mapCenter m))

(cl:ensure-generic-function 'topRightCorner-val :lambda-list '(m))
(cl:defmethod topRightCorner-val ((m <GetBoundedMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:topRightCorner-val is deprecated.  Use ethzasl_icp_mapper-srv:topRightCorner instead.")
  (topRightCorner m))

(cl:ensure-generic-function 'bottomLeftCorner-val :lambda-list '(m))
(cl:defmethod bottomLeftCorner-val ((m <GetBoundedMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:bottomLeftCorner-val is deprecated.  Use ethzasl_icp_mapper-srv:bottomLeftCorner instead.")
  (bottomLeftCorner m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBoundedMap-request>) ostream)
  "Serializes a message object of type '<GetBoundedMap-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mapCenter) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'topRightCorner) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bottomLeftCorner) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBoundedMap-request>) istream)
  "Deserializes a message object of type '<GetBoundedMap-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mapCenter) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'topRightCorner) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bottomLeftCorner) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBoundedMap-request>)))
  "Returns string type for a service object of type '<GetBoundedMap-request>"
  "ethzasl_icp_mapper/GetBoundedMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBoundedMap-request)))
  "Returns string type for a service object of type 'GetBoundedMap-request"
  "ethzasl_icp_mapper/GetBoundedMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBoundedMap-request>)))
  "Returns md5sum for a message object of type '<GetBoundedMap-request>"
  "b0e234493a48c4bf1205e62b5652f4e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBoundedMap-request)))
  "Returns md5sum for a message object of type 'GetBoundedMap-request"
  "b0e234493a48c4bf1205e62b5652f4e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBoundedMap-request>)))
  "Returns full string definition for message of type '<GetBoundedMap-request>"
  (cl:format cl:nil "geometry_msgs/Pose mapCenter~%geometry_msgs/Point topRightCorner~%geometry_msgs/Point bottomLeftCorner~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBoundedMap-request)))
  "Returns full string definition for message of type 'GetBoundedMap-request"
  (cl:format cl:nil "geometry_msgs/Pose mapCenter~%geometry_msgs/Point topRightCorner~%geometry_msgs/Point bottomLeftCorner~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBoundedMap-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mapCenter))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'topRightCorner))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bottomLeftCorner))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBoundedMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBoundedMap-request
    (cl:cons ':mapCenter (mapCenter msg))
    (cl:cons ':topRightCorner (topRightCorner msg))
    (cl:cons ':bottomLeftCorner (bottomLeftCorner msg))
))
;//! \htmlinclude GetBoundedMap-response.msg.html

(cl:defclass <GetBoundedMap-response> (roslisp-msg-protocol:ros-message)
  ((boundedMap
    :reader boundedMap
    :initarg :boundedMap
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass GetBoundedMap-response (<GetBoundedMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBoundedMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBoundedMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethzasl_icp_mapper-srv:<GetBoundedMap-response> is deprecated: use ethzasl_icp_mapper-srv:GetBoundedMap-response instead.")))

(cl:ensure-generic-function 'boundedMap-val :lambda-list '(m))
(cl:defmethod boundedMap-val ((m <GetBoundedMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:boundedMap-val is deprecated.  Use ethzasl_icp_mapper-srv:boundedMap instead.")
  (boundedMap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBoundedMap-response>) ostream)
  "Serializes a message object of type '<GetBoundedMap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'boundedMap) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBoundedMap-response>) istream)
  "Deserializes a message object of type '<GetBoundedMap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'boundedMap) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBoundedMap-response>)))
  "Returns string type for a service object of type '<GetBoundedMap-response>"
  "ethzasl_icp_mapper/GetBoundedMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBoundedMap-response)))
  "Returns string type for a service object of type 'GetBoundedMap-response"
  "ethzasl_icp_mapper/GetBoundedMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBoundedMap-response>)))
  "Returns md5sum for a message object of type '<GetBoundedMap-response>"
  "b0e234493a48c4bf1205e62b5652f4e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBoundedMap-response)))
  "Returns md5sum for a message object of type 'GetBoundedMap-response"
  "b0e234493a48c4bf1205e62b5652f4e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBoundedMap-response>)))
  "Returns full string definition for message of type '<GetBoundedMap-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 boundedMap~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBoundedMap-response)))
  "Returns full string definition for message of type 'GetBoundedMap-response"
  (cl:format cl:nil "sensor_msgs/PointCloud2 boundedMap~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBoundedMap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'boundedMap))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBoundedMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBoundedMap-response
    (cl:cons ':boundedMap (boundedMap msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetBoundedMap)))
  'GetBoundedMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetBoundedMap)))
  'GetBoundedMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBoundedMap)))
  "Returns string type for a service object of type '<GetBoundedMap>"
  "ethzasl_icp_mapper/GetBoundedMap")