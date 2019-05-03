; Auto-generated. Do not edit!


(cl:in-package trajectory_control_msgs-msg)


;//! \htmlinclude PlanningTask.msg.html

(cl:defclass <PlanningTask> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (segment_id
    :reader segment_id
    :initarg :segment_id
    :type cl:integer
    :initform 0)
   (segment_count
    :reader segment_count
    :initarg :segment_count
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass PlanningTask (<PlanningTask>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningTask>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningTask)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_control_msgs-msg:<PlanningTask> is deprecated: use trajectory_control_msgs-msg:PlanningTask instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlanningTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:header-val is deprecated.  Use trajectory_control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <PlanningTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:name-val is deprecated.  Use trajectory_control_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'segment_id-val :lambda-list '(m))
(cl:defmethod segment_id-val ((m <PlanningTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:segment_id-val is deprecated.  Use trajectory_control_msgs-msg:segment_id instead.")
  (segment_id m))

(cl:ensure-generic-function 'segment_count-val :lambda-list '(m))
(cl:defmethod segment_count-val ((m <PlanningTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:segment_count-val is deprecated.  Use trajectory_control_msgs-msg:segment_count instead.")
  (segment_count m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PlanningTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:type-val is deprecated.  Use trajectory_control_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <PlanningTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:waypoints-val is deprecated.  Use trajectory_control_msgs-msg:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningTask>) ostream)
  "Serializes a message object of type '<PlanningTask>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'segment_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'segment_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningTask>) istream)
  "Deserializes a message object of type '<PlanningTask>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'segment_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'segment_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningTask>)))
  "Returns string type for a message object of type '<PlanningTask>"
  "trajectory_control_msgs/PlanningTask")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningTask)))
  "Returns string type for a message object of type 'PlanningTask"
  "trajectory_control_msgs/PlanningTask")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningTask>)))
  "Returns md5sum for a message object of type '<PlanningTask>"
  "2021ccde8231d7f64ad6cc286e585b51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningTask)))
  "Returns md5sum for a message object of type 'PlanningTask"
  "2021ccde8231d7f64ad6cc286e585b51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningTask>)))
  "Returns full string definition for message of type '<PlanningTask>"
  (cl:format cl:nil "std_msgs/Header header~%string name                      # task name; a planning task is a vector of task-segments; a task-segment is composed by a start and a goal (two points). ~%int32 segment_id                 # ~%int32 segment_count              # count number of waypoints inside the task~%uint8  type                      # NORMAL=0, CYCLIC = 1~%geometry_msgs/Point[] waypoints  # array of waypoints~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningTask)))
  "Returns full string definition for message of type 'PlanningTask"
  (cl:format cl:nil "std_msgs/Header header~%string name                      # task name; a planning task is a vector of task-segments; a task-segment is composed by a start and a goal (two points). ~%int32 segment_id                 # ~%int32 segment_count              # count number of waypoints inside the task~%uint8  type                      # NORMAL=0, CYCLIC = 1~%geometry_msgs/Point[] waypoints  # array of waypoints~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningTask>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningTask>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningTask
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':segment_id (segment_id msg))
    (cl:cons ':segment_count (segment_count msg))
    (cl:cons ':type (type msg))
    (cl:cons ':waypoints (waypoints msg))
))
