;; Auto-generated. Do not edit!


(when (boundp 'trajectory_control_msgs::PlanningTask)
  (if (not (find-package "TRAJECTORY_CONTROL_MSGS"))
    (make-package "TRAJECTORY_CONTROL_MSGS"))
  (shadow 'PlanningTask (find-package "TRAJECTORY_CONTROL_MSGS")))
(unless (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGTASK")
  (make-package "TRAJECTORY_CONTROL_MSGS::PLANNINGTASK"))

(in-package "ROS")
;;//! \htmlinclude PlanningTask.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass trajectory_control_msgs::PlanningTask
  :super ros::object
  :slots (_header _name _segment_id _segment_count _type _waypoints ))

(defmethod trajectory_control_msgs::PlanningTask
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:segment_id __segment_id) 0)
    ((:segment_count __segment_count) 0)
    ((:type __type) 0)
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _segment_id (round __segment_id))
   (setq _segment_count (round __segment_count))
   (setq _type (round __type))
   (setq _waypoints __waypoints)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:segment_id
   (&optional __segment_id)
   (if __segment_id (setq _segment_id __segment_id)) _segment_id)
  (:segment_count
   (&optional __segment_count)
   (if __segment_count (setq _segment_count __segment_count)) _segment_count)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; int32 _segment_id
    4
    ;; int32 _segment_count
    4
    ;; uint8 _type
    1
    ;; geometry_msgs/Point[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _segment_id
       (write-long _segment_id s)
     ;; int32 _segment_count
       (write-long _segment_count s)
     ;; uint8 _type
       (write-byte _type s)
     ;; geometry_msgs/Point[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _segment_id
     (setq _segment_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _segment_count
     (setq _segment_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Point[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get trajectory_control_msgs::PlanningTask :md5sum-) "2021ccde8231d7f64ad6cc286e585b51")
(setf (get trajectory_control_msgs::PlanningTask :datatype-) "trajectory_control_msgs/PlanningTask")
(setf (get trajectory_control_msgs::PlanningTask :definition-)
      "std_msgs/Header header
string name                      # task name; a planning task is a vector of task-segments; a task-segment is composed by a start and a goal (two points). 
int32 segment_id                 # 
int32 segment_count              # count number of waypoints inside the task
uint8  type                      # NORMAL=0, CYCLIC = 1
geometry_msgs/Point[] waypoints  # array of waypoints



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



(provide :trajectory_control_msgs/PlanningTask "2021ccde8231d7f64ad6cc286e585b51")


