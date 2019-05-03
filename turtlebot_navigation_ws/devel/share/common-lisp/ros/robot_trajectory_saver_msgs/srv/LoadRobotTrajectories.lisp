; Auto-generated. Do not edit!


(cl:in-package robot_trajectory_saver_msgs-srv)


;//! \htmlinclude LoadRobotTrajectories-request.msg.html

(cl:defclass <LoadRobotTrajectories-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform ""))
)

(cl:defclass LoadRobotTrajectories-request (<LoadRobotTrajectories-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadRobotTrajectories-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadRobotTrajectories-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_trajectory_saver_msgs-srv:<LoadRobotTrajectories-request> is deprecated: use robot_trajectory_saver_msgs-srv:LoadRobotTrajectories-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <LoadRobotTrajectories-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_trajectory_saver_msgs-srv:file_path-val is deprecated.  Use robot_trajectory_saver_msgs-srv:file_path instead.")
  (file_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadRobotTrajectories-request>) ostream)
  "Serializes a message object of type '<LoadRobotTrajectories-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadRobotTrajectories-request>) istream)
  "Deserializes a message object of type '<LoadRobotTrajectories-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadRobotTrajectories-request>)))
  "Returns string type for a service object of type '<LoadRobotTrajectories-request>"
  "robot_trajectory_saver_msgs/LoadRobotTrajectoriesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadRobotTrajectories-request)))
  "Returns string type for a service object of type 'LoadRobotTrajectories-request"
  "robot_trajectory_saver_msgs/LoadRobotTrajectoriesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadRobotTrajectories-request>)))
  "Returns md5sum for a message object of type '<LoadRobotTrajectories-request>"
  "9c54a0ae5f11617005a96802ab4d5ff0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadRobotTrajectories-request)))
  "Returns md5sum for a message object of type 'LoadRobotTrajectories-request"
  "9c54a0ae5f11617005a96802ab4d5ff0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadRobotTrajectories-request>)))
  "Returns full string definition for message of type '<LoadRobotTrajectories-request>"
  (cl:format cl:nil "string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadRobotTrajectories-request)))
  "Returns full string definition for message of type 'LoadRobotTrajectories-request"
  (cl:format cl:nil "string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadRobotTrajectories-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadRobotTrajectories-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadRobotTrajectories-request
    (cl:cons ':file_path (file_path msg))
))
;//! \htmlinclude LoadRobotTrajectories-response.msg.html

(cl:defclass <LoadRobotTrajectories-response> (roslisp-msg-protocol:ros-message)
  ((trajectories
    :reader trajectories
    :initarg :trajectories
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass LoadRobotTrajectories-response (<LoadRobotTrajectories-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadRobotTrajectories-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadRobotTrajectories-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_trajectory_saver_msgs-srv:<LoadRobotTrajectories-response> is deprecated: use robot_trajectory_saver_msgs-srv:LoadRobotTrajectories-response instead.")))

(cl:ensure-generic-function 'trajectories-val :lambda-list '(m))
(cl:defmethod trajectories-val ((m <LoadRobotTrajectories-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_trajectory_saver_msgs-srv:trajectories-val is deprecated.  Use robot_trajectory_saver_msgs-srv:trajectories instead.")
  (trajectories m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadRobotTrajectories-response>) ostream)
  "Serializes a message object of type '<LoadRobotTrajectories-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectories) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadRobotTrajectories-response>) istream)
  "Deserializes a message object of type '<LoadRobotTrajectories-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectories) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadRobotTrajectories-response>)))
  "Returns string type for a service object of type '<LoadRobotTrajectories-response>"
  "robot_trajectory_saver_msgs/LoadRobotTrajectoriesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadRobotTrajectories-response)))
  "Returns string type for a service object of type 'LoadRobotTrajectories-response"
  "robot_trajectory_saver_msgs/LoadRobotTrajectoriesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadRobotTrajectories-response>)))
  "Returns md5sum for a message object of type '<LoadRobotTrajectories-response>"
  "9c54a0ae5f11617005a96802ab4d5ff0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadRobotTrajectories-response)))
  "Returns md5sum for a message object of type 'LoadRobotTrajectories-response"
  "9c54a0ae5f11617005a96802ab4d5ff0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadRobotTrajectories-response>)))
  "Returns full string definition for message of type '<LoadRobotTrajectories-response>"
  (cl:format cl:nil "nav_msgs/Path trajectories~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadRobotTrajectories-response)))
  "Returns full string definition for message of type 'LoadRobotTrajectories-response"
  (cl:format cl:nil "nav_msgs/Path trajectories~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadRobotTrajectories-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectories))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadRobotTrajectories-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadRobotTrajectories-response
    (cl:cons ':trajectories (trajectories msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadRobotTrajectories)))
  'LoadRobotTrajectories-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadRobotTrajectories)))
  'LoadRobotTrajectories-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadRobotTrajectories)))
  "Returns string type for a service object of type '<LoadRobotTrajectories>"
  "robot_trajectory_saver_msgs/LoadRobotTrajectories")