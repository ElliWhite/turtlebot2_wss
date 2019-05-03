; Auto-generated. Do not edit!


(cl:in-package nifti_robot_driver_msgs-msg)


;//! \htmlinclude FlippersState.msg.html

(cl:defclass <FlippersState> (roslisp-msg-protocol:ros-message)
  ((frontLeft
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

(cl:defclass FlippersState (<FlippersState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FlippersState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FlippersState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nifti_robot_driver_msgs-msg:<FlippersState> is deprecated: use nifti_robot_driver_msgs-msg:FlippersState instead.")))

(cl:ensure-generic-function 'frontLeft-val :lambda-list '(m))
(cl:defmethod frontLeft-val ((m <FlippersState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:frontLeft-val is deprecated.  Use nifti_robot_driver_msgs-msg:frontLeft instead.")
  (frontLeft m))

(cl:ensure-generic-function 'frontRight-val :lambda-list '(m))
(cl:defmethod frontRight-val ((m <FlippersState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:frontRight-val is deprecated.  Use nifti_robot_driver_msgs-msg:frontRight instead.")
  (frontRight m))

(cl:ensure-generic-function 'rearLeft-val :lambda-list '(m))
(cl:defmethod rearLeft-val ((m <FlippersState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:rearLeft-val is deprecated.  Use nifti_robot_driver_msgs-msg:rearLeft instead.")
  (rearLeft m))

(cl:ensure-generic-function 'rearRight-val :lambda-list '(m))
(cl:defmethod rearRight-val ((m <FlippersState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:rearRight-val is deprecated.  Use nifti_robot_driver_msgs-msg:rearRight instead.")
  (rearRight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FlippersState>) ostream)
  "Serializes a message object of type '<FlippersState>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FlippersState>) istream)
  "Deserializes a message object of type '<FlippersState>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FlippersState>)))
  "Returns string type for a message object of type '<FlippersState>"
  "nifti_robot_driver_msgs/FlippersState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FlippersState)))
  "Returns string type for a message object of type 'FlippersState"
  "nifti_robot_driver_msgs/FlippersState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FlippersState>)))
  "Returns md5sum for a message object of type '<FlippersState>"
  "7e95d6456aca0895fd90cacc4b232a69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FlippersState)))
  "Returns md5sum for a message object of type 'FlippersState"
  "7e95d6456aca0895fd90cacc4b232a69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FlippersState>)))
  "Returns full string definition for message of type '<FlippersState>"
  (cl:format cl:nil "float64 frontLeft~%float64 frontRight~%float64 rearLeft~%float64 rearRight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FlippersState)))
  "Returns full string definition for message of type 'FlippersState"
  (cl:format cl:nil "float64 frontLeft~%float64 frontRight~%float64 rearLeft~%float64 rearRight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FlippersState>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FlippersState>))
  "Converts a ROS message object to a list"
  (cl:list 'FlippersState
    (cl:cons ':frontLeft (frontLeft msg))
    (cl:cons ':frontRight (frontRight msg))
    (cl:cons ':rearLeft (rearLeft msg))
    (cl:cons ':rearRight (rearRight msg))
))
