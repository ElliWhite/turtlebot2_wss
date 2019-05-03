;; Auto-generated. Do not edit!


(when (boundp 'trajectory_control_msgs::PlanningStatus)
  (if (not (find-package "TRAJECTORY_CONTROL_MSGS"))
    (make-package "TRAJECTORY_CONTROL_MSGS"))
  (shadow 'PlanningStatus (find-package "TRAJECTORY_CONTROL_MSGS")))
(unless (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS")
  (make-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude PlanningStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*KNONE*" (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(shadow '*KNONE* (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(defconstant trajectory_control_msgs::PlanningStatus::*KNONE* 0)
(intern "*KNOTREADY*" (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(shadow '*KNOTREADY* (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(defconstant trajectory_control_msgs::PlanningStatus::*KNOTREADY* 1)
(intern "*KINPUTFAILURE*" (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(shadow '*KINPUTFAILURE* (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(defconstant trajectory_control_msgs::PlanningStatus::*KINPUTFAILURE* 2)
(intern "*KFAILURE*" (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(shadow '*KFAILURE* (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(defconstant trajectory_control_msgs::PlanningStatus::*KFAILURE* 3)
(intern "*KSUCCESS*" (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(shadow '*KSUCCESS* (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(defconstant trajectory_control_msgs::PlanningStatus::*KSUCCESS* 4)
(intern "*KARRIVED*" (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(shadow '*KARRIVED* (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(defconstant trajectory_control_msgs::PlanningStatus::*KARRIVED* 5)
(intern "*KABORTED*" (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(shadow '*KABORTED* (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(defconstant trajectory_control_msgs::PlanningStatus::*KABORTED* 6)
(intern "*KTRANSFORMFAILURE*" (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(shadow '*KTRANSFORMFAILURE* (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(defconstant trajectory_control_msgs::PlanningStatus::*KTRANSFORMFAILURE* 7)
(intern "*KFIRSTSUCCESS*" (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(shadow '*KFIRSTSUCCESS* (find-package "TRAJECTORY_CONTROL_MSGS::PLANNINGSTATUS"))
(defconstant trajectory_control_msgs::PlanningStatus::*KFIRSTSUCCESS* 8)
(defclass trajectory_control_msgs::PlanningStatus
  :super ros::object
  :slots (_header _success _status _path_cost ))

(defmethod trajectory_control_msgs::PlanningStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:success __success) nil)
    ((:status __status) 0)
    ((:path_cost __path_cost) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _success __success)
   (setq _status (round __status))
   (setq _path_cost (float __path_cost))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:path_cost
   (&optional __path_cost)
   (if __path_cost (setq _path_cost __path_cost)) _path_cost)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _success
    1
    ;; uint8 _status
    1
    ;; float64 _path_cost
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _status
       (write-byte _status s)
     ;; float64 _path_cost
       (sys::poke _path_cost (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _path_cost
     (setq _path_cost (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get trajectory_control_msgs::PlanningStatus :md5sum-) "084e09d6e48ac8e8b97fe72e6fc78fb2")
(setf (get trajectory_control_msgs::PlanningStatus :datatype-) "trajectory_control_msgs/PlanningStatus")
(setf (get trajectory_control_msgs::PlanningStatus :definition-)
      "uint8 kNone             = 0
uint8 kNotReady         = 1  
uint8 kInputFailure     = 2 
uint8 kFailure          = 3
uint8 kSuccess          = 4
uint8 kArrived          = 5
uint8 kAborted          = 6
uint8 kTransformFailure = 7
uint8 kFirstSuccess     = 8

std_msgs/Header header
bool success                   # result of the path planner: false in case a solution was not found for some reason, true otherwise
uint8 status		       # status type: detailed status of the path planner (use one of the constants above )
float64 path_cost	       # cost of the planned path: \"< 0\" means invalid



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



(provide :trajectory_control_msgs/PlanningStatus "084e09d6e48ac8e8b97fe72e6fc78fb2")


