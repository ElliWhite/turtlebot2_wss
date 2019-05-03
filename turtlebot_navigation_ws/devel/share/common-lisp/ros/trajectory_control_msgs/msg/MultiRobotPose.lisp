; Auto-generated. Do not edit!


(cl:in-package trajectory_control_msgs-msg)


;//! \htmlinclude MultiRobotPose.msg.html

(cl:defclass <MultiRobotPose> (roslisp-msg-protocol:ros-message)
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
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass MultiRobotPose (<MultiRobotPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiRobotPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiRobotPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_control_msgs-msg:<MultiRobotPose> is deprecated: use trajectory_control_msgs-msg:MultiRobotPose instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MultiRobotPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:header-val is deprecated.  Use trajectory_control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <MultiRobotPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:robot_id-val is deprecated.  Use trajectory_control_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MultiRobotPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:pose-val is deprecated.  Use trajectory_control_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiRobotPose>) ostream)
  "Serializes a message object of type '<MultiRobotPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiRobotPose>) istream)
  "Deserializes a message object of type '<MultiRobotPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiRobotPose>)))
  "Returns string type for a message object of type '<MultiRobotPose>"
  "trajectory_control_msgs/MultiRobotPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiRobotPose)))
  "Returns string type for a message object of type 'MultiRobotPose"
  "trajectory_control_msgs/MultiRobotPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiRobotPose>)))
  "Returns md5sum for a message object of type '<MultiRobotPose>"
  "4edfada369790b19fef23a05bef4ee01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiRobotPose)))
  "Returns md5sum for a message object of type 'MultiRobotPose"
  "4edfada369790b19fef23a05bef4ee01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiRobotPose>)))
  "Returns full string definition for message of type '<MultiRobotPose>"
  (cl:format cl:nil "std_msgs/Header header~%uint8 robot_id~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiRobotPose)))
  "Returns full string definition for message of type 'MultiRobotPose"
  (cl:format cl:nil "std_msgs/Header header~%uint8 robot_id~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiRobotPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiRobotPose>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiRobotPose
    (cl:cons ':header (header msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':pose (pose msg))
))
