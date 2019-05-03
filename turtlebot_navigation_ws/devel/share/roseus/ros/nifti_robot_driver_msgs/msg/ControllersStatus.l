;; Auto-generated. Do not edit!


(when (boundp 'nifti_robot_driver_msgs::ControllersStatus)
  (if (not (find-package "NIFTI_ROBOT_DRIVER_MSGS"))
    (make-package "NIFTI_ROBOT_DRIVER_MSGS"))
  (shadow 'ControllersStatus (find-package "NIFTI_ROBOT_DRIVER_MSGS")))
(unless (find-package "NIFTI_ROBOT_DRIVER_MSGS::CONTROLLERSSTATUS")
  (make-package "NIFTI_ROBOT_DRIVER_MSGS::CONTROLLERSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ControllersStatus.msg.html


(defclass nifti_robot_driver_msgs::ControllersStatus
  :super ros::object
  :slots (_core _track_left _track_right _flipper_front_left _flipper_front_right _flipper_rear_left _flipper_rear_right ))

(defmethod nifti_robot_driver_msgs::ControllersStatus
  (:init
   (&key
    ((:core __core) 0)
    ((:track_left __track_left) 0)
    ((:track_right __track_right) 0)
    ((:flipper_front_left __flipper_front_left) 0)
    ((:flipper_front_right __flipper_front_right) 0)
    ((:flipper_rear_left __flipper_rear_left) 0)
    ((:flipper_rear_right __flipper_rear_right) 0)
    )
   (send-super :init)
   (setq _core (round __core))
   (setq _track_left (round __track_left))
   (setq _track_right (round __track_right))
   (setq _flipper_front_left (round __flipper_front_left))
   (setq _flipper_front_right (round __flipper_front_right))
   (setq _flipper_rear_left (round __flipper_rear_left))
   (setq _flipper_rear_right (round __flipper_rear_right))
   self)
  (:core
   (&optional __core)
   (if __core (setq _core __core)) _core)
  (:track_left
   (&optional __track_left)
   (if __track_left (setq _track_left __track_left)) _track_left)
  (:track_right
   (&optional __track_right)
   (if __track_right (setq _track_right __track_right)) _track_right)
  (:flipper_front_left
   (&optional __flipper_front_left)
   (if __flipper_front_left (setq _flipper_front_left __flipper_front_left)) _flipper_front_left)
  (:flipper_front_right
   (&optional __flipper_front_right)
   (if __flipper_front_right (setq _flipper_front_right __flipper_front_right)) _flipper_front_right)
  (:flipper_rear_left
   (&optional __flipper_rear_left)
   (if __flipper_rear_left (setq _flipper_rear_left __flipper_rear_left)) _flipper_rear_left)
  (:flipper_rear_right
   (&optional __flipper_rear_right)
   (if __flipper_rear_right (setq _flipper_rear_right __flipper_rear_right)) _flipper_rear_right)
  (:serialization-length
   ()
   (+
    ;; int32 _core
    4
    ;; int32 _track_left
    4
    ;; int32 _track_right
    4
    ;; int32 _flipper_front_left
    4
    ;; int32 _flipper_front_right
    4
    ;; int32 _flipper_rear_left
    4
    ;; int32 _flipper_rear_right
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _core
       (write-long _core s)
     ;; int32 _track_left
       (write-long _track_left s)
     ;; int32 _track_right
       (write-long _track_right s)
     ;; int32 _flipper_front_left
       (write-long _flipper_front_left s)
     ;; int32 _flipper_front_right
       (write-long _flipper_front_right s)
     ;; int32 _flipper_rear_left
       (write-long _flipper_rear_left s)
     ;; int32 _flipper_rear_right
       (write-long _flipper_rear_right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _core
     (setq _core (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _track_left
     (setq _track_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _track_right
     (setq _track_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _flipper_front_left
     (setq _flipper_front_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _flipper_front_right
     (setq _flipper_front_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _flipper_rear_left
     (setq _flipper_rear_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _flipper_rear_right
     (setq _flipper_rear_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get nifti_robot_driver_msgs::ControllersStatus :md5sum-) "dd206d136b46c978abb3dde3682bb506")
(setf (get nifti_robot_driver_msgs::ControllersStatus :datatype-) "nifti_robot_driver_msgs/ControllersStatus")
(setf (get nifti_robot_driver_msgs::ControllersStatus :definition-)
      "int32 core
int32 track_left
int32 track_right
int32 flipper_front_left
int32 flipper_front_right
int32 flipper_rear_left
int32 flipper_rear_right

")



(provide :nifti_robot_driver_msgs/ControllersStatus "dd206d136b46c978abb3dde3682bb506")


