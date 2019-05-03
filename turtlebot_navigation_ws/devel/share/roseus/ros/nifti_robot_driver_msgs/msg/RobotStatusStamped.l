;; Auto-generated. Do not edit!


(when (boundp 'nifti_robot_driver_msgs::RobotStatusStamped)
  (if (not (find-package "NIFTI_ROBOT_DRIVER_MSGS"))
    (make-package "NIFTI_ROBOT_DRIVER_MSGS"))
  (shadow 'RobotStatusStamped (find-package "NIFTI_ROBOT_DRIVER_MSGS")))
(unless (find-package "NIFTI_ROBOT_DRIVER_MSGS::ROBOTSTATUSSTAMPED")
  (make-package "NIFTI_ROBOT_DRIVER_MSGS::ROBOTSTATUSSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude RobotStatusStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nifti_robot_driver_msgs::RobotStatusStamped
  :super ros::object
  :slots (_header _battery_level _battery_status _brake_on _emergency_stop_on _scanning_speed _controllers_status _controllers_error ))

(defmethod nifti_robot_driver_msgs::RobotStatusStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:battery_level __battery_level) 0.0)
    ((:battery_status __battery_status) 0)
    ((:brake_on __brake_on) nil)
    ((:emergency_stop_on __emergency_stop_on) nil)
    ((:scanning_speed __scanning_speed) 0.0)
    ((:controllers_status __controllers_status) (instance nifti_robot_driver_msgs::ControllersStatus :init))
    ((:controllers_error __controllers_error) (instance nifti_robot_driver_msgs::ControllersStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _battery_level (float __battery_level))
   (setq _battery_status (round __battery_status))
   (setq _brake_on __brake_on)
   (setq _emergency_stop_on __emergency_stop_on)
   (setq _scanning_speed (float __scanning_speed))
   (setq _controllers_status __controllers_status)
   (setq _controllers_error __controllers_error)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:battery_level
   (&optional __battery_level)
   (if __battery_level (setq _battery_level __battery_level)) _battery_level)
  (:battery_status
   (&optional __battery_status)
   (if __battery_status (setq _battery_status __battery_status)) _battery_status)
  (:brake_on
   (&optional __brake_on)
   (if __brake_on (setq _brake_on __brake_on)) _brake_on)
  (:emergency_stop_on
   (&optional __emergency_stop_on)
   (if __emergency_stop_on (setq _emergency_stop_on __emergency_stop_on)) _emergency_stop_on)
  (:scanning_speed
   (&optional __scanning_speed)
   (if __scanning_speed (setq _scanning_speed __scanning_speed)) _scanning_speed)
  (:controllers_status
   (&rest __controllers_status)
   (if (keywordp (car __controllers_status))
       (send* _controllers_status __controllers_status)
     (progn
       (if __controllers_status (setq _controllers_status (car __controllers_status)))
       _controllers_status)))
  (:controllers_error
   (&rest __controllers_error)
   (if (keywordp (car __controllers_error))
       (send* _controllers_error __controllers_error)
     (progn
       (if __controllers_error (setq _controllers_error (car __controllers_error)))
       _controllers_error)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _battery_level
    8
    ;; int32 _battery_status
    4
    ;; bool _brake_on
    1
    ;; bool _emergency_stop_on
    1
    ;; float64 _scanning_speed
    8
    ;; nifti_robot_driver_msgs/ControllersStatus _controllers_status
    (send _controllers_status :serialization-length)
    ;; nifti_robot_driver_msgs/ControllersStatus _controllers_error
    (send _controllers_error :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _battery_level
       (sys::poke _battery_level (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _battery_status
       (write-long _battery_status s)
     ;; bool _brake_on
       (if _brake_on (write-byte -1 s) (write-byte 0 s))
     ;; bool _emergency_stop_on
       (if _emergency_stop_on (write-byte -1 s) (write-byte 0 s))
     ;; float64 _scanning_speed
       (sys::poke _scanning_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; nifti_robot_driver_msgs/ControllersStatus _controllers_status
       (send _controllers_status :serialize s)
     ;; nifti_robot_driver_msgs/ControllersStatus _controllers_error
       (send _controllers_error :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _battery_level
     (setq _battery_level (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _battery_status
     (setq _battery_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _brake_on
     (setq _brake_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _emergency_stop_on
     (setq _emergency_stop_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _scanning_speed
     (setq _scanning_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; nifti_robot_driver_msgs/ControllersStatus _controllers_status
     (send _controllers_status :deserialize buf ptr-) (incf ptr- (send _controllers_status :serialization-length))
   ;; nifti_robot_driver_msgs/ControllersStatus _controllers_error
     (send _controllers_error :deserialize buf ptr-) (incf ptr- (send _controllers_error :serialization-length))
   ;;
   self)
  )

(setf (get nifti_robot_driver_msgs::RobotStatusStamped :md5sum-) "57c03a2db12d8cfa50a17fe84f95f4c8")
(setf (get nifti_robot_driver_msgs::RobotStatusStamped :datatype-) "nifti_robot_driver_msgs/RobotStatusStamped")
(setf (get nifti_robot_driver_msgs::RobotStatusStamped :definition-)
      "Header header
#int32 BAT_CRITICAL=2
#int32 BAT_WARNING=1
#int32 BAT_OK=0
float64 battery_level
int32 battery_status
bool brake_on
bool emergency_stop_on
float64 scanning_speed
ControllersStatus controllers_status
ControllersStatus controllers_error

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
MSG: nifti_robot_driver_msgs/ControllersStatus
int32 core
int32 track_left
int32 track_right
int32 flipper_front_left
int32 flipper_front_right
int32 flipper_rear_left
int32 flipper_rear_right

")



(provide :nifti_robot_driver_msgs/RobotStatusStamped "57c03a2db12d8cfa50a17fe84f95f4c8")


