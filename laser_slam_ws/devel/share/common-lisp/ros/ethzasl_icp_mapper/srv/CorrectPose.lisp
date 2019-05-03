; Auto-generated. Do not edit!


(cl:in-package ethzasl_icp_mapper-srv)


;//! \htmlinclude CorrectPose-request.msg.html

(cl:defclass <CorrectPose-request> (roslisp-msg-protocol:ros-message)
  ((odom
    :reader odom
    :initarg :odom
    :type nav_msgs-msg:Odometry
    :initform (cl:make-instance 'nav_msgs-msg:Odometry)))
)

(cl:defclass CorrectPose-request (<CorrectPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CorrectPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CorrectPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethzasl_icp_mapper-srv:<CorrectPose-request> is deprecated: use ethzasl_icp_mapper-srv:CorrectPose-request instead.")))

(cl:ensure-generic-function 'odom-val :lambda-list '(m))
(cl:defmethod odom-val ((m <CorrectPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:odom-val is deprecated.  Use ethzasl_icp_mapper-srv:odom instead.")
  (odom m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CorrectPose-request>) ostream)
  "Serializes a message object of type '<CorrectPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'odom) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CorrectPose-request>) istream)
  "Deserializes a message object of type '<CorrectPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'odom) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CorrectPose-request>)))
  "Returns string type for a service object of type '<CorrectPose-request>"
  "ethzasl_icp_mapper/CorrectPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CorrectPose-request)))
  "Returns string type for a service object of type 'CorrectPose-request"
  "ethzasl_icp_mapper/CorrectPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CorrectPose-request>)))
  "Returns md5sum for a message object of type '<CorrectPose-request>"
  "75d9701e058ed9a7608ba3dbc16b5b7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CorrectPose-request)))
  "Returns md5sum for a message object of type 'CorrectPose-request"
  "75d9701e058ed9a7608ba3dbc16b5b7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CorrectPose-request>)))
  "Returns full string definition for message of type '<CorrectPose-request>"
  (cl:format cl:nil "nav_msgs/Odometry odom~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CorrectPose-request)))
  "Returns full string definition for message of type 'CorrectPose-request"
  (cl:format cl:nil "nav_msgs/Odometry odom~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CorrectPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'odom))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CorrectPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CorrectPose-request
    (cl:cons ':odom (odom msg))
))
;//! \htmlinclude CorrectPose-response.msg.html

(cl:defclass <CorrectPose-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CorrectPose-response (<CorrectPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CorrectPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CorrectPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethzasl_icp_mapper-srv:<CorrectPose-response> is deprecated: use ethzasl_icp_mapper-srv:CorrectPose-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CorrectPose-response>) ostream)
  "Serializes a message object of type '<CorrectPose-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CorrectPose-response>) istream)
  "Deserializes a message object of type '<CorrectPose-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CorrectPose-response>)))
  "Returns string type for a service object of type '<CorrectPose-response>"
  "ethzasl_icp_mapper/CorrectPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CorrectPose-response)))
  "Returns string type for a service object of type 'CorrectPose-response"
  "ethzasl_icp_mapper/CorrectPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CorrectPose-response>)))
  "Returns md5sum for a message object of type '<CorrectPose-response>"
  "75d9701e058ed9a7608ba3dbc16b5b7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CorrectPose-response)))
  "Returns md5sum for a message object of type 'CorrectPose-response"
  "75d9701e058ed9a7608ba3dbc16b5b7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CorrectPose-response>)))
  "Returns full string definition for message of type '<CorrectPose-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CorrectPose-response)))
  "Returns full string definition for message of type 'CorrectPose-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CorrectPose-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CorrectPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CorrectPose-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CorrectPose)))
  'CorrectPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CorrectPose)))
  'CorrectPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CorrectPose)))
  "Returns string type for a service object of type '<CorrectPose>"
  "ethzasl_icp_mapper/CorrectPose")