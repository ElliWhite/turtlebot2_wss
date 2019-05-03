;; Auto-generated. Do not edit!


(when (boundp 'trajectory_control_msgs::MultiRobotPose)
  (if (not (find-package "TRAJECTORY_CONTROL_MSGS"))
    (make-package "TRAJECTORY_CONTROL_MSGS"))
  (shadow 'MultiRobotPose (find-package "TRAJECTORY_CONTROL_MSGS")))
(unless (find-package "TRAJECTORY_CONTROL_MSGS::MULTIROBOTPOSE")
  (make-package "TRAJECTORY_CONTROL_MSGS::MULTIROBOTPOSE"))

(in-package "ROS")
;;//! \htmlinclude MultiRobotPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass trajectory_control_msgs::MultiRobotPose
  :super ros::object
  :slots (_header _robot_id _pose ))

(defmethod trajectory_control_msgs::MultiRobotPose
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_id __robot_id) 0)
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_id (round __robot_id))
   (setq _pose __pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _robot_id
    1
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _robot_id
       (write-byte _robot_id s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _robot_id
     (setq _robot_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get trajectory_control_msgs::MultiRobotPose :md5sum-) "4edfada369790b19fef23a05bef4ee01")
(setf (get trajectory_control_msgs::MultiRobotPose :datatype-) "trajectory_control_msgs/MultiRobotPose")
(setf (get trajectory_control_msgs::MultiRobotPose :definition-)
      "std_msgs/Header header
uint8 robot_id
geometry_msgs/PoseStamped pose

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



(provide :trajectory_control_msgs/MultiRobotPose "4edfada369790b19fef23a05bef4ee01")


