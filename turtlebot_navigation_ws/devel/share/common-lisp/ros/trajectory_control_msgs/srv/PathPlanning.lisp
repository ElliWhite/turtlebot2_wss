; Auto-generated. Do not edit!


(cl:in-package trajectory_control_msgs-srv)


;//! \htmlinclude PathPlanning-request.msg.html

(cl:defclass <PathPlanning-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass PathPlanning-request (<PathPlanning-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathPlanning-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathPlanning-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_control_msgs-srv:<PathPlanning-request> is deprecated: use trajectory_control_msgs-srv:PathPlanning-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <PathPlanning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-srv:start-val is deprecated.  Use trajectory_control_msgs-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <PathPlanning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-srv:goal-val is deprecated.  Use trajectory_control_msgs-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathPlanning-request>) ostream)
  "Serializes a message object of type '<PathPlanning-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathPlanning-request>) istream)
  "Deserializes a message object of type '<PathPlanning-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathPlanning-request>)))
  "Returns string type for a service object of type '<PathPlanning-request>"
  "trajectory_control_msgs/PathPlanningRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathPlanning-request)))
  "Returns string type for a service object of type 'PathPlanning-request"
  "trajectory_control_msgs/PathPlanningRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathPlanning-request>)))
  "Returns md5sum for a message object of type '<PathPlanning-request>"
  "249cbd5d21a9bf348c5b7b36bffd0e9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathPlanning-request)))
  "Returns md5sum for a message object of type 'PathPlanning-request"
  "249cbd5d21a9bf348c5b7b36bffd0e9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathPlanning-request>)))
  "Returns full string definition for message of type '<PathPlanning-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped start~%geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathPlanning-request)))
  "Returns full string definition for message of type 'PathPlanning-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped start~%geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathPlanning-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathPlanning-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PathPlanning-request
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude PathPlanning-response.msg.html

(cl:defclass <PathPlanning-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (path_cost
    :reader path_cost
    :initarg :path_cost
    :type cl:float
    :initform 0.0))
)

(cl:defclass PathPlanning-response (<PathPlanning-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathPlanning-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathPlanning-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_control_msgs-srv:<PathPlanning-response> is deprecated: use trajectory_control_msgs-srv:PathPlanning-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PathPlanning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-srv:success-val is deprecated.  Use trajectory_control_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <PathPlanning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-srv:path-val is deprecated.  Use trajectory_control_msgs-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'path_cost-val :lambda-list '(m))
(cl:defmethod path_cost-val ((m <PathPlanning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-srv:path_cost-val is deprecated.  Use trajectory_control_msgs-srv:path_cost instead.")
  (path_cost m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathPlanning-response>) ostream)
  "Serializes a message object of type '<PathPlanning-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'path_cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathPlanning-response>) istream)
  "Deserializes a message object of type '<PathPlanning-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'path_cost) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathPlanning-response>)))
  "Returns string type for a service object of type '<PathPlanning-response>"
  "trajectory_control_msgs/PathPlanningResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathPlanning-response)))
  "Returns string type for a service object of type 'PathPlanning-response"
  "trajectory_control_msgs/PathPlanningResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathPlanning-response>)))
  "Returns md5sum for a message object of type '<PathPlanning-response>"
  "249cbd5d21a9bf348c5b7b36bffd0e9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathPlanning-response)))
  "Returns md5sum for a message object of type 'PathPlanning-response"
  "249cbd5d21a9bf348c5b7b36bffd0e9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathPlanning-response>)))
  "Returns full string definition for message of type '<PathPlanning-response>"
  (cl:format cl:nil "bool success~%nav_msgs/Path path~%float64 path_cost~%~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathPlanning-response)))
  "Returns full string definition for message of type 'PathPlanning-response"
  (cl:format cl:nil "bool success~%nav_msgs/Path path~%float64 path_cost~%~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathPlanning-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathPlanning-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PathPlanning-response
    (cl:cons ':success (success msg))
    (cl:cons ':path (path msg))
    (cl:cons ':path_cost (path_cost msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PathPlanning)))
  'PathPlanning-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PathPlanning)))
  'PathPlanning-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathPlanning)))
  "Returns string type for a service object of type '<PathPlanning>"
  "trajectory_control_msgs/PathPlanning")