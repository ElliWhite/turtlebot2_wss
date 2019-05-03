; Auto-generated. Do not edit!


(cl:in-package robot_trajectory_saver_msgs-srv)


;//! \htmlinclude CheckPath-request.msg.html

(cl:defclass <CheckPath-request> (roslisp-msg-protocol:ros-message)
  ((point_of_interest
    :reader point_of_interest
    :initarg :point_of_interest
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (source_node_id
    :reader source_node_id
    :initarg :source_node_id
    :type cl:integer
    :initform 0)
   (destination_node_id
    :reader destination_node_id
    :initarg :destination_node_id
    :type cl:integer
    :initform 0))
)

(cl:defclass CheckPath-request (<CheckPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_trajectory_saver_msgs-srv:<CheckPath-request> is deprecated: use robot_trajectory_saver_msgs-srv:CheckPath-request instead.")))

(cl:ensure-generic-function 'point_of_interest-val :lambda-list '(m))
(cl:defmethod point_of_interest-val ((m <CheckPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_trajectory_saver_msgs-srv:point_of_interest-val is deprecated.  Use robot_trajectory_saver_msgs-srv:point_of_interest instead.")
  (point_of_interest m))

(cl:ensure-generic-function 'source_node_id-val :lambda-list '(m))
(cl:defmethod source_node_id-val ((m <CheckPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_trajectory_saver_msgs-srv:source_node_id-val is deprecated.  Use robot_trajectory_saver_msgs-srv:source_node_id instead.")
  (source_node_id m))

(cl:ensure-generic-function 'destination_node_id-val :lambda-list '(m))
(cl:defmethod destination_node_id-val ((m <CheckPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_trajectory_saver_msgs-srv:destination_node_id-val is deprecated.  Use robot_trajectory_saver_msgs-srv:destination_node_id instead.")
  (destination_node_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckPath-request>) ostream)
  "Serializes a message object of type '<CheckPath-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_of_interest) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'source_node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'source_node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'source_node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'source_node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'source_node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'source_node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'source_node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'destination_node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'destination_node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'destination_node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'destination_node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'destination_node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'destination_node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'destination_node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'destination_node_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckPath-request>) istream)
  "Deserializes a message object of type '<CheckPath-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_of_interest) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'source_node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'source_node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'source_node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'source_node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'source_node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'source_node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'source_node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'destination_node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'destination_node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'destination_node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'destination_node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'destination_node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'destination_node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'destination_node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'destination_node_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckPath-request>)))
  "Returns string type for a service object of type '<CheckPath-request>"
  "robot_trajectory_saver_msgs/CheckPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckPath-request)))
  "Returns string type for a service object of type 'CheckPath-request"
  "robot_trajectory_saver_msgs/CheckPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckPath-request>)))
  "Returns md5sum for a message object of type '<CheckPath-request>"
  "df614bdf15b72df4d907293da55a23e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckPath-request)))
  "Returns md5sum for a message object of type 'CheckPath-request"
  "df614bdf15b72df4d907293da55a23e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckPath-request>)))
  "Returns full string definition for message of type '<CheckPath-request>"
  (cl:format cl:nil "nav_msgs/Path point_of_interest~%uint64 source_node_id~%uint64 destination_node_id~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckPath-request)))
  "Returns full string definition for message of type 'CheckPath-request"
  (cl:format cl:nil "nav_msgs/Path point_of_interest~%uint64 source_node_id~%uint64 destination_node_id~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckPath-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_of_interest))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckPath-request
    (cl:cons ':point_of_interest (point_of_interest msg))
    (cl:cons ':source_node_id (source_node_id msg))
    (cl:cons ':destination_node_id (destination_node_id msg))
))
;//! \htmlinclude CheckPath-response.msg.html

(cl:defclass <CheckPath-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (path_cost
    :reader path_cost
    :initarg :path_cost
    :type cl:integer
    :initform 0))
)

(cl:defclass CheckPath-response (<CheckPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_trajectory_saver_msgs-srv:<CheckPath-response> is deprecated: use robot_trajectory_saver_msgs-srv:CheckPath-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CheckPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_trajectory_saver_msgs-srv:result-val is deprecated.  Use robot_trajectory_saver_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'path_cost-val :lambda-list '(m))
(cl:defmethod path_cost-val ((m <CheckPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_trajectory_saver_msgs-srv:path_cost-val is deprecated.  Use robot_trajectory_saver_msgs-srv:path_cost instead.")
  (path_cost m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckPath-response>) ostream)
  "Serializes a message object of type '<CheckPath-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_cost)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'path_cost)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'path_cost)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'path_cost)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'path_cost)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'path_cost)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'path_cost)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'path_cost)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckPath-response>) istream)
  "Deserializes a message object of type '<CheckPath-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_cost)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'path_cost)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'path_cost)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'path_cost)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'path_cost)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'path_cost)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'path_cost)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'path_cost)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckPath-response>)))
  "Returns string type for a service object of type '<CheckPath-response>"
  "robot_trajectory_saver_msgs/CheckPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckPath-response)))
  "Returns string type for a service object of type 'CheckPath-response"
  "robot_trajectory_saver_msgs/CheckPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckPath-response>)))
  "Returns md5sum for a message object of type '<CheckPath-response>"
  "df614bdf15b72df4d907293da55a23e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckPath-response)))
  "Returns md5sum for a message object of type 'CheckPath-response"
  "df614bdf15b72df4d907293da55a23e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckPath-response>)))
  "Returns full string definition for message of type '<CheckPath-response>"
  (cl:format cl:nil "bool result~%uint64 path_cost~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckPath-response)))
  "Returns full string definition for message of type 'CheckPath-response"
  (cl:format cl:nil "bool result~%uint64 path_cost~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckPath-response>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckPath-response
    (cl:cons ':result (result msg))
    (cl:cons ':path_cost (path_cost msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckPath)))
  'CheckPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckPath)))
  'CheckPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckPath)))
  "Returns string type for a service object of type '<CheckPath>"
  "robot_trajectory_saver_msgs/CheckPath")