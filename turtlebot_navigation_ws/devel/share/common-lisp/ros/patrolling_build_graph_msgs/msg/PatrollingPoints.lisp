; Auto-generated. Do not edit!


(cl:in-package patrolling_build_graph_msgs-msg)


;//! \htmlinclude PatrollingPoints.msg.html

(cl:defclass <PatrollingPoints> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (num_nodes
    :reader num_nodes
    :initarg :num_nodes
    :type cl:integer
    :initform 0)
   (node_id
    :reader node_id
    :initarg :node_id
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (node_position
    :reader node_position
    :initarg :node_position
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (node_priority
    :reader node_priority
    :initarg :node_priority
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PatrollingPoints (<PatrollingPoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PatrollingPoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PatrollingPoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name patrolling_build_graph_msgs-msg:<PatrollingPoints> is deprecated: use patrolling_build_graph_msgs-msg:PatrollingPoints instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PatrollingPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:header-val is deprecated.  Use patrolling_build_graph_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'num_nodes-val :lambda-list '(m))
(cl:defmethod num_nodes-val ((m <PatrollingPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:num_nodes-val is deprecated.  Use patrolling_build_graph_msgs-msg:num_nodes instead.")
  (num_nodes m))

(cl:ensure-generic-function 'node_id-val :lambda-list '(m))
(cl:defmethod node_id-val ((m <PatrollingPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:node_id-val is deprecated.  Use patrolling_build_graph_msgs-msg:node_id instead.")
  (node_id m))

(cl:ensure-generic-function 'node_position-val :lambda-list '(m))
(cl:defmethod node_position-val ((m <PatrollingPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:node_position-val is deprecated.  Use patrolling_build_graph_msgs-msg:node_position instead.")
  (node_position m))

(cl:ensure-generic-function 'node_priority-val :lambda-list '(m))
(cl:defmethod node_priority-val ((m <PatrollingPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:node_priority-val is deprecated.  Use patrolling_build_graph_msgs-msg:node_priority instead.")
  (node_priority m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PatrollingPoints>) ostream)
  "Serializes a message object of type '<PatrollingPoints>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_nodes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_nodes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_nodes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_nodes)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'node_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'node_position))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_priority))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'node_priority))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PatrollingPoints>) istream)
  "Deserializes a message object of type '<PatrollingPoints>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_nodes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_nodes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_nodes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_nodes)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'node_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'node_position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'node_priority) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_priority)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PatrollingPoints>)))
  "Returns string type for a message object of type '<PatrollingPoints>"
  "patrolling_build_graph_msgs/PatrollingPoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PatrollingPoints)))
  "Returns string type for a message object of type 'PatrollingPoints"
  "patrolling_build_graph_msgs/PatrollingPoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PatrollingPoints>)))
  "Returns md5sum for a message object of type '<PatrollingPoints>"
  "68b0d4ab8a0fa82167176f3fbbfcc122")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PatrollingPoints)))
  "Returns md5sum for a message object of type 'PatrollingPoints"
  "68b0d4ab8a0fa82167176f3fbbfcc122")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PatrollingPoints>)))
  "Returns full string definition for message of type '<PatrollingPoints>"
  (cl:format cl:nil "# A reference coordinate frame and timestamp~%Header header~%~%# 3D spatial graph~%~%# general information~%uint32   num_nodes  # number of points of interest~%~%# lists (i-th item of each list contains information concerning the i-th node)~%uint32[] node_id                     # node id~%geometry_msgs/Point[] node_position  # node position~%float32[] node_priority              # priority of a node~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PatrollingPoints)))
  "Returns full string definition for message of type 'PatrollingPoints"
  (cl:format cl:nil "# A reference coordinate frame and timestamp~%Header header~%~%# 3D spatial graph~%~%# general information~%uint32   num_nodes  # number of points of interest~%~%# lists (i-th item of each list contains information concerning the i-th node)~%uint32[] node_id                     # node id~%geometry_msgs/Point[] node_position  # node position~%float32[] node_priority              # priority of a node~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PatrollingPoints>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_priority) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PatrollingPoints>))
  "Converts a ROS message object to a list"
  (cl:list 'PatrollingPoints
    (cl:cons ':header (header msg))
    (cl:cons ':num_nodes (num_nodes msg))
    (cl:cons ':node_id (node_id msg))
    (cl:cons ':node_position (node_position msg))
    (cl:cons ':node_priority (node_priority msg))
))
