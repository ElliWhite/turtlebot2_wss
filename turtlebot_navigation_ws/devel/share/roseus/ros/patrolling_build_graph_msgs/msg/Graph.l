;; Auto-generated. Do not edit!


(when (boundp 'patrolling_build_graph_msgs::Graph)
  (if (not (find-package "PATROLLING_BUILD_GRAPH_MSGS"))
    (make-package "PATROLLING_BUILD_GRAPH_MSGS"))
  (shadow 'Graph (find-package "PATROLLING_BUILD_GRAPH_MSGS")))
(unless (find-package "PATROLLING_BUILD_GRAPH_MSGS::GRAPH")
  (make-package "PATROLLING_BUILD_GRAPH_MSGS::GRAPH"))

(in-package "ROS")
;;//! \htmlinclude Graph.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass patrolling_build_graph_msgs::Graph
  :super ros::object
  :slots (_header _num_nodes _node_id _node_priority _node_position _num_neighbours _adjacency_matrix _direction_matrix _cost_matrix ))

(defmethod patrolling_build_graph_msgs::Graph
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:num_nodes __num_nodes) 0)
    ((:node_id __node_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:node_priority __node_priority) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:node_position __node_position) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:num_neighbours __num_neighbours) (make-array 0 :initial-element 0 :element-type :integer))
    ((:adjacency_matrix __adjacency_matrix) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:direction_matrix __direction_matrix) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:cost_matrix __cost_matrix) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _num_nodes (round __num_nodes))
   (setq _node_id __node_id)
   (setq _node_priority __node_priority)
   (setq _node_position __node_position)
   (setq _num_neighbours __num_neighbours)
   (setq _adjacency_matrix __adjacency_matrix)
   (setq _direction_matrix __direction_matrix)
   (setq _cost_matrix __cost_matrix)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:num_nodes
   (&optional __num_nodes)
   (if __num_nodes (setq _num_nodes __num_nodes)) _num_nodes)
  (:node_id
   (&optional __node_id)
   (if __node_id (setq _node_id __node_id)) _node_id)
  (:node_priority
   (&optional __node_priority)
   (if __node_priority (setq _node_priority __node_priority)) _node_priority)
  (:node_position
   (&rest __node_position)
   (if (keywordp (car __node_position))
       (send* _node_position __node_position)
     (progn
       (if __node_position (setq _node_position (car __node_position)))
       _node_position)))
  (:num_neighbours
   (&optional __num_neighbours)
   (if __num_neighbours (setq _num_neighbours __num_neighbours)) _num_neighbours)
  (:adjacency_matrix
   (&optional __adjacency_matrix)
   (if __adjacency_matrix (setq _adjacency_matrix __adjacency_matrix)) _adjacency_matrix)
  (:direction_matrix
   (&optional __direction_matrix)
   (if __direction_matrix (setq _direction_matrix __direction_matrix)) _direction_matrix)
  (:cost_matrix
   (&optional __cost_matrix)
   (if __cost_matrix (setq _cost_matrix __cost_matrix)) _cost_matrix)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _num_nodes
    4
    ;; uint32[] _node_id
    (* 4    (length _node_id)) 4
    ;; float32[] _node_priority
    (* 4    (length _node_priority)) 4
    ;; geometry_msgs/Point[] _node_position
    (apply #'+ (send-all _node_position :serialization-length)) 4
    ;; uint32[] _num_neighbours
    (* 4    (length _num_neighbours)) 4
    ;; bool[] _adjacency_matrix
    (* 1    (length _adjacency_matrix)) 4
    ;; string[] _direction_matrix
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _direction_matrix)) 4
    ;; float32[] _cost_matrix
    (* 4    (length _cost_matrix)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _num_nodes
       (write-long _num_nodes s)
     ;; uint32[] _node_id
     (write-long (length _node_id) s)
     (dotimes (i (length _node_id))
       (write-long (elt _node_id i) s)
       )
     ;; float32[] _node_priority
     (write-long (length _node_priority) s)
     (dotimes (i (length _node_priority))
       (sys::poke (elt _node_priority i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Point[] _node_position
     (write-long (length _node_position) s)
     (dolist (elem _node_position)
       (send elem :serialize s)
       )
     ;; uint32[] _num_neighbours
     (write-long (length _num_neighbours) s)
     (dotimes (i (length _num_neighbours))
       (write-long (elt _num_neighbours i) s)
       )
     ;; bool[] _adjacency_matrix
     (write-long (length _adjacency_matrix) s)
     (dotimes (i (length _adjacency_matrix))
       (if (elt _adjacency_matrix i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; string[] _direction_matrix
     (write-long (length _direction_matrix) s)
     (dolist (elem _direction_matrix)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _cost_matrix
     (write-long (length _cost_matrix) s)
     (dotimes (i (length _cost_matrix))
       (sys::poke (elt _cost_matrix i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _num_nodes
     (setq _num_nodes (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _node_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _node_id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _node_priority
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_priority (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _node_priority i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Point[] _node_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_position (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _node_position)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32[] _num_neighbours
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _num_neighbours (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _num_neighbours i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool[] _adjacency_matrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _adjacency_matrix (make-list n))
     (dotimes (i n)
     (setf (elt _adjacency_matrix i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; string[] _direction_matrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _direction_matrix (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _direction_matrix i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _cost_matrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cost_matrix (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cost_matrix i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get patrolling_build_graph_msgs::Graph :md5sum-) "d69255e3eec9f9e951fee08ed363da41")
(setf (get patrolling_build_graph_msgs::Graph :datatype-) "patrolling_build_graph_msgs/Graph")
(setf (get patrolling_build_graph_msgs::Graph :definition-)
      "# A reference coordinate frame and timestamp
Header header

# 3D spatial graph

# general information
uint32   num_nodes  # graph number of nodes

# lists (i-th item of each list contains information concerning the i-th node)
uint32[] node_id                     # node id
float32[] node_priority              # priority of a node
geometry_msgs/Point[] node_position  # node position
uint32[] num_neighbours              # number of neighbours, should be at most 8

# matrices of size num_nodes x num_nodes in row-major order 
bool[]    adjacency_matrix
string[]  direction_matrix  # a string in {\"N\",\"NE\",\"E\",\"SE\",\"S\",\"SW\",\"W\",\"NW\"}
float32[] cost_matrix

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :patrolling_build_graph_msgs/Graph "d69255e3eec9f9e951fee08ed363da41")


