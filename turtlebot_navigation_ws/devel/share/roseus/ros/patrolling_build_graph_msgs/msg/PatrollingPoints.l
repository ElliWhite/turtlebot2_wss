;; Auto-generated. Do not edit!


(when (boundp 'patrolling_build_graph_msgs::PatrollingPoints)
  (if (not (find-package "PATROLLING_BUILD_GRAPH_MSGS"))
    (make-package "PATROLLING_BUILD_GRAPH_MSGS"))
  (shadow 'PatrollingPoints (find-package "PATROLLING_BUILD_GRAPH_MSGS")))
(unless (find-package "PATROLLING_BUILD_GRAPH_MSGS::PATROLLINGPOINTS")
  (make-package "PATROLLING_BUILD_GRAPH_MSGS::PATROLLINGPOINTS"))

(in-package "ROS")
;;//! \htmlinclude PatrollingPoints.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass patrolling_build_graph_msgs::PatrollingPoints
  :super ros::object
  :slots (_header _num_nodes _node_id _node_position _node_priority ))

(defmethod patrolling_build_graph_msgs::PatrollingPoints
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:num_nodes __num_nodes) 0)
    ((:node_id __node_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:node_position __node_position) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:node_priority __node_priority) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _num_nodes (round __num_nodes))
   (setq _node_id __node_id)
   (setq _node_position __node_position)
   (setq _node_priority __node_priority)
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
  (:node_position
   (&rest __node_position)
   (if (keywordp (car __node_position))
       (send* _node_position __node_position)
     (progn
       (if __node_position (setq _node_position (car __node_position)))
       _node_position)))
  (:node_priority
   (&optional __node_priority)
   (if __node_priority (setq _node_priority __node_priority)) _node_priority)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _num_nodes
    4
    ;; uint32[] _node_id
    (* 4    (length _node_id)) 4
    ;; geometry_msgs/Point[] _node_position
    (apply #'+ (send-all _node_position :serialization-length)) 4
    ;; float32[] _node_priority
    (* 4    (length _node_priority)) 4
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
     ;; geometry_msgs/Point[] _node_position
     (write-long (length _node_position) s)
     (dolist (elem _node_position)
       (send elem :serialize s)
       )
     ;; float32[] _node_priority
     (write-long (length _node_priority) s)
     (dotimes (i (length _node_priority))
       (sys::poke (elt _node_priority i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; geometry_msgs/Point[] _node_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_position (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _node_position)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _node_priority
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_priority (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _node_priority i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get patrolling_build_graph_msgs::PatrollingPoints :md5sum-) "68b0d4ab8a0fa82167176f3fbbfcc122")
(setf (get patrolling_build_graph_msgs::PatrollingPoints :datatype-) "patrolling_build_graph_msgs/PatrollingPoints")
(setf (get patrolling_build_graph_msgs::PatrollingPoints :definition-)
      "# A reference coordinate frame and timestamp
Header header

# 3D spatial graph

# general information
uint32   num_nodes  # number of points of interest

# lists (i-th item of each list contains information concerning the i-th node)
uint32[] node_id                     # node id
geometry_msgs/Point[] node_position  # node position
float32[] node_priority              # priority of a node


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



(provide :patrolling_build_graph_msgs/PatrollingPoints "68b0d4ab8a0fa82167176f3fbbfcc122")


