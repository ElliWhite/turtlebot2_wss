;; Auto-generated. Do not edit!


(when (boundp 'exploration_msgs::ExplorationPriorityActions)
  (if (not (find-package "EXPLORATION_MSGS"))
    (make-package "EXPLORATION_MSGS"))
  (shadow 'ExplorationPriorityActions (find-package "EXPLORATION_MSGS")))
(unless (find-package "EXPLORATION_MSGS::EXPLORATIONPRIORITYACTIONS")
  (make-package "EXPLORATION_MSGS::EXPLORATIONPRIORITYACTIONS"))

(in-package "ROS")
;;//! \htmlinclude ExplorationPriorityActions.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*KSENDEREXPLORER*" (find-package "EXPLORATION_MSGS::EXPLORATIONPRIORITYACTIONS"))
(shadow '*KSENDEREXPLORER* (find-package "EXPLORATION_MSGS::EXPLORATIONPRIORITYACTIONS"))
(defconstant exploration_msgs::ExplorationPriorityActions::*KSENDEREXPLORER* 0)
(intern "*KSENDERGUI*" (find-package "EXPLORATION_MSGS::EXPLORATIONPRIORITYACTIONS"))
(shadow '*KSENDERGUI* (find-package "EXPLORATION_MSGS::EXPLORATIONPRIORITYACTIONS"))
(defconstant exploration_msgs::ExplorationPriorityActions::*KSENDERGUI* 1)
(defclass exploration_msgs::ExplorationPriorityActions
  :super ros::object
  :slots (_header _sender _num_points _priority_points ))

(defmethod exploration_msgs::ExplorationPriorityActions
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sender __sender) 0)
    ((:num_points __num_points) 0)
    ((:priority_points __priority_points) (let (r) (dotimes (i 0) (push (instance exploration_msgs::ExplorationPriorityPoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sender (round __sender))
   (setq _num_points (round __num_points))
   (setq _priority_points __priority_points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:num_points
   (&optional __num_points)
   (if __num_points (setq _num_points __num_points)) _num_points)
  (:priority_points
   (&rest __priority_points)
   (if (keywordp (car __priority_points))
       (send* _priority_points __priority_points)
     (progn
       (if __priority_points (setq _priority_points (car __priority_points)))
       _priority_points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _sender
    1
    ;; int32 _num_points
    4
    ;; exploration_msgs/ExplorationPriorityPoint[] _priority_points
    (apply #'+ (send-all _priority_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _sender
       (write-byte _sender s)
     ;; int32 _num_points
       (write-long _num_points s)
     ;; exploration_msgs/ExplorationPriorityPoint[] _priority_points
     (write-long (length _priority_points) s)
     (dolist (elem _priority_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _sender
     (setq _sender (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _num_points
     (setq _num_points (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; exploration_msgs/ExplorationPriorityPoint[] _priority_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _priority_points (let (r) (dotimes (i n) (push (instance exploration_msgs::ExplorationPriorityPoint :init) r)) r))
     (dolist (elem- _priority_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get exploration_msgs::ExplorationPriorityActions :md5sum-) "0712cf241eaeffcf9cd15e90cdffcda9")
(setf (get exploration_msgs::ExplorationPriorityActions :datatype-) "exploration_msgs/ExplorationPriorityActions")
(setf (get exploration_msgs::ExplorationPriorityActions :definition-)
      "# sender type
uint8 kSenderExplorer = 0
uint8 kSenderGUI      = 1

# A reference coordinate frame and timestamp
Header header

uint8 sender                                # sender type

int32 num_points	                    # number of points
ExplorationPriorityPoint[] priority_points  # list of priority points with actions


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
MSG: exploration_msgs/ExplorationPriorityPoint
# action types
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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :exploration_msgs/ExplorationPriorityActions "0712cf241eaeffcf9cd15e90cdffcda9")


