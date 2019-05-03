; Auto-generated. Do not edit!


(cl:in-package nifti_robot_driver_msgs-msg)


;//! \htmlinclude CurrentsStamped.msg.html

(cl:defclass <CurrentsStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (trackLeft
    :reader trackLeft
    :initarg :trackLeft
    :type cl:float
    :initform 0.0)
   (trackRight
    :reader trackRight
    :initarg :trackRight
    :type cl:float
    :initform 0.0)
   (frontLeft
    :reader frontLeft
    :initarg :frontLeft
    :type cl:float
    :initform 0.0)
   (frontRight
    :reader frontRight
    :initarg :frontRight
    :type cl:float
    :initform 0.0)
   (rearLeft
    :reader rearLeft
    :initarg :rearLeft
    :type cl:float
    :initform 0.0)
   (rearRight
    :reader rearRight
    :initarg :rearRight
    :type cl:float
    :initform 0.0))
)

(cl:defclass CurrentsStamped (<CurrentsStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentsStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentsStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nifti_robot_driver_msgs-msg:<CurrentsStamped> is deprecated: use nifti_robot_driver_msgs-msg:CurrentsStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CurrentsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:header-val is deprecated.  Use nifti_robot_driver_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'trackLeft-val :lambda-list '(m))
(cl:defmethod trackLeft-val ((m <CurrentsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:trackLeft-val is deprecated.  Use nifti_robot_driver_msgs-msg:trackLeft instead.")
  (trackLeft m))

(cl:ensure-generic-function 'trackRight-val :lambda-list '(m))
(cl:defmethod trackRight-val ((m <CurrentsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:trackRight-val is deprecated.  Use nifti_robot_driver_msgs-msg:trackRight instead.")
  (trackRight m))

(cl:ensure-generic-function 'frontLeft-val :lambda-list '(m))
(cl:defmethod frontLeft-val ((m <CurrentsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:frontLeft-val is deprecated.  Use nifti_robot_driver_msgs-msg:frontLeft instead.")
  (frontLeft m))

(cl:ensure-generic-function 'frontRight-val :lambda-list '(m))
(cl:defmethod frontRight-val ((m <CurrentsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:frontRight-val is deprecated.  Use nifti_robot_driver_msgs-msg:frontRight instead.")
  (frontRight m))

(cl:ensure-generic-function 'rearLeft-val :lambda-list '(m))
(cl:defmethod rearLeft-val ((m <CurrentsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:rearLeft-val is deprecated.  Use nifti_robot_driver_msgs-msg:rearLeft instead.")
  (rearLeft m))

(cl:ensure-generic-function 'rearRight-val :lambda-list '(m))
(cl:defmethod rearRight-val ((m <CurrentsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:rearRight-val is deprecated.  Use nifti_robot_driver_msgs-msg:rearRight instead.")
  (rearRight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentsStamped>) ostream)
  "Serializes a message object of type '<CurrentsStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'trackLeft))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'trackRight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'frontLeft))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'frontRight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rearLeft))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rearRight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentsStamped>) istream)
  "Deserializes a message object of type '<CurrentsStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trackLeft) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trackRight) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frontLeft) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frontRight) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rearLeft) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rearRight) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentsStamped>)))
  "Returns string type for a message object of type '<CurrentsStamped>"
  "nifti_robot_driver_msgs/CurrentsStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentsStamped)))
  "Returns string type for a message object of type 'CurrentsStamped"
  "nifti_robot_driver_msgs/CurrentsStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentsStamped>)))
  "Returns md5sum for a message object of type '<CurrentsStamped>"
  "612d7c364d952e0d2170a2821dd2bd7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentsStamped)))
  "Returns md5sum for a message object of type 'CurrentsStamped"
  "612d7c364d952e0d2170a2821dd2bd7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentsStamped>)))
  "Returns full string definition for message of type '<CurrentsStamped>"
  (cl:format cl:nil "Header header~%float64 trackLeft~%float64 trackRight~%float64 frontLeft~%float64 frontRight~%float64 rearLeft~%float64 rearRight~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentsStamped)))
  "Returns full string definition for message of type 'CurrentsStamped"
  (cl:format cl:nil "Header header~%float64 trackLeft~%float64 trackRight~%float64 frontLeft~%float64 frontRight~%float64 rearLeft~%float64 rearRight~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentsStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentsStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentsStamped
    (cl:cons ':header (header msg))
    (cl:cons ':trackLeft (trackLeft msg))
    (cl:cons ':trackRight (trackRight msg))
    (cl:cons ':frontLeft (frontLeft msg))
    (cl:cons ':frontRight (frontRight msg))
    (cl:cons ':rearLeft (rearLeft msg))
    (cl:cons ':rearRight (rearRight msg))
))
