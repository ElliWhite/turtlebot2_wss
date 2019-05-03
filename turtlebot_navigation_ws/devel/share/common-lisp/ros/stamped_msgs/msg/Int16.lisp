; Auto-generated. Do not edit!


(cl:in-package stamped_msgs-msg)


;//! \htmlinclude Int16.msg.html

(cl:defclass <Int16> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Int16 (<Int16>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Int16>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Int16)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stamped_msgs-msg:<Int16> is deprecated: use stamped_msgs-msg:Int16 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Int16>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stamped_msgs-msg:header-val is deprecated.  Use stamped_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Int16>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stamped_msgs-msg:data-val is deprecated.  Use stamped_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Int16>) ostream)
  "Serializes a message object of type '<Int16>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Int16>) istream)
  "Deserializes a message object of type '<Int16>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Int16>)))
  "Returns string type for a message object of type '<Int16>"
  "stamped_msgs/Int16")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Int16)))
  "Returns string type for a message object of type 'Int16"
  "stamped_msgs/Int16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Int16>)))
  "Returns md5sum for a message object of type '<Int16>"
  "98610943e4af5bf18c39a51dd08ed69d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Int16)))
  "Returns md5sum for a message object of type 'Int16"
  "98610943e4af5bf18c39a51dd08ed69d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Int16>)))
  "Returns full string definition for message of type '<Int16>"
  (cl:format cl:nil "Header header~%int16 data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Int16)))
  "Returns full string definition for message of type 'Int16"
  (cl:format cl:nil "Header header~%int16 data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Int16>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Int16>))
  "Converts a ROS message object to a list"
  (cl:list 'Int16
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
