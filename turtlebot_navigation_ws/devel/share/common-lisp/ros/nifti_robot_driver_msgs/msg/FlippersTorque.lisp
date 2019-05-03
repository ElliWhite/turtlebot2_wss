; Auto-generated. Do not edit!


(cl:in-package nifti_robot_driver_msgs-msg)


;//! \htmlinclude FlippersTorque.msg.html

(cl:defclass <FlippersTorque> (roslisp-msg-protocol:ros-message)
  ((front
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

(cl:defclass FlippersTorque (<FlippersTorque>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FlippersTorque>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FlippersTorque)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nifti_robot_driver_msgs-msg:<FlippersTorque> is deprecated: use nifti_robot_driver_msgs-msg:FlippersTorque instead.")))

(cl:ensure-generic-function 'front-val :lambda-list '(m))
(cl:defmethod front-val ((m <FlippersTorque>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:front-val is deprecated.  Use nifti_robot_driver_msgs-msg:front instead.")
  (front m))

(cl:ensure-generic-function 'rear-val :lambda-list '(m))
(cl:defmethod rear-val ((m <FlippersTorque>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:rear-val is deprecated.  Use nifti_robot_driver_msgs-msg:rear instead.")
  (rear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FlippersTorque>) ostream)
  "Serializes a message object of type '<FlippersTorque>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FlippersTorque>) istream)
  "Deserializes a message object of type '<FlippersTorque>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FlippersTorque>)))
  "Returns string type for a message object of type '<FlippersTorque>"
  "nifti_robot_driver_msgs/FlippersTorque")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FlippersTorque)))
  "Returns string type for a message object of type 'FlippersTorque"
  "nifti_robot_driver_msgs/FlippersTorque")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FlippersTorque>)))
  "Returns md5sum for a message object of type '<FlippersTorque>"
  "04b1a08465bee4bdf0e211984000b44b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FlippersTorque)))
  "Returns md5sum for a message object of type 'FlippersTorque"
  "04b1a08465bee4bdf0e211984000b44b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FlippersTorque>)))
  "Returns full string definition for message of type '<FlippersTorque>"
  (cl:format cl:nil "float64 front~%float64 rear~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FlippersTorque)))
  "Returns full string definition for message of type 'FlippersTorque"
  (cl:format cl:nil "float64 front~%float64 rear~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FlippersTorque>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FlippersTorque>))
  "Converts a ROS message object to a list"
  (cl:list 'FlippersTorque
    (cl:cons ':front (front msg))
    (cl:cons ':rear (rear msg))
))
