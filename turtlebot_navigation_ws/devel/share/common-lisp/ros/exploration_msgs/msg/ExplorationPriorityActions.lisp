; Auto-generated. Do not edit!


(cl:in-package exploration_msgs-msg)


;//! \htmlinclude ExplorationPriorityActions.msg.html

(cl:defclass <ExplorationPriorityActions> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sender
    :reader sender
    :initarg :sender
    :type cl:fixnum
    :initform 0)
   (num_points
    :reader num_points
    :initarg :num_points
    :type cl:integer
    :initform 0)
   (priority_points
    :reader priority_points
    :initarg :priority_points
    :type (cl:vector exploration_msgs-msg:ExplorationPriorityPoint)
   :initform (cl:make-array 0 :element-type 'exploration_msgs-msg:ExplorationPriorityPoint :initial-element (cl:make-instance 'exploration_msgs-msg:ExplorationPriorityPoint))))
)

(cl:defclass ExplorationPriorityActions (<ExplorationPriorityActions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExplorationPriorityActions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExplorationPriorityActions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration_msgs-msg:<ExplorationPriorityActions> is deprecated: use exploration_msgs-msg:ExplorationPriorityActions instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ExplorationPriorityActions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:header-val is deprecated.  Use exploration_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sender-val :lambda-list '(m))
(cl:defmethod sender-val ((m <ExplorationPriorityActions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:sender-val is deprecated.  Use exploration_msgs-msg:sender instead.")
  (sender m))

(cl:ensure-generic-function 'num_points-val :lambda-list '(m))
(cl:defmethod num_points-val ((m <ExplorationPriorityActions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:num_points-val is deprecated.  Use exploration_msgs-msg:num_points instead.")
  (num_points m))

(cl:ensure-generic-function 'priority_points-val :lambda-list '(m))
(cl:defmethod priority_points-val ((m <ExplorationPriorityActions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:priority_points-val is deprecated.  Use exploration_msgs-msg:priority_points instead.")
  (priority_points m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ExplorationPriorityActions>)))
    "Constants for message type '<ExplorationPriorityActions>"
  '((:KSENDEREXPLORER . 0)
    (:KSENDERGUI . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ExplorationPriorityActions)))
    "Constants for message type 'ExplorationPriorityActions"
  '((:KSENDEREXPLORER . 0)
    (:KSENDERGUI . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExplorationPriorityActions>) ostream)
  "Serializes a message object of type '<ExplorationPriorityActions>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sender)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num_points)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'priority_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'priority_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExplorationPriorityActions>) istream)
  "Deserializes a message object of type '<ExplorationPriorityActions>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sender)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_points) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'priority_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'priority_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'exploration_msgs-msg:ExplorationPriorityPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExplorationPriorityActions>)))
  "Returns string type for a message object of type '<ExplorationPriorityActions>"
  "exploration_msgs/ExplorationPriorityActions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExplorationPriorityActions)))
  "Returns string type for a message object of type 'ExplorationPriorityActions"
  "exploration_msgs/ExplorationPriorityActions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExplorationPriorityActions>)))
  "Returns md5sum for a message object of type '<ExplorationPriorityActions>"
  "0712cf241eaeffcf9cd15e90cdffcda9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExplorationPriorityActions)))
  "Returns md5sum for a message object of type 'ExplorationPriorityActions"
  "0712cf241eaeffcf9cd15e90cdffcda9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExplorationPriorityActions>)))
  "Returns full string definition for message of type '<ExplorationPriorityActions>"
  (cl:format cl:nil "# sender type~%uint8 kSenderExplorer = 0~%uint8 kSenderGUI      = 1~%~%# A reference coordinate frame and timestamp~%Header header~%~%uint8 sender                                # sender type~%~%int32 num_points	                    # number of points~%ExplorationPriorityPoint[] priority_points  # list of priority points with actions~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: exploration_msgs/ExplorationPriorityPoint~%# action types~%uint8 kActionAdd       = 0~%uint8 kActionRemove    = 1  ~%uint8 kActionRemoveAll = 2~%~%# A reference coordinate frame and timestamp~%Header header~%~%uint32 id                     # point id~%geometry_msgs/Point position  # position~%float32 priority              # priority ~%uint8 action		      # action type~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExplorationPriorityActions)))
  "Returns full string definition for message of type 'ExplorationPriorityActions"
  (cl:format cl:nil "# sender type~%uint8 kSenderExplorer = 0~%uint8 kSenderGUI      = 1~%~%# A reference coordinate frame and timestamp~%Header header~%~%uint8 sender                                # sender type~%~%int32 num_points	                    # number of points~%ExplorationPriorityPoint[] priority_points  # list of priority points with actions~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: exploration_msgs/ExplorationPriorityPoint~%# action types~%uint8 kActionAdd       = 0~%uint8 kActionRemove    = 1  ~%uint8 kActionRemoveAll = 2~%~%# A reference coordinate frame and timestamp~%Header header~%~%uint32 id                     # point id~%geometry_msgs/Point position  # position~%float32 priority              # priority ~%uint8 action		      # action type~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExplorationPriorityActions>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'priority_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExplorationPriorityActions>))
  "Converts a ROS message object to a list"
  (cl:list 'ExplorationPriorityActions
    (cl:cons ':header (header msg))
    (cl:cons ':sender (sender msg))
    (cl:cons ':num_points (num_points msg))
    (cl:cons ':priority_points (priority_points msg))
))
