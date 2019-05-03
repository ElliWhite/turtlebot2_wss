; Auto-generated. Do not edit!


(cl:in-package trajectory_control_msgs-msg)


;//! \htmlinclude PlanningGlobalPath.msg.html

(cl:defclass <PlanningGlobalPath> (roslisp-msg-protocol:ros-message)
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
   (task_id
    :reader task_id
    :initarg :task_id
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
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass PlanningGlobalPath (<PlanningGlobalPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningGlobalPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningGlobalPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_control_msgs-msg:<PlanningGlobalPath> is deprecated: use trajectory_control_msgs-msg:PlanningGlobalPath instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlanningGlobalPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:header-val is deprecated.  Use trajectory_control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <PlanningGlobalPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:name-val is deprecated.  Use trajectory_control_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <PlanningGlobalPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:task_id-val is deprecated.  Use trajectory_control_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PlanningGlobalPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:type-val is deprecated.  Use trajectory_control_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <PlanningGlobalPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:waypoints-val is deprecated.  Use trajectory_control_msgs-msg:waypoints instead.")
  (waypoints m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <PlanningGlobalPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:path-val is deprecated.  Use trajectory_control_msgs-msg:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningGlobalPath>) ostream)
  "Serializes a message object of type '<PlanningGlobalPath>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'task_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningGlobalPath>) istream)
  "Deserializes a message object of type '<PlanningGlobalPath>"
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
      (cl:setf (cl:slot-value msg 'task_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningGlobalPath>)))
  "Returns string type for a message object of type '<PlanningGlobalPath>"
  "trajectory_control_msgs/PlanningGlobalPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningGlobalPath)))
  "Returns string type for a message object of type 'PlanningGlobalPath"
  "trajectory_control_msgs/PlanningGlobalPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningGlobalPath>)))
  "Returns md5sum for a message object of type '<PlanningGlobalPath>"
  "bcb6b89f087c9569c38f6953756f6de0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningGlobalPath)))
  "Returns md5sum for a message object of type 'PlanningGlobalPath"
  "bcb6b89f087c9569c38f6953756f6de0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningGlobalPath>)))
  "Returns full string definition for message of type '<PlanningGlobalPath>"
  (cl:format cl:nil "std_msgs/Header header~%string name                      # task name; a planning task is a vector of task-segments; a task-segment is composed by a start and a goal (two points). ~%int32 task_id~%uint8  type                      # NORMAL=0, CYCLIC = 1~%geometry_msgs/Point[] waypoints  # array of waypoints~%nav_msgs/Path path               # the computed path which joins the waypoints ~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningGlobalPath)))
  "Returns full string definition for message of type 'PlanningGlobalPath"
  (cl:format cl:nil "std_msgs/Header header~%string name                      # task name; a planning task is a vector of task-segments; a task-segment is composed by a start and a goal (two points). ~%int32 task_id~%uint8  type                      # NORMAL=0, CYCLIC = 1~%geometry_msgs/Point[] waypoints  # array of waypoints~%nav_msgs/Path path               # the computed path which joins the waypoints ~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningGlobalPath>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'name))
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningGlobalPath>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningGlobalPath
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':waypoints (waypoints msg))
    (cl:cons ':path (path msg))
))
