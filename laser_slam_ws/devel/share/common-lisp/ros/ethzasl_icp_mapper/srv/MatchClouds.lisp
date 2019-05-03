; Auto-generated. Do not edit!


(cl:in-package ethzasl_icp_mapper-srv)


;//! \htmlinclude MatchClouds-request.msg.html

(cl:defclass <MatchClouds-request> (roslisp-msg-protocol:ros-message)
  ((reference
    :reader reference
    :initarg :reference
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (readings
    :reader readings
    :initarg :readings
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass MatchClouds-request (<MatchClouds-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MatchClouds-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MatchClouds-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethzasl_icp_mapper-srv:<MatchClouds-request> is deprecated: use ethzasl_icp_mapper-srv:MatchClouds-request instead.")))

(cl:ensure-generic-function 'reference-val :lambda-list '(m))
(cl:defmethod reference-val ((m <MatchClouds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:reference-val is deprecated.  Use ethzasl_icp_mapper-srv:reference instead.")
  (reference m))

(cl:ensure-generic-function 'readings-val :lambda-list '(m))
(cl:defmethod readings-val ((m <MatchClouds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:readings-val is deprecated.  Use ethzasl_icp_mapper-srv:readings instead.")
  (readings m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MatchClouds-request>) ostream)
  "Serializes a message object of type '<MatchClouds-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'readings) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MatchClouds-request>) istream)
  "Deserializes a message object of type '<MatchClouds-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'readings) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MatchClouds-request>)))
  "Returns string type for a service object of type '<MatchClouds-request>"
  "ethzasl_icp_mapper/MatchCloudsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MatchClouds-request)))
  "Returns string type for a service object of type 'MatchClouds-request"
  "ethzasl_icp_mapper/MatchCloudsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MatchClouds-request>)))
  "Returns md5sum for a message object of type '<MatchClouds-request>"
  "2d80ae9747b1317b7b969a4ee0f353c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MatchClouds-request)))
  "Returns md5sum for a message object of type 'MatchClouds-request"
  "2d80ae9747b1317b7b969a4ee0f353c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MatchClouds-request>)))
  "Returns full string definition for message of type '<MatchClouds-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 reference~%sensor_msgs/PointCloud2 readings~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MatchClouds-request)))
  "Returns full string definition for message of type 'MatchClouds-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 reference~%sensor_msgs/PointCloud2 readings~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MatchClouds-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'readings))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MatchClouds-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MatchClouds-request
    (cl:cons ':reference (reference msg))
    (cl:cons ':readings (readings msg))
))
;//! \htmlinclude MatchClouds-response.msg.html

(cl:defclass <MatchClouds-response> (roslisp-msg-protocol:ros-message)
  ((transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform)))
)

(cl:defclass MatchClouds-response (<MatchClouds-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MatchClouds-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MatchClouds-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethzasl_icp_mapper-srv:<MatchClouds-response> is deprecated: use ethzasl_icp_mapper-srv:MatchClouds-response instead.")))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <MatchClouds-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:transform-val is deprecated.  Use ethzasl_icp_mapper-srv:transform instead.")
  (transform m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MatchClouds-response>) ostream)
  "Serializes a message object of type '<MatchClouds-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MatchClouds-response>) istream)
  "Deserializes a message object of type '<MatchClouds-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MatchClouds-response>)))
  "Returns string type for a service object of type '<MatchClouds-response>"
  "ethzasl_icp_mapper/MatchCloudsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MatchClouds-response)))
  "Returns string type for a service object of type 'MatchClouds-response"
  "ethzasl_icp_mapper/MatchCloudsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MatchClouds-response>)))
  "Returns md5sum for a message object of type '<MatchClouds-response>"
  "2d80ae9747b1317b7b969a4ee0f353c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MatchClouds-response)))
  "Returns md5sum for a message object of type 'MatchClouds-response"
  "2d80ae9747b1317b7b969a4ee0f353c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MatchClouds-response>)))
  "Returns full string definition for message of type '<MatchClouds-response>"
  (cl:format cl:nil "geometry_msgs/Transform transform~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MatchClouds-response)))
  "Returns full string definition for message of type 'MatchClouds-response"
  (cl:format cl:nil "geometry_msgs/Transform transform~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MatchClouds-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MatchClouds-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MatchClouds-response
    (cl:cons ':transform (transform msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MatchClouds)))
  'MatchClouds-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MatchClouds)))
  'MatchClouds-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MatchClouds)))
  "Returns string type for a service object of type '<MatchClouds>"
  "ethzasl_icp_mapper/MatchClouds")