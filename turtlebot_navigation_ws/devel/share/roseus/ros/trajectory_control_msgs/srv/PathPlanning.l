;; Auto-generated. Do not edit!


(when (boundp 'trajectory_control_msgs::PathPlanning)
  (if (not (find-package "TRAJECTORY_CONTROL_MSGS"))
    (make-package "TRAJECTORY_CONTROL_MSGS"))
  (shadow 'PathPlanning (find-package "TRAJECTORY_CONTROL_MSGS")))
(unless (find-package "TRAJECTORY_CONTROL_MSGS::PATHPLANNING")
  (make-package "TRAJECTORY_CONTROL_MSGS::PATHPLANNING"))
(unless (find-package "TRAJECTORY_CONTROL_MSGS::PATHPLANNINGREQUEST")
  (make-package "TRAJECTORY_CONTROL_MSGS::PATHPLANNINGREQUEST"))
(unless (find-package "TRAJECTORY_CONTROL_MSGS::PATHPLANNINGRESPONSE")
  (make-package "TRAJECTORY_CONTROL_MSGS::PATHPLANNINGRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass trajectory_control_msgs::PathPlanningRequest
  :super ros::object
  :slots (_start _goal ))

(defmethod trajectory_control_msgs::PathPlanningRequest
  (:init
   (&key
    ((:start __start) (instance geometry_msgs::PoseStamped :init))
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _start __start)
   (setq _goal __goal)
   self)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _start
    (send _start :serialization-length)
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _start
       (send _start :serialize s)
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass trajectory_control_msgs::PathPlanningResponse
  :super ros::object
  :slots (_success _path _path_cost ))

(defmethod trajectory_control_msgs::PathPlanningResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:path __path) (instance nav_msgs::Path :init))
    ((:path_cost __path_cost) 0.0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _path __path)
   (setq _path_cost (float __path_cost))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:path_cost
   (&optional __path_cost)
   (if __path_cost (setq _path_cost __path_cost)) _path_cost)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ;; float64 _path_cost
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;; float64 _path_cost
       (sys::poke _path_cost (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;; float64 _path_cost
     (setq _path_cost (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass trajectory_control_msgs::PathPlanning
  :super ros::object
  :slots ())

(setf (get trajectory_control_msgs::PathPlanning :md5sum-) "249cbd5d21a9bf348c5b7b36bffd0e9e")
(setf (get trajectory_control_msgs::PathPlanning :datatype-) "trajectory_control_msgs/PathPlanning")
(setf (get trajectory_control_msgs::PathPlanning :request) trajectory_control_msgs::PathPlanningRequest)
(setf (get trajectory_control_msgs::PathPlanning :response) trajectory_control_msgs::PathPlanningResponse)

(defmethod trajectory_control_msgs::PathPlanningRequest
  (:response () (instance trajectory_control_msgs::PathPlanningResponse :init)))

(setf (get trajectory_control_msgs::PathPlanningRequest :md5sum-) "249cbd5d21a9bf348c5b7b36bffd0e9e")
(setf (get trajectory_control_msgs::PathPlanningRequest :datatype-) "trajectory_control_msgs/PathPlanningRequest")
(setf (get trajectory_control_msgs::PathPlanningRequest :definition-)
      "geometry_msgs/PoseStamped start
geometry_msgs/PoseStamped goal

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
nav_msgs/Path path
float64 path_cost



================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get trajectory_control_msgs::PathPlanningResponse :md5sum-) "249cbd5d21a9bf348c5b7b36bffd0e9e")
(setf (get trajectory_control_msgs::PathPlanningResponse :datatype-) "trajectory_control_msgs/PathPlanningResponse")
(setf (get trajectory_control_msgs::PathPlanningResponse :definition-)
      "geometry_msgs/PoseStamped start
geometry_msgs/PoseStamped goal

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
nav_msgs/Path path
float64 path_cost



================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :trajectory_control_msgs/PathPlanning "249cbd5d21a9bf348c5b7b36bffd0e9e")


