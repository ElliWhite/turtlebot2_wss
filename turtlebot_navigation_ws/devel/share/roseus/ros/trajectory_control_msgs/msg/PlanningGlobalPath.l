;; Auto-generated. Do not edit!


(when (boundp 'trajectory_control_msgs::PlanningGlobalPath)
  (if (not (find-package "TRAJECTORY_CONTROL_MSGS"))
    (make-package "TRAJECTORY_CONTROL_MSGS"))
  (shadow 'PlanningGlobalPath (find-package "TRAJECTORY_CONTROL_MSGS")))
(unless (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGGLOBALPATH")
  (make-package "TRAJECTORY_CONTROL_MSGS::PLANNINGGLOBALPATH"))

(in-package "ROS")
;;//! \htmlinclude PlanningGlobalPath.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass trajectory_control_msgs::PlanningGlobalPath
  :super ros::object
  :slots (_header _name _task_id _type _waypoints _path ))

(defmethod trajectory_control_msgs::PlanningGlobalPath
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:task_id __task_id) 0)
    ((:type __type) 0)
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:path __path) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _task_id (round __task_id))
   (setq _type (round __type))
   (setq _waypoints __waypoints)
   (setq _path __path)
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
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
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
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; int32 _task_id
    4
    ;; uint8 _type
    1
    ;; geometry_msgs/Point[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _task_id
       (write-long _task_id s)
     ;; uint8 _type
       (write-byte _type s)
     ;; geometry_msgs/Point[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Point[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;;
   self)
  )

(setf (get trajectory_control_msgs::PlanningGlobalPath :md5sum-) "bcb6b89f087c9569c38f6953756f6de0")
(setf (get trajectory_control_msgs::PlanningGlobalPath :datatype-) "trajectory_control_msgs/PlanningGlobalPath")
(setf (get trajectory_control_msgs::PlanningGlobalPath :definition-)
      "std_msgs/Header header
string name                      # task name; a planning task is a vector of task-segments; a task-segment is composed by a start and a goal (two points). 
int32 task_id
uint8  type                      # NORMAL=0, CYCLIC = 1
geometry_msgs/Point[] waypoints  # array of waypoints
nav_msgs/Path path               # the computed path which joins the waypoints 



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

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :trajectory_control_msgs/PlanningGlobalPath "bcb6b89f087c9569c38f6953756f6de0")


