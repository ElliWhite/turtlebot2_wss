; Auto-generated. Do not edit!


(cl:in-package stamped_msgs-msg)


;//! \htmlinclude DurationArray.msg.html

(cl:defclass <DurationArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:real)
   :initform (cl:make-array 0 :element-type 'cl:real :initial-element 0)))
)

(cl:defclass DurationArray (<DurationArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DurationArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DurationArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stamped_msgs-msg:<DurationArray> is deprecated: use stamped_msgs-msg:DurationArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DurationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stamped_msgs-msg:header-val is deprecated.  Use stamped_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <DurationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stamped_msgs-msg:data-val is deprecated.  Use stamped_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DurationArray>) ostream)
  "Serializes a message object of type '<DurationArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__sec (cl:floor ele))
        (__nsec (cl:round (cl:* 1e9 (cl:- ele (cl:floor ele))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream)))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DurationArray>) istream)
  "Deserializes a message object of type '<DurationArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DurationArray>)))
  "Returns string type for a message object of type '<DurationArray>"
  "stamped_msgs/DurationArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DurationArray)))
  "Returns string type for a message object of type 'DurationArray"
  "stamped_msgs/DurationArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DurationArray>)))
  "Returns md5sum for a message object of type '<DurationArray>"
  "982e06151401a934cc67e2fa010ee5e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DurationArray)))
  "Returns md5sum for a message object of type 'DurationArray"
  "982e06151401a934cc67e2fa010ee5e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DurationArray>)))
  "Returns full string definition for message of type '<DurationArray>"
  (cl:format cl:nil "Header header~%duration[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DurationArray)))
  "Returns full string definition for message of type 'DurationArray"
  (cl:format cl:nil "Header header~%duration[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DurationArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DurationArray>))
  "Converts a ROS message object to a list"
  (cl:list 'DurationArray
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
