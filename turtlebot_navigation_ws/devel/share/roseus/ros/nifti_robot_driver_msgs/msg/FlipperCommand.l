;; Auto-generated. Do not edit!


(when (boundp 'nifti_robot_driver_msgs::FlipperCommand)
  (if (not (find-package "NIFTI_ROBOT_DRIVER_MSGS"))
    (make-package "NIFTI_ROBOT_DRIVER_MSGS"))
  (shadow 'FlipperCommand (find-package "NIFTI_ROBOT_DRIVER_MSGS")))
(unless (find-package "NIFTI_ROBOT_DRIVER_MSGS::FLIPPERCOMMAND")
  (make-package "NIFTI_ROBOT_DRIVER_MSGS::FLIPPERCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude FlipperCommand.msg.html


(defclass nifti_robot_driver_msgs::FlipperCommand
  :super ros::object
  :slots (_object_id _angle ))

(defmethod nifti_robot_driver_msgs::FlipperCommand
  (:init
   (&key
    ((:object_id __object_id) 0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _object_id (round __object_id))
   (setq _angle (float __angle))
   self)
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; byte _object_id
    1
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; byte _object_id
       (write-byte _object_id s)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; byte _object_id
     (setq _object_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _object_id 127) (setq _object_id (- _object_id 256)))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get nifti_robot_driver_msgs::FlipperCommand :md5sum-) "bf28a09f7c9275cfbfd7adb239964556")
(setf (get nifti_robot_driver_msgs::FlipperCommand :datatype-) "nifti_robot_driver_msgs/FlipperCommand")
(setf (get nifti_robot_driver_msgs::FlipperCommand :definition-)
      "#byte ID_FLIPPER_FRONT_LEFT=3
#byte ID_FLIPPER_FRONT_RIGHT=4
#byte ID_FLIPPER_REAR_LEFT=5
#byte ID_FLIPPER_REAR_RIGHT=6
byte object_id
float64 angle

")



(provide :nifti_robot_driver_msgs/FlipperCommand "bf28a09f7c9275cfbfd7adb239964556")


