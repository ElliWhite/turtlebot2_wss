; Auto-generated. Do not edit!


(cl:in-package nifti_robot_driver_msgs-msg)


;//! \htmlinclude Currents.msg.html

(cl:defclass <Currents> (roslisp-msg-protocol:ros-message)
  ((trackLeft
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

(cl:defclass Currents (<Currents>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Currents>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Currents)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nifti_robot_driver_msgs-msg:<Currents> is deprecated: use nifti_robot_driver_msgs-msg:Currents instead.")))

(cl:ensure-generic-function 'trackLeft-val :lambda-list '(m))
(cl:defmethod trackLeft-val ((m <Currents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:trackLeft-val is deprecated.  Use nifti_robot_driver_msgs-msg:trackLeft instead.")
  (trackLeft m))

(cl:ensure-generic-function 'trackRight-val :lambda-list '(m))
(cl:defmethod trackRight-val ((m <Currents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:trackRight-val is deprecated.  Use nifti_robot_driver_msgs-msg:trackRight instead.")
  (trackRight m))

(cl:ensure-generic-function 'frontLeft-val :lambda-list '(m))
(cl:defmethod frontLeft-val ((m <Currents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:frontLeft-val is deprecated.  Use nifti_robot_driver_msgs-msg:frontLeft instead.")
  (frontLeft m))

(cl:ensure-generic-function 'frontRight-val :lambda-list '(m))
(cl:defmethod frontRight-val ((m <Currents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:frontRight-val is deprecated.  Use nifti_robot_driver_msgs-msg:frontRight instead.")
  (frontRight m))

(cl:ensure-generic-function 'rearLeft-val :lambda-list '(m))
(cl:defmethod rearLeft-val ((m <Currents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:rearLeft-val is deprecated.  Use nifti_robot_driver_msgs-msg:rearLeft instead.")
  (rearLeft m))

(cl:ensure-generic-function 'rearRight-val :lambda-list '(m))
(cl:defmethod rearRight-val ((m <Currents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:rearRight-val is deprecated.  Use nifti_robot_driver_msgs-msg:rearRight instead.")
  (rearRight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Currents>) ostream)
  "Serializes a message object of type '<Currents>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Currents>) istream)
  "Deserializes a message object of type '<Currents>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Currents>)))
  "Returns string type for a message object of type '<Currents>"
  "nifti_robot_driver_msgs/Currents")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Currents)))
  "Returns string type for a message object of type 'Currents"
  "nifti_robot_driver_msgs/Currents")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Currents>)))
  "Returns md5sum for a message object of type '<Currents>"
  "001c804af8b75a2e21ad7a80719679e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Currents)))
  "Returns md5sum for a message object of type 'Currents"
  "001c804af8b75a2e21ad7a80719679e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Currents>)))
  "Returns full string definition for message of type '<Currents>"
  (cl:format cl:nil "float64 trackLeft~%float64 trackRight~%float64 frontLeft~%float64 frontRight~%float64 rearLeft~%float64 rearRight~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Currents)))
  "Returns full string definition for message of type 'Currents"
  (cl:format cl:nil "float64 trackLeft~%float64 trackRight~%float64 frontLeft~%float64 frontRight~%float64 rearLeft~%float64 rearRight~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Currents>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Currents>))
  "Converts a ROS message object to a list"
  (cl:list 'Currents
    (cl:cons ':trackLeft (trackLeft msg))
    (cl:cons ':trackRight (trackRight msg))
    (cl:cons ':frontLeft (frontLeft msg))
    (cl:cons ':frontRight (frontRight msg))
    (cl:cons ':rearLeft (rearLeft msg))
    (cl:cons ':rearRight (rearRight msg))
))
