; Auto-generated. Do not edit!


(cl:in-package nifti_robot_driver_msgs-msg)


;//! \htmlinclude FlipperCommand.msg.html

(cl:defclass <FlipperCommand> (roslisp-msg-protocol:ros-message)
  ((object_id
    :reader object_id
    :initarg :object_id
    :type cl:integer
    :initform 0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass FlipperCommand (<FlipperCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FlipperCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FlipperCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nifti_robot_driver_msgs-msg:<FlipperCommand> is deprecated: use nifti_robot_driver_msgs-msg:FlipperCommand instead.")))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <FlipperCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:object_id-val is deprecated.  Use nifti_robot_driver_msgs-msg:object_id instead.")
  (object_id m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <FlipperCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:angle-val is deprecated.  Use nifti_robot_driver_msgs-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FlipperCommand>) ostream)
  "Serializes a message object of type '<FlipperCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FlipperCommand>) istream)
  "Deserializes a message object of type '<FlipperCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FlipperCommand>)))
  "Returns string type for a message object of type '<FlipperCommand>"
  "nifti_robot_driver_msgs/FlipperCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FlipperCommand)))
  "Returns string type for a message object of type 'FlipperCommand"
  "nifti_robot_driver_msgs/FlipperCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FlipperCommand>)))
  "Returns md5sum for a message object of type '<FlipperCommand>"
  "bf28a09f7c9275cfbfd7adb239964556")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FlipperCommand)))
  "Returns md5sum for a message object of type 'FlipperCommand"
  "bf28a09f7c9275cfbfd7adb239964556")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FlipperCommand>)))
  "Returns full string definition for message of type '<FlipperCommand>"
  (cl:format cl:nil "#byte ID_FLIPPER_FRONT_LEFT=3~%#byte ID_FLIPPER_FRONT_RIGHT=4~%#byte ID_FLIPPER_REAR_LEFT=5~%#byte ID_FLIPPER_REAR_RIGHT=6~%byte object_id~%float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FlipperCommand)))
  "Returns full string definition for message of type 'FlipperCommand"
  (cl:format cl:nil "#byte ID_FLIPPER_FRONT_LEFT=3~%#byte ID_FLIPPER_FRONT_RIGHT=4~%#byte ID_FLIPPER_REAR_LEFT=5~%#byte ID_FLIPPER_REAR_RIGHT=6~%byte object_id~%float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FlipperCommand>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FlipperCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'FlipperCommand
    (cl:cons ':object_id (object_id msg))
    (cl:cons ':angle (angle msg))
))
