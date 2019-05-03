; Auto-generated. Do not edit!


(cl:in-package stamped_msgs-msg)


;//! \htmlinclude ColorRGBAArray.msg.html

(cl:defclass <ColorRGBAArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector std_msgs-msg:ColorRGBA)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:ColorRGBA :initial-element (cl:make-instance 'std_msgs-msg:ColorRGBA))))
)

(cl:defclass ColorRGBAArray (<ColorRGBAArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColorRGBAArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColorRGBAArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stamped_msgs-msg:<ColorRGBAArray> is deprecated: use stamped_msgs-msg:ColorRGBAArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ColorRGBAArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stamped_msgs-msg:header-val is deprecated.  Use stamped_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ColorRGBAArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stamped_msgs-msg:data-val is deprecated.  Use stamped_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColorRGBAArray>) ostream)
  "Serializes a message object of type '<ColorRGBAArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColorRGBAArray>) istream)
  "Deserializes a message object of type '<ColorRGBAArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:ColorRGBA))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColorRGBAArray>)))
  "Returns string type for a message object of type '<ColorRGBAArray>"
  "stamped_msgs/ColorRGBAArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColorRGBAArray)))
  "Returns string type for a message object of type 'ColorRGBAArray"
  "stamped_msgs/ColorRGBAArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColorRGBAArray>)))
  "Returns md5sum for a message object of type '<ColorRGBAArray>"
  "ddfc941072d9b5aacf0e1276887c8ed7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColorRGBAArray)))
  "Returns md5sum for a message object of type 'ColorRGBAArray"
  "ddfc941072d9b5aacf0e1276887c8ed7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColorRGBAArray>)))
  "Returns full string definition for message of type '<ColorRGBAArray>"
  (cl:format cl:nil "Header header~%std_msgs/ColorRGBA[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColorRGBAArray)))
  "Returns full string definition for message of type 'ColorRGBAArray"
  (cl:format cl:nil "Header header~%std_msgs/ColorRGBA[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColorRGBAArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColorRGBAArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ColorRGBAArray
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
