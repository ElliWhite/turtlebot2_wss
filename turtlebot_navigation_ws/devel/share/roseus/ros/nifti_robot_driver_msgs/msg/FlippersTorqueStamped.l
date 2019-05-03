;; Auto-generated. Do not edit!


(when (boundp 'nifti_robot_driver_msgs::FlippersTorqueStamped)
  (if (not (find-package "NIFTI_ROBOT_DRIVER_MSGS"))
    (make-package "NIFTI_ROBOT_DRIVER_MSGS"))
  (shadow 'FlippersTorqueStamped (find-package "NIFTI_ROBOT_DRIVER_MSGS")))
(unless (find-package "NIFTI_ROBOT_DRIVER_MSGS::FLIPPERSTORQUESTAMPED")
  (make-package "NIFTI_ROBOT_DRIVER_MSGS::FLIPPERSTORQUESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude FlippersTorqueStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nifti_robot_driver_msgs::FlippersTorqueStamped
  :super ros::object
  :slots (_header _front _rear ))

(defmethod nifti_robot_driver_msgs::FlippersTorqueStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:front __front) 0.0)
    ((:rear __rear) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _front (float __front))
   (setq _rear (float __rear))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:front
   (&optional __front)
   (if __front (setq _front __front)) _front)
  (:rear
   (&optional __rear)
   (if __rear (setq _rear __rear)) _rear)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _front
    8
    ;; float64 _rear
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _front
       (sys::poke _front (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear
       (sys::poke _rear (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _front
     (setq _front (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear
     (setq _rear (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get nifti_robot_driver_msgs::FlippersTorqueStamped :md5sum-) "d5ab8eb99f0506b019e2e899a4f96426")
(setf (get nifti_robot_driver_msgs::FlippersTorqueStamped :datatype-) "nifti_robot_driver_msgs/FlippersTorqueStamped")
(setf (get nifti_robot_driver_msgs::FlippersTorqueStamped :definition-)
      "Header header
float64 front
float64 rear

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



(provide :nifti_robot_driver_msgs/FlippersTorqueStamped "d5ab8eb99f0506b019e2e899a4f96426")


