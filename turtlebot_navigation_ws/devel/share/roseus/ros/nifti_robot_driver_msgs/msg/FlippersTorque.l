;; Auto-generated. Do not edit!


(when (boundp 'nifti_robot_driver_msgs::FlippersTorque)
  (if (not (find-package "NIFTI_ROBOT_DRIVER_MSGS"))
    (make-package "NIFTI_ROBOT_DRIVER_MSGS"))
  (shadow 'FlippersTorque (find-package "NIFTI_ROBOT_DRIVER_MSGS")))
(unless (find-package "NIFTI_ROBOT_DRIVER_MSGS::FLIPPERSTORQUE")
  (make-package "NIFTI_ROBOT_DRIVER_MSGS::FLIPPERSTORQUE"))

(in-package "ROS")
;;//! \htmlinclude FlippersTorque.msg.html


(defclass nifti_robot_driver_msgs::FlippersTorque
  :super ros::object
  :slots (_front _rear ))

(defmethod nifti_robot_driver_msgs::FlippersTorque
  (:init
   (&key
    ((:front __front) 0.0)
    ((:rear __rear) 0.0)
    )
   (send-super :init)
   (setq _front (float __front))
   (setq _rear (float __rear))
   self)
  (:front
   (&optional __front)
   (if __front (setq _front __front)) _front)
  (:rear
   (&optional __rear)
   (if __rear (setq _rear __rear)) _rear)
  (:serialization-length
   ()
   (+
    ;; float64 _front
    8
    ;; float64 _rear
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _front
       (sys::poke _front (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear
       (sys::poke _rear (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _front
     (setq _front (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear
     (setq _rear (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get nifti_robot_driver_msgs::FlippersTorque :md5sum-) "04b1a08465bee4bdf0e211984000b44b")
(setf (get nifti_robot_driver_msgs::FlippersTorque :datatype-) "nifti_robot_driver_msgs/FlippersTorque")
(setf (get nifti_robot_driver_msgs::FlippersTorque :definition-)
      "float64 front
float64 rear

")



(provide :nifti_robot_driver_msgs/FlippersTorque "04b1a08465bee4bdf0e211984000b44b")


