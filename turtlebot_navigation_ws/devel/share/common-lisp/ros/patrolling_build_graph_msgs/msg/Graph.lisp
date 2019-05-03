; Auto-generated. Do not edit!


(cl:in-package patrolling_build_graph_msgs-msg)


;//! \htmlinclude Graph.msg.html

(cl:defclass <Graph> (roslisp-msg-protocol:ros-message)
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
   (node_priority
    :reader node_priority
    :initarg :node_priority
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (node_position
    :reader node_position
    :initarg :node_position
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (num_neighbours
    :reader num_neighbours
    :initarg :num_neighbours
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (adjacency_matrix
    :reader adjacency_matrix
    :initarg :adjacency_matrix
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (direction_matrix
    :reader direction_matrix
    :initarg :direction_matrix
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (cost_matrix
    :reader cost_matrix
    :initarg :cost_matrix
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Graph (<Graph>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Graph>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Graph)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name patrolling_build_graph_msgs-msg:<Graph> is deprecated: use patrolling_build_graph_msgs-msg:Graph instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Graph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:header-val is deprecated.  Use patrolling_build_graph_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'num_nodes-val :lambda-list '(m))
(cl:defmethod num_nodes-val ((m <Graph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:num_nodes-val is deprecated.  Use patrolling_build_graph_msgs-msg:num_nodes instead.")
  (num_nodes m))

(cl:ensure-generic-function 'node_id-val :lambda-list '(m))
(cl:defmethod node_id-val ((m <Graph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:node_id-val is deprecated.  Use patrolling_build_graph_msgs-msg:node_id instead.")
  (node_id m))

(cl:ensure-generic-function 'node_priority-val :lambda-list '(m))
(cl:defmethod node_priority-val ((m <Graph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:node_priority-val is deprecated.  Use patrolling_build_graph_msgs-msg:node_priority instead.")
  (node_priority m))

(cl:ensure-generic-function 'node_position-val :lambda-list '(m))
(cl:defmethod node_position-val ((m <Graph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:node_position-val is deprecated.  Use patrolling_build_graph_msgs-msg:node_position instead.")
  (node_position m))

(cl:ensure-generic-function 'num_neighbours-val :lambda-list '(m))
(cl:defmethod num_neighbours-val ((m <Graph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:num_neighbours-val is deprecated.  Use patrolling_build_graph_msgs-msg:num_neighbours instead.")
  (num_neighbours m))

(cl:ensure-generic-function 'adjacency_matrix-val :lambda-list '(m))
(cl:defmethod adjacency_matrix-val ((m <Graph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:adjacency_matrix-val is deprecated.  Use patrolling_build_graph_msgs-msg:adjacency_matrix instead.")
  (adjacency_matrix m))

(cl:ensure-generic-function 'direction_matrix-val :lambda-list '(m))
(cl:defmethod direction_matrix-val ((m <Graph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:direction_matrix-val is deprecated.  Use patrolling_build_graph_msgs-msg:direction_matrix instead.")
  (direction_matrix m))

(cl:ensure-generic-function 'cost_matrix-val :lambda-list '(m))
(cl:defmethod cost_matrix-val ((m <Graph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:cost_matrix-val is deprecated.  Use patrolling_build_graph_msgs-msg:cost_matrix instead.")
  (cost_matrix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Graph>) ostream)
  "Serializes a message object of type '<Graph>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'node_position))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'num_neighbours))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'num_neighbours))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'adjacency_matrix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'adjacency_matrix))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'direction_matrix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'direction_matrix))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cost_matrix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cost_matrix))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Graph>) istream)
  "Deserializes a message object of type '<Graph>"
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
  (cl:setf (cl:slot-value msg 'node_priority) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_priority)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
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
  (cl:setf (cl:slot-value msg 'num_neighbours) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'num_neighbours)))
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
  (cl:setf (cl:slot-value msg 'adjacency_matrix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'adjacency_matrix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'direction_matrix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'direction_matrix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cost_matrix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cost_matrix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Graph>)))
  "Returns string type for a message object of type '<Graph>"
  "patrolling_build_graph_msgs/Graph")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Graph)))
  "Returns string type for a message object of type 'Graph"
  "patrolling_build_graph_msgs/Graph")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Graph>)))
  "Returns md5sum for a message object of type '<Graph>"
  "d69255e3eec9f9e951fee08ed363da41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Graph)))
  "Returns md5sum for a message object of type 'Graph"
  "d69255e3eec9f9e951fee08ed363da41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Graph>)))
  "Returns full string definition for message of type '<Graph>"
  (cl:format cl:nil "# A reference coordinate frame and timestamp~%Header header~%~%# 3D spatial graph~%~%# general information~%uint32   num_nodes  # graph number of nodes~%~%# lists (i-th item of each list contains information concerning the i-th node)~%uint32[] node_id                     # node id~%float32[] node_priority              # priority of a node~%geometry_msgs/Point[] node_position  # node position~%uint32[] num_neighbours              # number of neighbours, should be at most 8~%~%# matrices of size num_nodes x num_nodes in row-major order ~%bool[]    adjacency_matrix~%string[]  direction_matrix  # a string in {\"N\",\"NE\",\"E\",\"SE\",\"S\",\"SW\",\"W\",\"NW\"}~%float32[] cost_matrix~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Graph)))
  "Returns full string definition for message of type 'Graph"
  (cl:format cl:nil "# A reference coordinate frame and timestamp~%Header header~%~%# 3D spatial graph~%~%# general information~%uint32   num_nodes  # graph number of nodes~%~%# lists (i-th item of each list contains information concerning the i-th node)~%uint32[] node_id                     # node id~%float32[] node_priority              # priority of a node~%geometry_msgs/Point[] node_position  # node position~%uint32[] num_neighbours              # number of neighbours, should be at most 8~%~%# matrices of size num_nodes x num_nodes in row-major order ~%bool[]    adjacency_matrix~%string[]  direction_matrix  # a string in {\"N\",\"NE\",\"E\",\"SE\",\"S\",\"SW\",\"W\",\"NW\"}~%float32[] cost_matrix~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Graph>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_priority) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'num_neighbours) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'adjacency_matrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'direction_matrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cost_matrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Graph>))
  "Converts a ROS message object to a list"
  (cl:list 'Graph
    (cl:cons ':header (header msg))
    (cl:cons ':num_nodes (num_nodes msg))
    (cl:cons ':node_id (node_id msg))
    (cl:cons ':node_priority (node_priority msg))
    (cl:cons ':node_position (node_position msg))
    (cl:cons ':num_neighbours (num_neighbours msg))
    (cl:cons ':adjacency_matrix (adjacency_matrix msg))
    (cl:cons ':direction_matrix (direction_matrix msg))
    (cl:cons ':cost_matrix (cost_matrix msg))
))