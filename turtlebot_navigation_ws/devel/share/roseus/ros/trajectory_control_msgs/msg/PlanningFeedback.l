;; Auto-generated. Do not edit!


(when (boundp 'trajectory_control_msgs::PlanningFeedback)
  (if (not (find-package "TRAJECTORY_CONTROL_MSGS"))
    (make-package "TRAJECTORY_CONTROL_MSGS"))
  (shadow 'PlanningFeedback (find-package "TRAJECTORY_CONTROL_MSGS")))
(unless (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGFEEDBACK")
  (make-package "TRAJECTORY_CONTROL_MSGS::PLANNINGFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude PlanningFeedback.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass trajectory_control_msgs::PlanningFeedback
  :super ros::object
  :slots (_header _node _task _action _status ))

(defmethod trajectory_control_msgs::PlanningFeedback
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:node __node) "")
    ((:task __task) "")
    ((:action __action) 0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _node (string __node))
   (setq _task (string __task))
   (setq _action (round __action))
   (setq _status (round __status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:task
   (&optional __task)
   (if __task (setq _task __task)) _task)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _node
    4 (length _node)
    ;; string _task
    4 (length _task)
    ;; int8 _action
    1
    ;; int8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _node
       (write-long (length _node) s) (princ _node s)
     ;; string _task
       (write-long (length _task) s) (princ _task s)
     ;; int8 _action
       (write-byte _action s)
     ;; int8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _node
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _task
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _action 127) (setq _action (- _action 256)))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;;
   self)
  )

(setf (get trajectory_control_msgs::PlanningFeedback :md5sum-) "03a7f5d00dedecdfea4db265876ab92c")
(setf (get trajectory_control_msgs::PlanningFeedback :datatype-) "trajectory_control_msgs/PlanningFeedback")
(setf (get trajectory_control_msgs::PlanningFeedback :definition-)
      "std_msgs/Header header
string node   # identifies the node advertising the message: \"control\" (controller), \"planner\" (queue planner) or \"tool\" (rviz waypoints tool)
string task   # the task name (convention: TaskX, X number of the task)
int8 action   # the action performed on the task 
int8 status   # STATUS_FAILURE = -1, STATUS_PLANNING = 0, STATUS_SUCCESS = 1

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

")



(provide :trajectory_control_msgs/PlanningFeedback "03a7f5d00dedecdfea4db265876ab92c")


