; Auto-generated. Do not edit!


(cl:in-package nifti_robot_driver_msgs-msg)


;//! \htmlinclude ControllersStatus.msg.html

(cl:defclass <ControllersStatus> (roslisp-msg-protocol:ros-message)
  ((core
    :reader core
    :initarg :core
    :type cl:integer
    :initform 0)
   (track_left
    :reader track_left
    :initarg :track_left
    :type cl:integer
    :initform 0)
   (track_right
    :reader track_right
    :initarg :track_right
    :type cl:integer
    :initform 0)
   (flipper_front_left
    :reader flipper_front_left
    :initarg :flipper_front_left
    :type cl:integer
    :initform 0)
   (flipper_front_right
    :reader flipper_front_right
    :initarg :flipper_front_right
    :type cl:integer
    :initform 0)
   (flipper_rear_left
    :reader flipper_rear_left
    :initarg :flipper_rear_left
    :type cl:integer
    :initform 0)
   (flipper_rear_right
    :reader flipper_rear_right
    :initarg :flipper_rear_right
    :type cl:integer
    :initform 0))
)

(cl:defclass ControllersStatus (<ControllersStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllersStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllersStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nifti_robot_driver_msgs-msg:<ControllersStatus> is deprecated: use nifti_robot_driver_msgs-msg:ControllersStatus instead.")))

(cl:ensure-generic-function 'core-val :lambda-list '(m))
(cl:defmethod core-val ((m <ControllersStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:core-val is deprecated.  Use nifti_robot_driver_msgs-msg:core instead.")
  (core m))

(cl:ensure-generic-function 'track_left-val :lambda-list '(m))
(cl:defmethod track_left-val ((m <ControllersStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:track_left-val is deprecated.  Use nifti_robot_driver_msgs-msg:track_left instead.")
  (track_left m))

(cl:ensure-generic-function 'track_right-val :lambda-list '(m))
(cl:defmethod track_right-val ((m <ControllersStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:track_right-val is deprecated.  Use nifti_robot_driver_msgs-msg:track_right instead.")
  (track_right m))

(cl:ensure-generic-function 'flipper_front_left-val :lambda-list '(m))
(cl:defmethod flipper_front_left-val ((m <ControllersStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:flipper_front_left-val is deprecated.  Use nifti_robot_driver_msgs-msg:flipper_front_left instead.")
  (flipper_front_left m))

(cl:ensure-generic-function 'flipper_front_right-val :lambda-list '(m))
(cl:defmethod flipper_front_right-val ((m <ControllersStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:flipper_front_right-val is deprecated.  Use nifti_robot_driver_msgs-msg:flipper_front_right instead.")
  (flipper_front_right m))

(cl:ensure-generic-function 'flipper_rear_left-val :lambda-list '(m))
(cl:defmethod flipper_rear_left-val ((m <ControllersStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:flipper_rear_left-val is deprecated.  Use nifti_robot_driver_msgs-msg:flipper_rear_left instead.")
  (flipper_rear_left m))

(cl:ensure-generic-function 'flipper_rear_right-val :lambda-list '(m))
(cl:defmethod flipper_rear_right-val ((m <ControllersStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:flipper_rear_right-val is deprecated.  Use nifti_robot_driver_msgs-msg:flipper_rear_right instead.")
  (flipper_rear_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllersStatus>) ostream)
  "Serializes a message object of type '<ControllersStatus>"
  (cl:let* ((signed (cl:slot-value msg 'core)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'track_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'track_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'flipper_front_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'flipper_front_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'flipper_rear_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'flipper_rear_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllersStatus>) istream)
  "Deserializes a message object of type '<ControllersStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'core) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'track_left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'track_right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flipper_front_left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flipper_front_right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flipper_rear_left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flipper_rear_right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllersStatus>)))
  "Returns string type for a message object of type '<ControllersStatus>"
  "nifti_robot_driver_msgs/ControllersStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllersStatus)))
  "Returns string type for a message object of type 'ControllersStatus"
  "nifti_robot_driver_msgs/ControllersStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllersStatus>)))
  "Returns md5sum for a message object of type '<ControllersStatus>"
  "dd206d136b46c978abb3dde3682bb506")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllersStatus)))
  "Returns md5sum for a message object of type 'ControllersStatus"
  "dd206d136b46c978abb3dde3682bb506")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllersStatus>)))
  "Returns full string definition for message of type '<ControllersStatus>"
  (cl:format cl:nil "int32 core~%int32 track_left~%int32 track_right~%int32 flipper_front_left~%int32 flipper_front_right~%int32 flipper_rear_left~%int32 flipper_rear_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllersStatus)))
  "Returns full string definition for message of type 'ControllersStatus"
  (cl:format cl:nil "int32 core~%int32 track_left~%int32 track_right~%int32 flipper_front_left~%int32 flipper_front_right~%int32 flipper_rear_left~%int32 flipper_rear_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllersStatus>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllersStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllersStatus
    (cl:cons ':core (core msg))
    (cl:cons ':track_left (track_left msg))
    (cl:cons ':track_right (track_right msg))
    (cl:cons ':flipper_front_left (flipper_front_left msg))
    (cl:cons ':flipper_front_right (flipper_front_right msg))
    (cl:cons ':flipper_rear_left (flipper_rear_left msg))
    (cl:cons ':flipper_rear_right (flipper_rear_right msg))
))
