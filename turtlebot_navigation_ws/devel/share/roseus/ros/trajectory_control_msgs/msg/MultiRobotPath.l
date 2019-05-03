;; Auto-generated. Do not edit!


(when (boundp 'trajectory_control_msgs::MultiRobotPath)
  (if (not (find-package "TRAJECTORY_CONTROL_MSGS"))
    (make-package "TRAJECTORY_CONTROL_MSGS"))
  (shadow 'MultiRobotPath (find-package "TRAJECTORY_CONTROL_MSGS")))
(unless (find-package "TRAJECTORY_CONTROL_MSGS::MULTIROBOTPATH")
  (make-package "TRAJECTORY_CONTROL_MSGS::MULTIROBOTPATH"))

(in-package "ROS")
;;//! \htmlinclude MultiRobotPath.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass trajectory_control_msgs::MultiRobotPath
  :super ros::object
  :slots (_header _robot_id _poses ))

(defmethod trajectory_control_msgs::MultiRobotPath
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_id __robot_id) 0)
    ((:poses __poses) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_id (round __robot_id))
   (setq _poses __poses)
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
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _robot_id
    1
    ;; geometry_msgs/PoseStamped[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _robot_id
       (write-byte _robot_id s)
     ;; geometry_msgs/PoseStamped[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _robot_id
     (setq _robot_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get trajectory_control_msgs::MultiRobotPath :md5sum-) "af4323a89518a81fc57fae8adff52ce7")
(setf (get trajectory_control_msgs::MultiRobotPath :datatype-) "trajectory_control_msgs/MultiRobotPath")
(setf (get trajectory_control_msgs::MultiRobotPath :definition-)
      "std_msgs/Header header
uint8 robot_id
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



(provide :trajectory_control_msgs/MultiRobotPath "af4323a89518a81fc57fae8adff52ce7")


