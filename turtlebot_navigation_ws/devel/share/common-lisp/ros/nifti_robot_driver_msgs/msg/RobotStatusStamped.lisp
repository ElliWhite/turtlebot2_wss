; Auto-generated. Do not edit!


(cl:in-package nifti_robot_driver_msgs-msg)


;//! \htmlinclude RobotStatusStamped.msg.html

(cl:defclass <RobotStatusStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (battery_level
    :reader battery_level
    :initarg :battery_level
    :type cl:float
    :initform 0.0)
   (battery_status
    :reader battery_status
    :initarg :battery_status
    :type cl:integer
    :initform 0)
   (brake_on
    :reader brake_on
    :initarg :brake_on
    :type cl:boolean
    :initform cl:nil)
   (emergency_stop_on
    :reader emergency_stop_on
    :initarg :emergency_stop_on
    :type cl:boolean
    :initform cl:nil)
   (scanning_speed
    :reader scanning_speed
    :initarg :scanning_speed
    :type cl:float
    :initform 0.0)
   (controllers_status
    :reader controllers_status
    :initarg :controllers_status
    :type nifti_robot_driver_msgs-msg:ControllersStatus
    :initform (cl:make-instance 'nifti_robot_driver_msgs-msg:ControllersStatus))
   (controllers_error
    :reader controllers_error
    :initarg :controllers_error
    :type nifti_robot_driver_msgs-msg:ControllersStatus
    :initform (cl:make-instance 'nifti_robot_driver_msgs-msg:ControllersStatus)))
)

(cl:defclass RobotStatusStamped (<RobotStatusStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStatusStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStatusStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nifti_robot_driver_msgs-msg:<RobotStatusStamped> is deprecated: use nifti_robot_driver_msgs-msg:RobotStatusStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotStatusStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:header-val is deprecated.  Use nifti_robot_driver_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'battery_level-val :lambda-list '(m))
(cl:defmethod battery_level-val ((m <RobotStatusStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:battery_level-val is deprecated.  Use nifti_robot_driver_msgs-msg:battery_level instead.")
  (battery_level m))

(cl:ensure-generic-function 'battery_status-val :lambda-list '(m))
(cl:defmethod battery_status-val ((m <RobotStatusStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:battery_status-val is deprecated.  Use nifti_robot_driver_msgs-msg:battery_status instead.")
  (battery_status m))

(cl:ensure-generic-function 'brake_on-val :lambda-list '(m))
(cl:defmethod brake_on-val ((m <RobotStatusStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:brake_on-val is deprecated.  Use nifti_robot_driver_msgs-msg:brake_on instead.")
  (brake_on m))

(cl:ensure-generic-function 'emergency_stop_on-val :lambda-list '(m))
(cl:defmethod emergency_stop_on-val ((m <RobotStatusStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:emergency_stop_on-val is deprecated.  Use nifti_robot_driver_msgs-msg:emergency_stop_on instead.")
  (emergency_stop_on m))

(cl:ensure-generic-function 'scanning_speed-val :lambda-list '(m))
(cl:defmethod scanning_speed-val ((m <RobotStatusStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:scanning_speed-val is deprecated.  Use nifti_robot_driver_msgs-msg:scanning_speed instead.")
  (scanning_speed m))

(cl:ensure-generic-function 'controllers_status-val :lambda-list '(m))
(cl:defmethod controllers_status-val ((m <RobotStatusStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:controllers_status-val is deprecated.  Use nifti_robot_driver_msgs-msg:controllers_status instead.")
  (controllers_status m))

(cl:ensure-generic-function 'controllers_error-val :lambda-list '(m))
(cl:defmethod controllers_error-val ((m <RobotStatusStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_robot_driver_msgs-msg:controllers_error-val is deprecated.  Use nifti_robot_driver_msgs-msg:controllers_error instead.")
  (controllers_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStatusStamped>) ostream)
  "Serializes a message object of type '<RobotStatusStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'battery_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'battery_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency_stop_on) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'scanning_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'controllers_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'controllers_error) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStatusStamped>) istream)
  "Deserializes a message object of type '<RobotStatusStamped>"
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
    (cl:setf (cl:slot-value msg 'battery_level) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'brake_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'emergency_stop_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scanning_speed) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'controllers_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'controllers_error) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStatusStamped>)))
  "Returns string type for a message object of type '<RobotStatusStamped>"
  "nifti_robot_driver_msgs/RobotStatusStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStatusStamped)))
  "Returns string type for a message object of type 'RobotStatusStamped"
  "nifti_robot_driver_msgs/RobotStatusStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStatusStamped>)))
  "Returns md5sum for a message object of type '<RobotStatusStamped>"
  "57c03a2db12d8cfa50a17fe84f95f4c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStatusStamped)))
  "Returns md5sum for a message object of type 'RobotStatusStamped"
  "57c03a2db12d8cfa50a17fe84f95f4c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStatusStamped>)))
  "Returns full string definition for message of type '<RobotStatusStamped>"
  (cl:format cl:nil "Header header~%#int32 BAT_CRITICAL=2~%#int32 BAT_WARNING=1~%#int32 BAT_OK=0~%float64 battery_level~%int32 battery_status~%bool brake_on~%bool emergency_stop_on~%float64 scanning_speed~%ControllersStatus controllers_status~%ControllersStatus controllers_error~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nifti_robot_driver_msgs/ControllersStatus~%int32 core~%int32 track_left~%int32 track_right~%int32 flipper_front_left~%int32 flipper_front_right~%int32 flipper_rear_left~%int32 flipper_rear_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStatusStamped)))
  "Returns full string definition for message of type 'RobotStatusStamped"
  (cl:format cl:nil "Header header~%#int32 BAT_CRITICAL=2~%#int32 BAT_WARNING=1~%#int32 BAT_OK=0~%float64 battery_level~%int32 battery_status~%bool brake_on~%bool emergency_stop_on~%float64 scanning_speed~%ControllersStatus controllers_status~%ControllersStatus controllers_error~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nifti_robot_driver_msgs/ControllersStatus~%int32 core~%int32 track_left~%int32 track_right~%int32 flipper_front_left~%int32 flipper_front_right~%int32 flipper_rear_left~%int32 flipper_rear_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStatusStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4
     1
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'controllers_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'controllers_error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStatusStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStatusStamped
    (cl:cons ':header (header msg))
    (cl:cons ':battery_level (battery_level msg))
    (cl:cons ':battery_status (battery_status msg))
    (cl:cons ':brake_on (brake_on msg))
    (cl:cons ':emergency_stop_on (emergency_stop_on msg))
    (cl:cons ':scanning_speed (scanning_speed msg))
    (cl:cons ':controllers_status (controllers_status msg))
    (cl:cons ':controllers_error (controllers_error msg))
))
