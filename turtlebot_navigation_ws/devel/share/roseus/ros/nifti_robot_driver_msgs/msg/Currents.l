;; Auto-generated. Do not edit!


(when (boundp 'nifti_robot_driver_msgs::Currents)
  (if (not (find-package "NIFTI_ROBOT_DRIVER_MSGS"))
    (make-package "NIFTI_ROBOT_DRIVER_MSGS"))
  (shadow 'Currents (find-package "NIFTI_ROBOT_DRIVER_MSGS")))
(unless (find-package "NIFTI_ROBOT_DRIVER_MSGS::CURRENTS")
  (make-package "NIFTI_ROBOT_DRIVER_MSGS::CURRENTS"))

(in-package "ROS")
;;//! \htmlinclude Currents.msg.html


(defclass nifti_robot_driver_msgs::Currents
  :super ros::object
  :slots (_trackLeft _trackRight _frontLeft _frontRight _rearLeft _rearRight ))

(defmethod nifti_robot_driver_msgs::Currents
  (:init
   (&key
    ((:trackLeft __trackLeft) 0.0)
    ((:trackRight __trackRight) 0.0)
    ((:frontLeft __frontLeft) 0.0)
    ((:frontRight __frontRight) 0.0)
    ((:rearLeft __rearLeft) 0.0)
    ((:rearRight __rearRight) 0.0)
    )
   (send-super :init)
   (setq _trackLeft (float __trackLeft))
   (setq _trackRight (float __trackRight))
   (setq _frontLeft (float __frontLeft))
   (setq _frontRight (float __frontRight))
   (setq _rearLeft (float __rearLeft))
   (setq _rearRight (float __rearRight))
   self)
  (:trackLeft
   (&optional __trackLeft)
   (if __trackLeft (setq _trackLeft __trackLeft)) _trackLeft)
  (:trackRight
   (&optional __trackRight)
   (if __trackRight (setq _trackRight __trackRight)) _trackRight)
  (:frontLeft
   (&optional __frontLeft)
   (if __frontLeft (setq _frontLeft __frontLeft)) _frontLeft)
  (:frontRight
   (&optional __frontRight)
   (if __frontRight (setq _frontRight __frontRight)) _frontRight)
  (:rearLeft
   (&optional __rearLeft)
   (if __rearLeft (setq _rearLeft __rearLeft)) _rearLeft)
  (:rearRight
   (&optional __rearRight)
   (if __rearRight (setq _rearRight __rearRight)) _rearRight)
  (:serialization-length
   ()
   (+
    ;; float64 _trackLeft
    8
    ;; float64 _trackRight
    8
    ;; float64 _frontLeft
    8
    ;; float64 _frontRight
    8
    ;; float64 _rearLeft
    8
    ;; float64 _rearRight
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _trackLeft
       (sys::poke _trackLeft (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _trackRight
       (sys::poke _trackRight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _frontLeft
       (sys::poke _frontLeft (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _frontRight
       (sys::poke _frontRight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rearLeft
       (sys::poke _rearLeft (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rearRight
       (sys::poke _rearRight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _trackLeft
     (setq _trackLeft (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _trackRight
     (setq _trackRight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _frontLeft
     (setq _frontLeft (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _frontRight
     (setq _frontRight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rearLeft
     (setq _rearLeft (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rearRight
     (setq _rearRight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get nifti_robot_driver_msgs::Currents :md5sum-) "001c804af8b75a2e21ad7a80719679e3")
(setf (get nifti_robot_driver_msgs::Currents :datatype-) "nifti_robot_driver_msgs/Currents")
(setf (get nifti_robot_driver_msgs::Currents :definition-)
      "float64 trackLeft
float64 trackRight
float64 frontLeft
float64 frontRight
float64 rearLeft
float64 rearRight


")



(provide :nifti_robot_driver_msgs/Currents "001c804af8b75a2e21ad7a80719679e3")


