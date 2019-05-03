; Auto-generated. Do not edit!


(cl:in-package stamped_msgs-msg)


;//! \htmlinclude Empty.msg.html

(cl:defclass <Empty> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass Empty (<Empty>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Empty>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Empty)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stamped_msgs-msg:<Empty> is deprecated: use stamped_msgs-msg:Empty instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Empty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stamped_msgs-msg:header-val is deprecated.  Use stamped_msgs-msg:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Empty>) ostream)
  "Serializes a message object of type '<Empty>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Empty>) istream)
  "Deserializes a message object of type '<Empty>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Empty>)))
  "Returns string type for a message object of type '<Empty>"
  "stamped_msgs/Empty")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Empty)))
  "Returns string type for a message object of type 'Empty"
  "stamped_msgs/Empty")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Empty>)))
  "Returns md5sum for a message object of type '<Empty>"
  "d7be0bb39af8fb9129d5a76e6b63a290")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Empty)))
  "Returns md5sum for a message object of type 'Empty"
  "d7be0bb39af8fb9129d5a76e6b63a290")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Empty>)))
  "Returns full string definition for message of type '<Empty>"
  (cl:format cl:nil "Header header~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Empty)))
  "Returns full string definition for message of type 'Empty"
  (cl:format cl:nil "Header header~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Empty>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Empty>))
  "Converts a ROS message object to a list"
  (cl:list 'Empty
    (cl:cons ':header (header msg))
))
