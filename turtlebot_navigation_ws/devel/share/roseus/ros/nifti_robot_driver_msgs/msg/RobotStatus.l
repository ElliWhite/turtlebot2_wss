;; Auto-generated. Do not edit!


(when (boundp 'nifti_robot_driver_msgs::RobotStatus)
  (if (not (find-package "NIFTI_ROBOT_DRIVER_MSGS"))
    (make-package "NIFTI_ROBOT_DRIVER_MSGS"))
  (shadow 'RobotStatus (find-package "NIFTI_ROBOT_DRIVER_MSGS")))
(unless (find-package "NIFTI_ROBOT_DRIVER_MSGS::ROBOTSTATUS")
  (make-package "NIFTI_ROBOT_DRIVER_MSGS::ROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobotStatus.msg.html


(defclass nifti_robot_driver_msgs::RobotStatus
  :super ros::object
  :slots (_battery_level _battery_status _brake_on _scanning_speed _controllers_status _controllers_error ))

(defmethod nifti_robot_driver_msgs::RobotStatus
  (:init
   (&key
    ((:battery_level __battery_level) 0.0)
    ((:battery_status __battery_status) 0)
    ((:brake_on __brake_on) nil)
    ((:scanning_speed __scanning_speed) 0.0)
    ((:controllers_status __controllers_status) (instance nifti_robot_driver_msgs::ControllersStatus :init))
    ((:controllers_error __controllers_error) (instance nifti_robot_driver_msgs::ControllersStatus :init))
    )
   (send-super :init)
   (setq _battery_level (float __battery_level))
   (setq _battery_status (round __battery_status))
   (setq _brake_on __brake_on)
   (setq _scanning_speed (float __scanning_speed))
   (setq _controllers_status __controllers_status)
   (setq _controllers_error __controllers_error)
   self)
  (:battery_level
   (&optional __battery_level)
   (if __battery_level (setq _battery_level __battery_level)) _battery_level)
  (:battery_status
   (&optional __battery_status)
   (if __battery_status (setq _battery_status __battery_status)) _battery_status)
  (:brake_on
   (&optional __brake_on)
   (if __brake_on (setq _brake_on __brake_on)) _brake_on)
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
    ;; float64 _battery_level
    8
    ;; int32 _battery_status
    4
    ;; bool _brake_on
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
     ;; float64 _battery_level
       (sys::poke _battery_level (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _battery_status
       (write-long _battery_status s)
     ;; bool _brake_on
       (if _brake_on (write-byte -1 s) (write-byte 0 s))
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
   ;; float64 _battery_level
     (setq _battery_level (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _battery_status
     (setq _battery_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _brake_on
     (setq _brake_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _scanning_speed
     (setq _scanning_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; nifti_robot_driver_msgs/ControllersStatus _controllers_status
     (send _controllers_status :deserialize buf ptr-) (incf ptr- (send _controllers_status :serialization-length))
   ;; nifti_robot_driver_msgs/ControllersStatus _controllers_error
     (send _controllers_error :deserialize buf ptr-) (incf ptr- (send _controllers_error :serialization-length))
   ;;
   self)
  )

(setf (get nifti_robot_driver_msgs::RobotStatus :md5sum-) "dd9c20e6dcc350dd2cee593b1860f212")
(setf (get nifti_robot_driver_msgs::RobotStatus :datatype-) "nifti_robot_driver_msgs/RobotStatus")
(setf (get nifti_robot_driver_msgs::RobotStatus :definition-)
      "#int32 BAT_CRITICAL=2
#int32 BAT_WARNING=1
#int32 BAT_OK=0
float64 battery_level
int32 battery_status
bool brake_on
float64 scanning_speed
ControllersStatus controllers_status
ControllersStatus controllers_error

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



(provide :nifti_robot_driver_msgs/RobotStatus "dd9c20e6dcc350dd2cee593b1860f212")


