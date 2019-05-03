; Auto-generated. Do not edit!


(cl:in-package laser_mapper_tools-srv)


;//! \htmlinclude SetPose-request.msg.html

(cl:defclass <SetPose-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass SetPose-request (<SetPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_mapper_tools-srv:<SetPose-request> is deprecated: use laser_mapper_tools-srv:SetPose-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SetPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_mapper_tools-srv:pose-val is deprecated.  Use laser_mapper_tools-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPose-request>) ostream)
  "Serializes a message object of type '<SetPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPose-request>) istream)
  "Deserializes a message object of type '<SetPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPose-request>)))
  "Returns string type for a service object of type '<SetPose-request>"
  "laser_mapper_tools/SetPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose-request)))
  "Returns string type for a service object of type 'SetPose-request"
  "laser_mapper_tools/SetPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPose-request>)))
  "Returns md5sum for a message object of type '<SetPose-request>"
  "3f8930d968a3e84d471dff917bb1cdae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPose-request)))
  "Returns md5sum for a message object of type 'SetPose-request"
  "3f8930d968a3e84d471dff917bb1cdae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPose-request>)))
  "Returns full string definition for message of type '<SetPose-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPose-request)))
  "Returns full string definition for message of type 'SetPose-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPose-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude SetPose-response.msg.html

(cl:defclass <SetPose-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetPose-response (<SetPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_mapper_tools-srv:<SetPose-response> is deprecated: use laser_mapper_tools-srv:SetPose-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPose-response>) ostream)
  "Serializes a message object of type '<SetPose-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPose-response>) istream)
  "Deserializes a message object of type '<SetPose-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPose-response>)))
  "Returns string type for a service object of type '<SetPose-response>"
  "laser_mapper_tools/SetPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose-response)))
  "Returns string type for a service object of type 'SetPose-response"
  "laser_mapper_tools/SetPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPose-response>)))
  "Returns md5sum for a message object of type '<SetPose-response>"
  "3f8930d968a3e84d471dff917bb1cdae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPose-response)))
  "Returns md5sum for a message object of type 'SetPose-response"
  "3f8930d968a3e84d471dff917bb1cdae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPose-response>)))
  "Returns full string definition for message of type '<SetPose-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPose-response)))
  "Returns full string definition for message of type 'SetPose-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPose-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPose-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPose)))
  'SetPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPose)))
  'SetPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose)))
  "Returns string type for a service object of type '<SetPose>"
  "laser_mapper_tools/SetPose")