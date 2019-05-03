;; Auto-generated. Do not edit!


(when (boundp 'robot_trajectory_saver_msgs::GetRobotTrajectories)
  (if (not (find-package "ROBOT_TRAJECTORY_SAVER_MSGS"))
    (make-package "ROBOT_TRAJECTORY_SAVER_MSGS"))
  (shadow 'GetRobotTrajectories (find-package "ROBOT_TRAJECTORY_SAVER_MSGS")))
(unless (find-package "ROBOT_TRAJECTORY_SAVER_MSGS::GETROBOTTRAJECTORIES")
  (make-package "ROBOT_TRAJECTORY_SAVER_MSGS::GETROBOTTRAJECTORIES"))
(unless (find-package "ROBOT_TRAJECTORY_SAVER_MSGS::GETROBOTTRAJECTORIESREQUEST")
  (make-package "ROBOT_TRAJECTORY_SAVER_MSGS::GETROBOTTRAJECTORIESREQUEST"))
(unless (find-package "ROBOT_TRAJECTORY_SAVER_MSGS::GETROBOTTRAJECTORIESRESPONSE")
  (make-package "ROBOT_TRAJECTORY_SAVER_MSGS::GETROBOTTRAJECTORIESRESPONSE"))

(in-package "ROS")



(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass robot_trajectory_saver_msgs::GetRobotTrajectoriesRequest
  :super ros::object
  :slots ())

(defmethod robot_trajectory_saver_msgs::GetRobotTrajectoriesRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robot_trajectory_saver_msgs::GetRobotTrajectoriesResponse
  :super ros::object
  :slots (_trajectories ))

(defmethod robot_trajectory_saver_msgs::GetRobotTrajectoriesResponse
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

(defclass robot_trajectory_saver_msgs::GetRobotTrajectories
  :super ros::object
  :slots ())

(setf (get robot_trajectory_saver_msgs::GetRobotTrajectories :md5sum-) "8b30a4d113ef58da0a023a56d68b5488")
(setf (get robot_trajectory_saver_msgs::GetRobotTrajectories :datatype-) "robot_trajectory_saver_msgs/GetRobotTrajectories")
(setf (get robot_trajectory_saver_msgs::GetRobotTrajectories :request) robot_trajectory_saver_msgs::GetRobotTrajectoriesRequest)
(setf (get robot_trajectory_saver_msgs::GetRobotTrajectories :response) robot_trajectory_saver_msgs::GetRobotTrajectoriesResponse)

(defmethod robot_trajectory_saver_msgs::GetRobotTrajectoriesRequest
  (:response () (instance robot_trajectory_saver_msgs::GetRobotTrajectoriesResponse :init)))

(setf (get robot_trajectory_saver_msgs::GetRobotTrajectoriesRequest :md5sum-) "8b30a4d113ef58da0a023a56d68b5488")
(setf (get robot_trajectory_saver_msgs::GetRobotTrajectoriesRequest :datatype-) "robot_trajectory_saver_msgs/GetRobotTrajectoriesRequest")
(setf (get robot_trajectory_saver_msgs::GetRobotTrajectoriesRequest :definition-)
      "---
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

(setf (get robot_trajectory_saver_msgs::GetRobotTrajectoriesResponse :md5sum-) "8b30a4d113ef58da0a023a56d68b5488")
(setf (get robot_trajectory_saver_msgs::GetRobotTrajectoriesResponse :datatype-) "robot_trajectory_saver_msgs/GetRobotTrajectoriesResponse")
(setf (get robot_trajectory_saver_msgs::GetRobotTrajectoriesResponse :definition-)
      "---
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



(provide :robot_trajectory_saver_msgs/GetRobotTrajectories "8b30a4d113ef58da0a023a56d68b5488")


