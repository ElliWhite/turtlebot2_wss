; Auto-generated. Do not edit!


(cl:in-package stamped_msgs-msg)


;//! \htmlinclude Bool.msg.html

(cl:defclass <Bool> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Bool (<Bool>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bool>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bool)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stamped_msgs-msg:<Bool> is deprecated: use stamped_msgs-msg:Bool instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Bool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stamped_msgs-msg:header-val is deprecated.  Use stamped_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Bool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stamped_msgs-msg:data-val is deprecated.  Use stamped_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bool>) ostream)
  "Serializes a message object of type '<Bool>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bool>) istream)
  "Deserializes a message object of type '<Bool>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'data) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bool>)))
  "Returns string type for a message object of type '<Bool>"
  "stamped_msgs/Bool")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bool)))
  "Returns string type for a message object of type 'Bool"
  "stamped_msgs/Bool")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bool>)))
  "Returns md5sum for a message object of type '<Bool>"
  "542e22b190dc8e6eb476d50dda88feb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bool)))
  "Returns md5sum for a message object of type 'Bool"
  "542e22b190dc8e6eb476d50dda88feb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bool>)))
  "Returns full string definition for message of type '<Bool>"
  (cl:format cl:nil "Header header~%bool data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bool)))
  "Returns full string definition for message of type 'Bool"
  (cl:format cl:nil "Header header~%bool data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bool>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bool>))
  "Converts a ROS message object to a list"
  (cl:list 'Bool
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
