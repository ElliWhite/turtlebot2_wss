;; Auto-generated. Do not edit!


(when (boundp 'nifti_robot_driver_msgs::Tracks)
  (if (not (find-package "NIFTI_ROBOT_DRIVER_MSGS"))
    (make-package "NIFTI_ROBOT_DRIVER_MSGS"))
  (shadow 'Tracks (find-package "NIFTI_ROBOT_DRIVER_MSGS")))
(unless (find-package "NIFTI_ROBOT_DRIVER_MSGS::TRACKS")
  (make-package "NIFTI_ROBOT_DRIVER_MSGS::TRACKS"))

(in-package "ROS")
;;//! \htmlinclude Tracks.msg.html


(defclass nifti_robot_driver_msgs::Tracks
  :super ros::object
  :slots (_left _right ))

(defmethod nifti_robot_driver_msgs::Tracks
  (:init
   (&key
    ((:left __left) 0.0)
    ((:right __right) 0.0)
    )
   (send-super :init)
   (setq _left (float __left))
   (setq _right (float __right))
   self)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:serialization-length
   ()
   (+
    ;; float64 _left
    8
    ;; float64 _right
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _left
       (sys::poke _left (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right
       (sys::poke _right (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _left
     (setq _left (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right
     (setq _right (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get nifti_robot_driver_msgs::Tracks :md5sum-) "50c2436c38cded221d061b57126c4e40")
(setf (get nifti_robot_driver_msgs::Tracks :datatype-) "nifti_robot_driver_msgs/Tracks")
(setf (get nifti_robot_driver_msgs::Tracks :definition-)
      "float64 left
float64 right


")



(provide :nifti_robot_driver_msgs/Tracks "50c2436c38cded221d061b57126c4e40")


