;; Auto-generated. Do not edit!


(when (boundp 'exploration_msgs::ExplorationPriorityPoint)
  (if (not (find-package "EXPLORATION_MSGS"))
    (make-package "EXPLORATION_MSGS"))
  (shadow 'ExplorationPriorityPoint (find-package "EXPLORATION_MSGS")))
(unless (find-package "EXPLORATION_MSGS::EXPLORATIONPRIORITYPOINT")
  (make-package "EXPLORATION_MSGS::EXPLORATIONPRIORITYPOINT"))

(in-package "ROS")
;;//! \htmlinclude ExplorationPriorityPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*KACTIONADD*" (find-package "EXPLORATION_MSGS::EXPLORATIONPRIORITYPOINT"))
(shadow '*KACTIONADD* (find-package "EXPLORATION_MSGS::EXPLORATIONPRIORITYPOINT"))
(defconstant exploration_msgs::ExplorationPriorityPoint::*KACTIONADD* 0)
(intern "*KACTIONREMOVE*" (find-package "EXPLORATION_MSGS::EXPLORATIONPRIORITYPOINT"))
(shadow '*KACTIONREMOVE* (find-package "EXPLORATION_MSGS::EXPLORATIONPRIORITYPOINT"))
(defconstant exploration_msgs::ExplorationPriorityPoint::*KACTIONREMOVE* 1)
(intern "*KACTIONREMOVEALL*" (find-package "EXPLORATION_MSGS::EXPLORATIONPRIORITYPOINT"))
(shadow '*KACTIONREMOVEALL* (find-package "EXPLORATION_MSGS::EXPLORATIONPRIORITYPOINT"))
(defconstant exploration_msgs::ExplorationPriorityPoint::*KACTIONREMOVEALL* 2)
(defclass exploration_msgs::ExplorationPriorityPoint
  :super ros::object
  :slots (_header _id _position _priority _action ))

(defmethod exploration_msgs::ExplorationPriorityPoint
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:priority __priority) 0.0)
    ((:action __action) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _position __position)
   (setq _priority (float __priority))
   (setq _action (round __action))
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
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
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
    ;; uint8 _action
    1
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
     ;; uint8 _action
       (write-byte _action s)
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
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get exploration_msgs::ExplorationPriorityPoint :md5sum-) "cbf08350f3cbaa0d50b6c6b7fb5cf4e7")
(setf (get exploration_msgs::ExplorationPriorityPoint :datatype-) "exploration_msgs/ExplorationPriorityPoint")
(setf (get exploration_msgs::ExplorationPriorityPoint :definition-)
      "# action types
uint8 kActionAdd       = 0
uint8 kActionRemove    = 1  
uint8 kActionRemoveAll = 2

# A reference coordinate frame and timestamp
Header header

uint32 id                     # point id
geometry_msgs/Point position  # position
float32 priority              # priority 
uint8 action		      # action type



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



(provide :exploration_msgs/ExplorationPriorityPoint "cbf08350f3cbaa0d50b6c6b7fb5cf4e7")


