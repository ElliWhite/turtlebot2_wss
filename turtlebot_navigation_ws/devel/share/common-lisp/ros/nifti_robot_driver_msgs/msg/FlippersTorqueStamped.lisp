; Auto-generated. Do not edit!


(cl:in-package nifti_robot_driver_msgs-msg)


;//! \htmlinclude FlippersTorqueStamped.msg.html

(cl:defclass <FlippersTorqueStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (front
    :reader front
    :initarg :front
    :type cl:float
    :initform 0.0)
   (rear
    :reader rear
    :initarg :rear
    :type cl:float
    :initform 0.0))
)

(cl:defclass FlippersTorqueStamped (<FlippersTorqueStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FlippersTorqueStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FlippersTorqueStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nifti_robot_driver_msgs-msg:<FlippersTorqueStamped> is deprecated: use nifti_robot_driver_msgs-msg:FlippersTorqueStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FlippersTorqueStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:header-val is deprecated.  Use nifti_robot_driver_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'front-val :lambda-list '(m))
(cl:defmethod front-val ((m <FlippersTorqueStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:front-val is deprecated.  Use nifti_robot_driver_msgs-msg:front instead.")
  (front m))

(cl:ensure-generic-function 'rear-val :lambda-list '(m))
(cl:defmethod rear-val ((m <FlippersTorqueStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:rear-val is deprecated.  Use nifti_robot_driver_msgs-msg:rear instead.")
  (rear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FlippersTorqueStamped>) ostream)
  "Serializes a message object of type '<FlippersTorqueStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'front))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FlippersTorqueStamped>) istream)
  "Deserializes a message object of type '<FlippersTorqueStamped>"
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
    (cl:setf (cl:slot-value msg 'front) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FlippersTorqueStamped>)))
  "Returns string type for a message object of type '<FlippersTorqueStamped>"
  "nifti_robot_driver_msgs/FlippersTorqueStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FlippersTorqueStamped)))
  "Returns string type for a message object of type 'FlippersTorqueStamped"
  "nifti_robot_driver_msgs/FlippersTorqueStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FlippersTorqueStamped>)))
  "Returns md5sum for a message object of type '<FlippersTorqueStamped>"
  "d5ab8eb99f0506b019e2e899a4f96426")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FlippersTorqueStamped)))
  "Returns md5sum for a message object of type 'FlippersTorqueStamped"
  "d5ab8eb99f0506b019e2e899a4f96426")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FlippersTorqueStamped>)))
  "Returns full string definition for message of type '<FlippersTorqueStamped>"
  (cl:format cl:nil "Header header~%float64 front~%float64 rear~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FlippersTorqueStamped)))
  "Returns full string definition for message of type 'FlippersTorqueStamped"
  (cl:format cl:nil "Header header~%float64 front~%float64 rear~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FlippersTorqueStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FlippersTorqueStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'FlippersTorqueStamped
    (cl:cons ':header (header msg))
    (cl:cons ':front (front msg))
    (cl:cons ':rear (rear msg))
))
