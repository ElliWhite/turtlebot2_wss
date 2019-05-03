; Auto-generated. Do not edit!


(cl:in-package wireless_network_msgs-msg)


;//! \htmlinclude Levels_WiFi_2D.msg.html

(cl:defclass <Levels_WiFi_2D> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (LL_level
    :reader LL_level
    :initarg :LL_level
    :type cl:float
    :initform 0.0)
   (LR_level
    :reader LR_level
    :initarg :LR_level
    :type cl:float
    :initform 0.0)
   (UL_level
    :reader UL_level
    :initarg :UL_level
    :type cl:float
    :initform 0.0)
   (UR_level
    :reader UR_level
    :initarg :UR_level
    :type cl:float
    :initform 0.0)
   (C_level
    :reader C_level
    :initarg :C_level
    :type cl:float
    :initform 0.0)
   (LL_level_abs
    :reader LL_level_abs
    :initarg :LL_level_abs
    :type cl:float
    :initform 0.0)
   (LR_level_abs
    :reader LR_level_abs
    :initarg :LR_level_abs
    :type cl:float
    :initform 0.0)
   (UL_level_abs
    :reader UL_level_abs
    :initarg :UL_level_abs
    :type cl:float
    :initform 0.0)
   (UR_level_abs
    :reader UR_level_abs
    :initarg :UR_level_abs
    :type cl:float
    :initform 0.0)
   (C_level_abs
    :reader C_level_abs
    :initarg :C_level_abs
    :type cl:float
    :initform 0.0))
)

