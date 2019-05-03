; Auto-generated. Do not edit!


(cl:in-package patrolling_build_graph_msgs-msg)


;//! \htmlinclude PriorityPoint.msg.html

(cl:defclass <PriorityPoint> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (priority
    :reader priority
    :initarg :priority
    :type cl:float
    :initform 0.0))
)

(cl:defclass PriorityPoint (<PriorityPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PriorityPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PriorityPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name patrolling_build_graph_msgs-msg:<PriorityPoint> is deprecated: use patrolling_build_graph_msgs-msg:PriorityPoint instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PriorityPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:header-val is deprecated.  Use patrolling_build_graph_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PriorityPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:id-val is deprecated.  Use patrolling_build_graph_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PriorityPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:position-val is deprecated.  Use patrolling_build_graph_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <PriorityPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:priority-val is deprecated.  Use patrolling_build_graph_msgs-msg:priority instead.")
  (priority m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PriorityPoint>) ostream)
  "Serializes a message object of type '<PriorityPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'priority))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PriorityPoint>) istream)
  "Deserializes a message object of type '<PriorityPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'priority) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PriorityPoint>)))
  "Returns string type for a message object of type '<PriorityPoint>"
  "patrolling_build_graph_msgs/PriorityPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PriorityPoint)))
  "Returns string type for a message object of type 'PriorityPoint"
  "patrolling_build_graph_msgs/PriorityPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PriorityPoint>)))
  "Returns md5sum for a message object of type '<PriorityPoint>"
  "d9470f86891275d35ddc7e5ebe6a205f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PriorityPoint)))
  "Returns md5sum for a message object of type 'PriorityPoint"
  "d9470f86891275d35ddc7e5ebe6a205f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PriorityPoint>)))
  "Returns full string definition for message of type '<PriorityPoint>"
  (cl:format cl:nil "# A reference coordinate frame and timestamp~%Header header~%~%uint32 id                     # id~%geometry_msgs/Point position  # position~%float32 priority              # priority ~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PriorityPoint)))
  "Returns full string definition for message of type 'PriorityPoint"
  (cl:format cl:nil "# A reference coordinate frame and timestamp~%Header header~%~%uint32 id                     # id~%geometry_msgs/Point position  # position~%float32 priority              # priority ~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PriorityPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PriorityPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'PriorityPoint
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':priority (priority msg))
))
