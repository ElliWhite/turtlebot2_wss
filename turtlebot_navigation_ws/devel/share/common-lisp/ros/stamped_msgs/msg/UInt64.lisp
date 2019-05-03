; Auto-generated. Do not edit!


(cl:in-package stamped_msgs-msg)


;//! \htmlinclude UInt64.msg.html

(cl:defclass <UInt64> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass UInt64 (<UInt64>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UInt64>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UInt64)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stamped_msgs-msg:<UInt64> is deprecated: use stamped_msgs-msg:UInt64 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UInt64>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stamped_msgs-msg:header-val is deprecated.  Use stamped_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <UInt64>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stamped_msgs-msg:data-val is deprecated.  Use stamped_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UInt64>) ostream)
  "Serializes a message object of type '<UInt64>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UInt64>) istream)
  "Deserializes a message object of type '<UInt64>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UInt64>)))
  "Returns string type for a message object of type '<UInt64>"
  "stamped_msgs/UInt64")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UInt64)))
  "Returns string type for a message object of type 'UInt64"
  "stamped_msgs/UInt64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UInt64>)))
  "Returns md5sum for a message object of type '<UInt64>"
  "9d38f591dd58914b3003b137ec2273dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UInt64)))
  "Returns md5sum for a message object of type 'UInt64"
  "9d38f591dd58914b3003b137ec2273dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UInt64>)))
  "Returns full string definition for message of type '<UInt64>"
  (cl:format cl:nil "Header header~%uint64 data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UInt64)))
  "Returns full string definition for message of type 'UInt64"
  (cl:format cl:nil "Header header~%uint64 data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UInt64>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UInt64>))
  "Converts a ROS message object to a list"
  (cl:list 'UInt64
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
