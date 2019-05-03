;; Auto-generated. Do not edit!


(when (boundp 'exploration_msgs::ExplorationRobotMessage)
  (if (not (find-package "EXPLORATION_MSGS"))
    (make-package "EXPLORATION_MSGS"))
  (shadow 'ExplorationRobotMessage (find-package "EXPLORATION_MSGS")))
(unless (find-package "EXPLORATION_MSGS::EXPLORATIONROBOTMESSAGE")
  (make-package "EXPLORATION_MSGS::EXPLORATIONROBOTMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude ExplorationRobotMessage.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*KREACHED*" (find-package "EXPLORATION_MSGS::EXPLORATIONROBOTMESSAGE"))
(shadow '*KREACHED* (find-package "EXPLORATION_MSGS::EXPLORATIONROBOTMESSAGE"))
(defconstant exploration_msgs::ExplorationRobotMessage::*KREACHED* 0)
(intern "*KPLANNED*" (find-package "EXPLORATION_MSGS::EXPLORATIONROBOTMESSAGE"))
(shadow '*KPLANNED* (find-package "EXPLORATION_MSGS::EXPLORATIONROBOTMESSAGE"))
(defconstant exploration_msgs::ExplorationRobotMessage::*KPLANNED* 1)
(intern "*KSELECTED*" (find-package "EXPLORATION_MSGS::EXPLORATIONROBOTMESSAGE"))
(shadow '*KSELECTED* (find-package "EXPLORATION_MSGS::EXPLORATIONROBOTMESSAGE"))
(defconstant exploration_msgs::ExplorationRobotMessage::*KSELECTED* 2)
(intern "*KABORTED*" (find-package "EXPLORATION_MSGS::EXPLORATIONROBOTMESSAGE"))
(shadow '*KABORTED* (find-package "EXPLORATION_MSGS::EXPLORATIONROBOTMESSAGE"))
(defconstant exploration_msgs::ExplorationRobotMessage::*KABORTED* 3)
(defclass exploration_msgs::ExplorationRobotMessage
  :super ros::object
  :slots (_header _robot_id _action _goal _path _path_cost ))

(defmethod exploration_msgs::ExplorationRobotMessage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_id __robot_id) 0)
    ((:action __action) 0)
    ((:goal __goal) (instance geometry_msgs::Point :init))
    ((:path __path) (instance nav_msgs::Path :init))
    ((:path_cost __path_cost) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_id (round __robot_id))
   (setq _action (round __action))
   (setq _goal __goal)
   (setq _path __path)
   (setq _path_cost (float __path_cost))
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
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
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
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _robot_id
    1
    ;; uint8 _action
    1
    ;; geometry_msgs/Point _goal
    (send _goal :serialization-length)
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ;; float64 _path_cost
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _robot_id
       (write-byte _robot_id s)
     ;; uint8 _action
       (write-byte _action s)
     ;; geometry_msgs/Point _goal
       (send _goal :serialize s)
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;; float64 _path_cost
       (sys::poke _path_cost (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _robot_id
     (setq _robot_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Point _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;; float64 _path_cost
     (setq _path_cost (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get exploration_msgs::ExplorationRobotMessage :md5sum-) "2a509b66d9d7a094b27f193e7e66af9a")
(setf (get exploration_msgs::ExplorationRobotMessage :datatype-) "exploration_msgs/ExplorationRobotMessage")
(setf (get exploration_msgs::ExplorationRobotMessage :definition-)
      "uint8 kReached   = 0
uint8 kPlanned   = 1  
uint8 kSelected  = 2 
uint8 kAborted   = 3

std_msgs/Header header
uint8 robot_id                   # robot id
uint8 action			 # action
geometry_msgs/Point goal         # the goal
nav_msgs/Path path               # the computed path  
float64 path_cost	         # cost of the planned path: \"< 0\" means invalid

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



(provide :exploration_msgs/ExplorationRobotMessage "2a509b66d9d7a094b27f193e7e66af9a")


