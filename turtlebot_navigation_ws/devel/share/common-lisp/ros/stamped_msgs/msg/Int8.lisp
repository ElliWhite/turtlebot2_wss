; Auto-generated. Do not edit!


(cl:in-package stamped_msgs-msg)


;//! \htmlinclude Int8.msg.html

(cl:defclass <Int8> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Int8 (<Int8>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Int8>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Int8)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stamped_msgs-msg:<Int8> is deprecated: use stamped_msgs-msg:Int8 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Int8>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stamped_msgs-msg:header-val is deprecated.  Use stamped_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Int8>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stamped_msgs-msg:data-val is deprecated.  Use stamped_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Int8>) ostream)
  "Serializes a message object of type '<Int8>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Int8>) istream)
  "Deserializes a message object of type '<Int8>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Int8>)))
  "Returns string type for a message object of type '<Int8>"
  "stamped_msgs/Int8")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Int8)))
  "Returns string type for a message object of type 'Int8"
  "stamped_msgs/Int8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Int8>)))
  "Returns md5sum for a message object of type '<Int8>"
  "09ed9a93cacbec0f13a0fad6e1719649")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Int8)))
  "Returns md5sum for a message object of type 'Int8"
  "09ed9a93cacbec0f13a0fad6e1719649")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Int8>)))
  "Returns full string definition for message of type '<Int8>"
  (cl:format cl:nil "Header header~%int8 data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Int8)))
  "Returns full string definition for message of type 'Int8"
  (cl:format cl:nil "Header header~%int8 data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Int8>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Int8>))
  "Converts a ROS message object to a list"
  (cl:list 'Int8
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
