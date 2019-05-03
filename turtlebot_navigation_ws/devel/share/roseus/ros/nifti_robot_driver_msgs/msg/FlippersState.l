;; Auto-generated. Do not edit!


(when (boundp 'nifti_robot_driver_msgs::FlippersState)
  (if (not (find-package "NIFTI_ROBOT_DRIVER_MSGS"))
    (make-package "NIFTI_ROBOT_DRIVER_MSGS"))
  (shadow 'FlippersState (find-package "NIFTI_ROBOT_DRIVER_MSGS")))
(unless (find-package "NIFTI_ROBOT_DRIVER_MSGS::FLIPPERSSTATE")
  (make-package "NIFTI_ROBOT_DRIVER_MSGS::FLIPPERSSTATE"))

(in-package "ROS")
;;//! \htmlinclude FlippersState.msg.html


(defclass nifti_robot_driver_msgs::FlippersState
  :super ros::object
  :slots (_frontLeft _frontRight _rearLeft _rearRight ))

(defmethod nifti_robot_driver_msgs::FlippersState
  (:init
   (&key
    ((:frontLeft __frontLeft) 0.0)
    ((:frontRight __frontRight) 0.0)
    ((:rearLeft __rearLeft) 0.0)
    ((:rearRight __rearRight) 0.0)
    )
   (send-super :init)
   (setq _frontLeft (float __frontLeft))
   (setq _frontRight (float __frontRight))
   (setq _rearLeft (float __rearLeft))
   (setq _rearRight (float __rearRight))
   self)
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

(setf (get nifti_robot_driver_msgs::FlippersState :md5sum-) "7e95d6456aca0895fd90cacc4b232a69")
(setf (get nifti_robot_driver_msgs::FlippersState :datatype-) "nifti_robot_driver_msgs/FlippersState")
(setf (get nifti_robot_driver_msgs::FlippersState :definition-)
      "float64 frontLeft
float64 frontRight
float64 rearLeft
float64 rearRight

")



(provide :nifti_robot_driver_msgs/FlippersState "7e95d6456aca0895fd90cacc4b232a69")


