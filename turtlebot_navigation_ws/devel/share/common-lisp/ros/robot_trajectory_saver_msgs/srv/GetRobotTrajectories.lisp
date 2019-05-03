; Auto-generated. Do not edit!


(cl:in-package robot_trajectory_saver_msgs-srv)


;//! \htmlinclude GetRobotTrajectories-request.msg.html

(cl:defclass <GetRobotTrajectories-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetRobotTrajectories-request (<GetRobotTrajectories-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotTrajectories-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotTrajectories-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_trajectory_saver_msgs-srv:<GetRobotTrajectories-request> is deprecated: use robot_trajectory_saver_msgs-srv:GetRobotTrajectories-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotTrajectories-request>) ostream)
  "Serializes a message object of type '<GetRobotTrajectories-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotTrajectories-request>) istream)
  "Deserializes a message object of type '<GetRobotTrajectories-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotTrajectories-request>)))
  "Returns string type for a service object of type '<GetRobotTrajectories-request>"
  "robot_trajectory_saver_msgs/GetRobotTrajectoriesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotTrajectories-request)))
  "Returns string type for a service object of type 'GetRobotTrajectories-request"
  "robot_trajectory_saver_msgs/GetRobotTrajectoriesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotTrajectories-request>)))
  "Returns md5sum for a message object of type '<GetRobotTrajectories-request>"
  "8b30a4d113ef58da0a023a56d68b5488")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotTrajectories-request)))
  "Returns md5sum for a message object of type 'GetRobotTrajectories-request"
  "8b30a4d113ef58da0a023a56d68b5488")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotTrajectories-request>)))
  "Returns full string definition for message of type '<GetRobotTrajectories-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotTrajectories-request)))
  "Returns full string definition for message of type 'GetRobotTrajectories-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotTrajectories-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotTrajectories-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotTrajectories-request
))
;//! \htmlinclude GetRobotTrajectories-response.msg.html

(cl:defclass <GetRobotTrajectories-response> (roslisp-msg-protocol:ros-message)
  ((trajectories
    :reader trajectories
    :initarg :trajectories
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass GetRobotTrajectories-response (<GetRobotTrajectories-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotTrajectories-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotTrajectories-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_trajectory_saver_msgs-srv:<GetRobotTrajectories-response> is deprecated: use robot_trajectory_saver_msgs-srv:GetRobotTrajectories-response instead.")))

(cl:ensure-generic-function 'trajectories-val :lambda-list '(m))
(cl:defmethod trajectories-val ((m <GetRobotTrajectories-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_trajectory_saver_msgs-srv:trajectories-val is deprecated.  Use robot_trajectory_saver_msgs-srv:trajectories instead.")
  (trajectories m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotTrajectories-response>) ostream)
  "Serializes a message object of type '<GetRobotTrajectories-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectories) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotTrajectories-response>) istream)
  "Deserializes a message object of type '<GetRobotTrajectories-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectories) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotTrajectories-response>)))
  "Returns string type for a service object of type '<GetRobotTrajectories-response>"
  "robot_trajectory_saver_msgs/GetRobotTrajectoriesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotTrajectories-response)))
  "Returns string type for a service object of type 'GetRobotTrajectories-response"
  "robot_trajectory_saver_msgs/GetRobotTrajectoriesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotTrajectories-response>)))
  "Returns md5sum for a message object of type '<GetRobotTrajectories-response>"
  "8b30a4d113ef58da0a023a56d68b5488")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotTrajectories-response)))
  "Returns md5sum for a message object of type 'GetRobotTrajectories-response"
  "8b30a4d113ef58da0a023a56d68b5488")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotTrajectories-response>)))
  "Returns full string definition for message of type '<GetRobotTrajectories-response>"
  (cl:format cl:nil "nav_msgs/Path trajectories~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotTrajectories-response)))
  "Returns full string definition for message of type 'GetRobotTrajectories-response"
  (cl:format cl:nil "nav_msgs/Path trajectories~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotTrajectories-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectories))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotTrajectories-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotTrajectories-response
    (cl:cons ':trajectories (trajectories msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRobotTrajectories)))
  'GetRobotTrajectories-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRobotTrajectories)))
  'GetRobotTrajectories-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotTrajectories)))
  "Returns string type for a service object of type '<GetRobotTrajectories>"
  "robot_trajectory_saver_msgs/GetRobotTrajectories")