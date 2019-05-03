; Auto-generated. Do not edit!


(cl:in-package trajectory_control_msgs-msg)


;//! \htmlinclude PlanningStatus.msg.html

(cl:defclass <PlanningStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (path_cost
    :reader path_cost
    :initarg :path_cost
    :type cl:float
    :initform 0.0))
)

(cl:defclass PlanningStatus (<PlanningStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_control_msgs-msg:<PlanningStatus> is deprecated: use trajectory_control_msgs-msg:PlanningStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlanningStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:header-val is deprecated.  Use trajectory_control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PlanningStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:success-val is deprecated.  Use trajectory_control_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <PlanningStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:status-val is deprecated.  Use trajectory_control_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'path_cost-val :lambda-list '(m))
(cl:defmethod path_cost-val ((m <PlanningStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:path_cost-val is deprecated.  Use trajectory_control_msgs-msg:path_cost instead.")
  (path_cost m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PlanningStatus>)))
    "Constants for message type '<PlanningStatus>"
  '((:KNONE . 0)
    (:KNOTREADY . 1)
    (:KINPUTFAILURE . 2)
    (:KFAILURE . 3)
    (:KSUCCESS . 4)
    (:KARRIVED . 5)
    (:KABORTED . 6)
    (:KTRANSFORMFAILURE . 7)
    (:KFIRSTSUCCESS . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PlanningStatus)))
    "Constants for message type 'PlanningStatus"
  '((:KNONE . 0)
    (:KNOTREADY . 1)
    (:KINPUTFAILURE . 2)
    (:KFAILURE . 3)
    (:KSUCCESS . 4)
    (:KARRIVED . 5)
    (:KABORTED . 6)
    (:KTRANSFORMFAILURE . 7)
    (:KFIRSTSUCCESS . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningStatus>) ostream)
  "Serializes a message object of type '<PlanningStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'path_cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningStatus>) istream)
  "Deserializes a message object of type '<PlanningStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'path_cost) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningStatus>)))
  "Returns string type for a message object of type '<PlanningStatus>"
  "trajectory_control_msgs/PlanningStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningStatus)))
  "Returns string type for a message object of type 'PlanningStatus"
  "trajectory_control_msgs/PlanningStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningStatus>)))
  "Returns md5sum for a message object of type '<PlanningStatus>"
  "084e09d6e48ac8e8b97fe72e6fc78fb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningStatus)))
  "Returns md5sum for a message object of type 'PlanningStatus"
  "084e09d6e48ac8e8b97fe72e6fc78fb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningStatus>)))
  "Returns full string definition for message of type '<PlanningStatus>"
  (cl:format cl:nil "uint8 kNone             = 0~%uint8 kNotReady         = 1  ~%uint8 kInputFailure     = 2 ~%uint8 kFailure          = 3~%uint8 kSuccess          = 4~%uint8 kArrived          = 5~%uint8 kAborted          = 6~%uint8 kTransformFailure = 7~%uint8 kFirstSuccess     = 8~%~%std_msgs/Header header~%bool success                   # result of the path planner: false in case a solution was not found for some reason, true otherwise~%uint8 status		       # status type: detailed status of the path planner (use one of the constants above )~%float64 path_cost	       # cost of the planned path: \"< 0\" means invalid~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningStatus)))
  "Returns full string definition for message of type 'PlanningStatus"
  (cl:format cl:nil "uint8 kNone             = 0~%uint8 kNotReady         = 1  ~%uint8 kInputFailure     = 2 ~%uint8 kFailure          = 3~%uint8 kSuccess          = 4~%uint8 kArrived          = 5~%uint8 kAborted          = 6~%uint8 kTransformFailure = 7~%uint8 kFirstSuccess     = 8~%~%std_msgs/Header header~%bool success                   # result of the path planner: false in case a solution was not found for some reason, true otherwise~%uint8 status		       # status type: detailed status of the path planner (use one of the constants above )~%float64 path_cost	       # cost of the planned path: \"< 0\" means invalid~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningStatus
    (cl:cons ':header (header msg))
    (cl:cons ':success (success msg))
    (cl:cons ':status (status msg))
    (cl:cons ':path_cost (path_cost msg))
))
