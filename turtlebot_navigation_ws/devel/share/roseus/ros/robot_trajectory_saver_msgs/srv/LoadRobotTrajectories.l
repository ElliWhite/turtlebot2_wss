;; Auto-generated. Do not edit!


(when (boundp 'robot_trajectory_saver_msgs::LoadRobotTrajectories)
  (if (not (find-package "ROBOT_TRAJECTORY_SAVER_MSGS"))
    (make-package "ROBOT_TRAJECTORY_SAVER_MSGS"))
  (shadow 'LoadRobotTrajectories (find-package "ROBOT_TRAJECTORY_SAVER_MSGS")))
(unless (find-package "ROBOT_TRAJECTORY_SAVER_MSGS::LOADROBOTTRAJECTORIES")
  (make-package "ROBOT_TRAJECTORY_SAVER_MSGS::LOADROBOTTRAJECTORIES"))
(unless (find-package "ROBOT_TRAJECTORY_SAVER_MSGS::LOADROBOTTRAJECTORIESREQUEST")
  (make-package "ROBOT_TRAJECTORY_SAVER_MSGS::LOADROBOTTRAJECTORIESREQUEST"))
(unless (find-package "ROBOT_TRAJECTORY_SAVER_MSGS::LOADROBOTTRAJECTORIESRESPONSE")
  (make-package "ROBOT_TRAJECTORY_SAVER_MSGS::LOADROBOTTRAJECTORIESRESPONSE"))

(in-package "ROS")



(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass robot_trajectory_saver_msgs::LoadRobotTrajectoriesRequest
  :super ros::object
  :slots (_file_path ))

(defmethod robot_trajectory_saver_msgs::LoadRobotTrajectoriesRequest
  (:init
   (&key
    ((:file_path __file_path) "")
    )
   (send-super :init)
   (setq _file_path (string __file_path))
   self)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:serialization-length
   ()
   (+
    ;; string _file_path
    4 (length _file_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_trajectory_saver_msgs::LoadRobotTrajectoriesResponse
  :super ros::object
  :slots (_trajectories ))

(defmethod robot_trajectory_saver_msgs::LoadRobotTrajectoriesResponse
  (:init
   (&key
    ((:trajectories __trajectories) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _trajectories __trajectories)
   self)
  (:trajectories
   (&rest __trajectories)
   (if (keywordp (car __trajectories))
       (send* _trajectories __trajectories)
     (progn
       (if __trajectories (setq _trajectories (car __trajectories)))
       _trajectories)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _trajectories
    (send _trajectories :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _trajectories
       (send _trajectories :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _trajectories
     (send _trajectories :deserialize buf ptr-) (incf ptr- (send _trajectories :serialization-length))
   ;;
   self)
  )

(defclass robot_trajectory_saver_msgs::LoadRobotTrajectories
  :super ros::object
  :slots ())

(setf (get robot_trajectory_saver_msgs::LoadRobotTrajectories :md5sum-) "9c54a0ae5f11617005a96802ab4d5ff0")
(setf (get robot_trajectory_saver_msgs::LoadRobotTrajectories :datatype-) "robot_trajectory_saver_msgs/LoadRobotTrajectories")
(setf (get robot_trajectory_saver_msgs::LoadRobotTrajectories :request) robot_trajectory_saver_msgs::LoadRobotTrajectoriesRequest)
(setf (get robot_trajectory_saver_msgs::LoadRobotTrajectories :response) robot_trajectory_saver_msgs::LoadRobotTrajectoriesResponse)

(defmethod robot_trajectory_saver_msgs::LoadRobotTrajectoriesRequest
  (:response () (instance robot_trajectory_saver_msgs::LoadRobotTrajectoriesResponse :init)))

(setf (get robot_trajectory_saver_msgs::LoadRobotTrajectoriesRequest :md5sum-) "9c54a0ae5f11617005a96802ab4d5ff0")
(setf (get robot_trajectory_saver_msgs::LoadRobotTrajectoriesRequest :datatype-) "robot_trajectory_saver_msgs/LoadRobotTrajectoriesRequest")
(setf (get robot_trajectory_saver_msgs::LoadRobotTrajectoriesRequest :definition-)
      "string file_path
---
nav_msgs/Path trajectories


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

(setf (get robot_trajectory_saver_msgs::LoadRobotTrajectoriesResponse :md5sum-) "9c54a0ae5f11617005a96802ab4d5ff0")
(setf (get robot_trajectory_saver_msgs::LoadRobotTrajectoriesResponse :datatype-) "robot_trajectory_saver_msgs/LoadRobotTrajectoriesResponse")
(setf (get robot_trajectory_saver_msgs::LoadRobotTrajectoriesResponse :definition-)
      "string file_path
---
nav_msgs/Path trajectories


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



(provide :robot_trajectory_saver_msgs/LoadRobotTrajectories "9c54a0ae5f11617005a96802ab4d5ff0")


