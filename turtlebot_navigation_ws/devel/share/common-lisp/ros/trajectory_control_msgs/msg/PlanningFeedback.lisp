; Auto-generated. Do not edit!


(cl:in-package trajectory_control_msgs-msg)


;//! \htmlinclude PlanningFeedback.msg.html

(cl:defclass <PlanningFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (node
    :reader node
    :initarg :node
    :type cl:string
    :initform "")
   (task
    :reader task
    :initarg :task
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PlanningFeedback (<PlanningFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_control_msgs-msg:<PlanningFeedback> is deprecated: use trajectory_control_msgs-msg:PlanningFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlanningFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:header-val is deprecated.  Use trajectory_control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <PlanningFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:node-val is deprecated.  Use trajectory_control_msgs-msg:node instead.")
  (node m))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <PlanningFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:task-val is deprecated.  Use trajectory_control_msgs-msg:task instead.")
  (task m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <PlanningFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:action-val is deprecated.  Use trajectory_control_msgs-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <PlanningFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:status-val is deprecated.  Use trajectory_control_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningFeedback>) ostream)
  "Serializes a message object of type '<PlanningFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task))
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningFeedback>) istream)
  "Deserializes a message object of type '<PlanningFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningFeedback>)))
  "Returns string type for a message object of type '<PlanningFeedback>"
  "trajectory_control_msgs/PlanningFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningFeedback)))
  "Returns string type for a message object of type 'PlanningFeedback"
  "trajectory_control_msgs/PlanningFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningFeedback>)))
  "Returns md5sum for a message object of type '<PlanningFeedback>"
  "03a7f5d00dedecdfea4db265876ab92c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningFeedback)))
  "Returns md5sum for a message object of type 'PlanningFeedback"
  "03a7f5d00dedecdfea4db265876ab92c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningFeedback>)))
  "Returns full string definition for message of type '<PlanningFeedback>"
  (cl:format cl:nil "std_msgs/Header header~%string node   # identifies the node advertising the message: \"control\" (controller), \"planner\" (queue planner) or \"tool\" (rviz waypoints tool)~%string task   # the task name (convention: TaskX, X number of the task)~%int8 action   # the action performed on the task ~%int8 status   # STATUS_FAILURE = -1, STATUS_PLANNING = 0, STATUS_SUCCESS = 1~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningFeedback)))
  "Returns full string definition for message of type 'PlanningFeedback"
  (cl:format cl:nil "std_msgs/Header header~%string node   # identifies the node advertising the message: \"control\" (controller), \"planner\" (queue planner) or \"tool\" (rviz waypoints tool)~%string task   # the task name (convention: TaskX, X number of the task)~%int8 action   # the action performed on the task ~%int8 status   # STATUS_FAILURE = -1, STATUS_PLANNING = 0, STATUS_SUCCESS = 1~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'node))
     4 (cl:length (cl:slot-value msg 'task))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':node (node msg))
    (cl:cons ':task (task msg))
    (cl:cons ':action (action msg))
    (cl:cons ':status (status msg))
))
