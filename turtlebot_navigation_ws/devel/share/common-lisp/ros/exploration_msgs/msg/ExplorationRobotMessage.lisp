; Auto-generated. Do not edit!


(cl:in-package exploration_msgs-msg)


;//! \htmlinclude ExplorationRobotMessage.msg.html

(cl:defclass <ExplorationRobotMessage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:fixnum
    :initform 0)
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
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

(cl:defclass ExplorationRobotMessage (<ExplorationRobotMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExplorationRobotMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExplorationRobotMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration_msgs-msg:<ExplorationRobotMessage> is deprecated: use exploration_msgs-msg:ExplorationRobotMessage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ExplorationRobotMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:header-val is deprecated.  Use exploration_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <ExplorationRobotMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:robot_id-val is deprecated.  Use exploration_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <ExplorationRobotMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:action-val is deprecated.  Use exploration_msgs-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <ExplorationRobotMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:goal-val is deprecated.  Use exploration_msgs-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <ExplorationRobotMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:path-val is deprecated.  Use exploration_msgs-msg:path instead.")
  (path m))

(cl:ensure-generic-function 'path_cost-val :lambda-list '(m))
(cl:defmethod path_cost-val ((m <ExplorationRobotMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:path_cost-val is deprecated.  Use exploration_msgs-msg:path_cost instead.")
  (path_cost m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ExplorationRobotMessage>)))
    "Constants for message type '<ExplorationRobotMessage>"
  '((:KREACHED . 0)
    (:KPLANNED . 1)
    (:KSELECTED . 2)
    (:KABORTED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ExplorationRobotMessage)))
    "Constants for message type 'ExplorationRobotMessage"
  '((:KREACHED . 0)
    (:KPLANNED . 1)
    (:KSELECTED . 2)
    (:KABORTED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExplorationRobotMessage>) ostream)
  "Serializes a message object of type '<ExplorationRobotMessage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExplorationRobotMessage>) istream)
  "Deserializes a message object of type '<ExplorationRobotMessage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExplorationRobotMessage>)))
  "Returns string type for a message object of type '<ExplorationRobotMessage>"
  "exploration_msgs/ExplorationRobotMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExplorationRobotMessage)))
  "Returns string type for a message object of type 'ExplorationRobotMessage"
  "exploration_msgs/ExplorationRobotMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExplorationRobotMessage>)))
  "Returns md5sum for a message object of type '<ExplorationRobotMessage>"
  "2a509b66d9d7a094b27f193e7e66af9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExplorationRobotMessage)))
  "Returns md5sum for a message object of type 'ExplorationRobotMessage"
  "2a509b66d9d7a094b27f193e7e66af9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExplorationRobotMessage>)))
  "Returns full string definition for message of type '<ExplorationRobotMessage>"
  (cl:format cl:nil "uint8 kReached   = 0~%uint8 kPlanned   = 1  ~%uint8 kSelected  = 2 ~%uint8 kAborted   = 3~%~%std_msgs/Header header~%uint8 robot_id                   # robot id~%uint8 action			 # action~%geometry_msgs/Point goal         # the goal~%nav_msgs/Path path               # the computed path  ~%float64 path_cost	         # cost of the planned path: \"< 0\" means invalid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExplorationRobotMessage)))
  "Returns full string definition for message of type 'ExplorationRobotMessage"
  (cl:format cl:nil "uint8 kReached   = 0~%uint8 kPlanned   = 1  ~%uint8 kSelected  = 2 ~%uint8 kAborted   = 3~%~%std_msgs/Header header~%uint8 robot_id                   # robot id~%uint8 action			 # action~%geometry_msgs/Point goal         # the goal~%nav_msgs/Path path               # the computed path  ~%float64 path_cost	         # cost of the planned path: \"< 0\" means invalid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExplorationRobotMessage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExplorationRobotMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'ExplorationRobotMessage
    (cl:cons ':header (header msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':action (action msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':path (path msg))
    (cl:cons ':path_cost (path_cost msg))
))
