; Auto-generated. Do not edit!


(cl:in-package nifti_robot_driver_msgs-msg)


;//! \htmlinclude TracksStamped.msg.html

(cl:defclass <TracksStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left
    :reader left
    :initarg :left
    :type cl:float
    :initform 0.0)
   (right
    :reader right
    :initarg :right
    :type cl:float
    :initform 0.0))
)

(cl:defclass TracksStamped (<TracksStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TracksStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TracksStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nifti_robot_driver_msgs-msg:<TracksStamped> is deprecated: use nifti_robot_driver_msgs-msg:TracksStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TracksStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:header-val is deprecated.  Use nifti_robot_driver_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <TracksStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:left-val is deprecated.  Use nifti_robot_driver_msgs-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <TracksStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:right-val is deprecated.  Use nifti_robot_driver_msgs-msg:right instead.")
  (right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TracksStamped>) ostream)
  "Serializes a message object of type '<TracksStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TracksStamped>) istream)
  "Deserializes a message object of type '<TracksStamped>"
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
    (cl:setf (cl:slot-value msg 'left) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TracksStamped>)))
  "Returns string type for a message object of type '<TracksStamped>"
  "nifti_robot_driver_msgs/TracksStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TracksStamped)))
  "Returns string type for a message object of type 'TracksStamped"
  "nifti_robot_driver_msgs/TracksStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TracksStamped>)))
  "Returns md5sum for a message object of type '<TracksStamped>"
  "8f32685125452f5bdf68130369af5296")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TracksStamped)))
  "Returns md5sum for a message object of type 'TracksStamped"
  "8f32685125452f5bdf68130369af5296")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TracksStamped>)))
  "Returns full string definition for message of type '<TracksStamped>"
  (cl:format cl:nil "Header header~%float64 left~%float64 right~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TracksStamped)))
  "Returns full string definition for message of type 'TracksStamped"
  (cl:format cl:nil "Header header~%float64 left~%float64 right~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TracksStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TracksStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'TracksStamped
    (cl:cons ':header (header msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
))
