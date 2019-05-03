;; Auto-generated. Do not edit!


(when (boundp 'patrolling_build_graph_msgs::PriorityPoint)
  (if (not (find-package "PATROLLING_BUILD_GRAPH_MSGS"))
    (make-package "PATROLLING_BUILD_GRAPH_MSGS"))
  (shadow 'PriorityPoint (find-package "PATROLLING_BUILD_GRAPH_MSGS")))
(unless (find-package "PATROLLING_BUILD_GRAPH_MSGS::PRIORITYPOINT")
  (make-package "PATROLLING_BUILD_GRAPH_MSGS::PRIORITYPOINT"))

(in-package "ROS")
;;//! \htmlinclude PriorityPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass patrolling_build_graph_msgs::PriorityPoint
  :super ros::object
  :slots (_header _id _position _priority ))

(defmethod patrolling_build_graph_msgs::PriorityPoint
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:priority __priority) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _position __position)
   (setq _priority (float __priority))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float32 _priority
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float32 _priority
       (sys::poke _priority (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _priority
     (setq _priority (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get patrolling_build_graph_msgs::PriorityPoint :md5sum-) "d9470f86891275d35ddc7e5ebe6a205f")
(setf (get patrolling_build_graph_msgs::PriorityPoint :datatype-) "patrolling_build_graph_msgs/PriorityPoint")
(setf (get patrolling_build_graph_msgs::PriorityPoint :definition-)
      "# A reference coordinate frame and timestamp
Header header

uint32 id                     # id
geometry_msgs/Point position  # position
float32 priority              # priority 


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



(provide :patrolling_build_graph_msgs/PriorityPoint "d9470f86891275d35ddc7e5ebe6a205f")