(cl:defclass Levels_WiFi_2D (<Levels_WiFi_2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Levels_WiFi_2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Levels_WiFi_2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wireless_network_msgs-msg:<Levels_WiFi_2D> is deprecated: use wireless_network_msgs-msg:Levels_WiFi_2D instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Levels_WiFi_2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:header-val is deprecated.  Use wireless_network_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'LL_level-val :lambda-list '(m))
(cl:defmethod LL_level-val ((m <Levels_WiFi_2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:LL_level-val is deprecated.  Use wireless_network_msgs-msg:LL_level instead.")
  (LL_level m))

(cl:ensure-generic-function 'LR_level-val :lambda-list '(m))
(cl:defmethod LR_level-val ((m <Levels_WiFi_2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:LR_level-val is deprecated.  Use wireless_network_msgs-msg:LR_level instead.")
  (LR_level m))

(cl:ensure-generic-function 'UL_level-val :lambda-list '(m))
(cl:defmethod UL_level-val ((m <Levels_WiFi_2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:UL_level-val is deprecated.  Use wireless_network_msgs-msg:UL_level instead.")
  (UL_level m))

(cl:ensure-generic-function 'UR_level-val :lambda-list '(m))
(cl:defmethod UR_level-val ((m <Levels_WiFi_2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:UR_level-val is deprecated.  Use wireless_network_msgs-msg:UR_level instead.")
  (UR_level m))

(cl:ensure-generic-function 'C_level-val :lambda-list '(m))
(cl:defmethod C_level-val ((m <Levels_WiFi_2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:C_level-val is deprecated.  Use wireless_network_msgs-msg:C_level instead.")
  (C_level m))

(cl:ensure-generic-function 'LL_level_abs-val :lambda-list '(m))
(cl:defmethod LL_level_abs-val ((m <Levels_WiFi_2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:LL_level_abs-val is deprecated.  Use wireless_network_msgs-msg:LL_level_abs instead.")
  (LL_level_abs m))

(cl:ensure-generic-function 'LR_level_abs-val :lambda-list '(m))
(cl:defmethod LR_level_abs-val ((m <Levels_WiFi_2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:LR_level_abs-val is deprecated.  Use wireless_network_msgs-msg:LR_level_abs instead.")
  (LR_level_abs m))

(cl:ensure-generic-function 'UL_level_abs-val :lambda-list '(m))
(cl:defmethod UL_level_abs-val ((m <Levels_WiFi_2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:UL_level_abs-val is deprecated.  Use wireless_network_msgs-msg:UL_level_abs instead.")
  (UL_level_abs m))

(cl:ensure-generic-function 'UR_level_abs-val :lambda-list '(m))
(cl:defmethod UR_level_abs-val ((m <Levels_WiFi_2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:UR_level_abs-val is deprecated.  Use wireless_network_msgs-msg:UR_level_abs instead.")
  (UR_level_abs m))

(cl:ensure-generic-function 'C_level_abs-val :lambda-list '(m))
(cl:defmethod C_level_abs-val ((m <Levels_WiFi_2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:C_level_abs-val is deprecated.  Use wireless_network_msgs-msg:C_level_abs instead.")
  (C_level_abs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Levels_WiFi_2D>) ostream)
  "Serializes a message object of type '<Levels_WiFi_2D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LL_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LR_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'UL_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'UR_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'C_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LL_level_abs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LR_level_abs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'UL_level_abs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'UR_level_abs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'C_level_abs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Levels_WiFi_2D>) istream)
  "Deserializes a message object of type '<Levels_WiFi_2D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LL_level) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LR_level) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'UL_level) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'UR_level) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'C_level) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LL_level_abs) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LR_level_abs) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'UL_level_abs) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'UR_level_abs) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'C_level_abs) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Levels_WiFi_2D>)))
  "Returns string type for a message object of type '<Levels_WiFi_2D>"
  "wireless_network_msgs/Levels_WiFi_2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Levels_WiFi_2D)))
  "Returns string type for a message object of type 'Levels_WiFi_2D"
  "wireless_network_msgs/Levels_WiFi_2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Levels_WiFi_2D>)))
  "Returns md5sum for a message object of type '<Levels_WiFi_2D>"
  "b6a31ec136ad71020ee606788242b927")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Levels_WiFi_2D)))
  "Returns md5sum for a message object of type 'Levels_WiFi_2D"
  "b6a31ec136ad71020ee606788242b927")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Levels_WiFi_2D>)))
  "Returns full string definition for message of type '<Levels_WiFi_2D>"
  (cl:format cl:nil "Header header~%~%float32 LL_level ~%# Lower left WiFi signal in a normalized scale (1-100)~%~%float32 LR_level ~%# Lower Right WiFi signal in a normalized scale (1-100)~%~%float32 UL_level ~%# Upper Left WiFi signal in a normalized scale (1-100)~%~%float32 UR_level ~%# Upper Right WiFi signal in a normalized scale (1-100)~%~%float32 C_level ~%# Center WiFi signal in a normalized scale (1-100)~%~%float32 LL_level_abs ~%# Lower Left WiFi signal in dBm~%~%float32 LR_level_abs ~%# Lower Right WiFi signal in dBm~%~%float32 UL_level_abs ~%# Lower Left WiFi signal in dBm~%~%float32 UR_level_abs ~%# Upper Right WiFi signal in dBm~%~%float32 C_level_abs ~%# Center WiFi signal in dBm~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Levels_WiFi_2D)))
  "Returns full string definition for message of type 'Levels_WiFi_2D"
  (cl:format cl:nil "Header header~%~%float32 LL_level ~%# Lower left WiFi signal in a normalized scale (1-100)~%~%float32 LR_level ~%# Lower Right WiFi signal in a normalized scale (1-100)~%~%float32 UL_level ~%# Upper Left WiFi signal in a normalized scale (1-100)~%~%float32 UR_level ~%# Upper Right WiFi signal in a normalized scale (1-100)~%~%float32 C_level ~%# Center WiFi signal in a normalized scale (1-100)~%~%float32 LL_level_abs ~%# Lower Left WiFi signal in dBm~%~%float32 LR_level_abs ~%# Lower Right WiFi signal in dBm~%~%float32 UL_level_abs ~%# Lower Left WiFi signal in dBm~%~%float32 UR_level_abs ~%# Upper Right WiFi signal in dBm~%~%float32 C_level_abs ~%# Center WiFi signal in dBm~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Levels_WiFi_2D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Levels_WiFi_2D>))
  "Converts a ROS message object to a list"
  (cl:list 'Levels_WiFi_2D
    (cl:cons ':header (header msg))
    (cl:cons ':LL_level (LL_level msg))
    (cl:cons ':LR_level (LR_level msg))
    (cl:cons ':UL_level (UL_level msg))
    (cl:cons ':UR_level (UR_level msg))
    (cl:cons ':C_level (C_level msg))
    (cl:cons ':LL_level_abs (LL_level_abs msg))
    (cl:cons ':LR_level_abs (LR_level_abs msg))
    (cl:cons ':UL_level_abs (UL_level_abs msg))
    (cl:cons ':UR_level_abs (UR_level_abs msg))
    (cl:cons ':C_level_abs (C_level_abs msg))
))
