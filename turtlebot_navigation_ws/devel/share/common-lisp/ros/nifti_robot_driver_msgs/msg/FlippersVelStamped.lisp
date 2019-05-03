; Auto-generated. Do not edit!


(cl:in-package nifti_robot_driver_msgs-msg)


;//! \htmlinclude FlippersVelStamped.msg.html

(cl:defclass <FlippersVelStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
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

(cl:defclass FlippersVelStamped (<FlippersVelStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FlippersVelStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FlippersVelStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nifti_robot_driver_msgs-msg:<FlippersVelStamped> is deprecated: use nifti_robot_driver_msgs-msg:FlippersVelStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FlippersVelStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:header-val is deprecated.  Use nifti_robot_driver_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'frontLeft-val :lambda-list '(m))
(cl:defmethod frontLeft-val ((m <FlippersVelStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:frontLeft-val is deprecated.  Use nifti_robot_driver_msgs-msg:frontLeft instead.")
  (frontLeft m))

(cl:ensure-generic-function 'frontRight-val :lambda-list '(m))
(cl:defmethod frontRight-val ((m <FlippersVelStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:frontRight-val is deprecated.  Use nifti_robot_driver_msgs-msg:frontRight instead.")
  (frontRight m))

(cl:ensure-generic-function 'rearLeft-val :lambda-list '(m))
(cl:defmethod rearLeft-val ((m <FlippersVelStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:rearLeft-val is deprecated.  Use nifti_robot_driver_msgs-msg:rearLeft instead.")
  (rearLeft m))

(cl:ensure-generic-function 'rearRight-val :lambda-list '(m))
(cl:defmethod rearRight-val ((m <FlippersVelStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:rearRight-val is deprecated.  Use nifti_robot_driver_msgs-msg:rearRight instead.")
  (rearRight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FlippersVelStamped>) ostream)
  "Serializes a message object of type '<FlippersVelStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FlippersVelStamped>) istream)
  "Deserializes a message object of type '<FlippersVelStamped>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FlippersVelStamped>)))
  "Returns string type for a message object of type '<FlippersVelStamped>"
  "nifti_robot_driver_msgs/FlippersVelStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FlippersVelStamped)))
  "Returns string type for a message object of type 'FlippersVelStamped"
  "nifti_robot_driver_msgs/FlippersVelStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FlippersVelStamped>)))
  "Returns md5sum for a message object of type '<FlippersVelStamped>"
  "88a446f832904937708e487c974640d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FlippersVelStamped)))
  "Returns md5sum for a message object of type 'FlippersVelStamped"
  "88a446f832904937708e487c974640d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FlippersVelStamped>)))
  "Returns full string definition for message of type '<FlippersVelStamped>"
  (cl:format cl:nil "Header header~%float64 frontLeft~%float64 frontRight~%float64 rearLeft~%float64 rearRight~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FlippersVelStamped)))
  "Returns full string definition for message of type 'FlippersVelStamped"
  (cl:format cl:nil "Header header~%float64 frontLeft~%float64 frontRight~%float64 rearLeft~%float64 rearRight~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FlippersVelStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FlippersVelStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'FlippersVelStamped
    (cl:cons ':header (header msg))
    (cl:cons ':frontLeft (frontLeft msg))
    (cl:cons ':frontRight (frontRight msg))
    (cl:cons ':rearLeft (rearLeft msg))
    (cl:cons ':rearRight (rearRight msg))
))
