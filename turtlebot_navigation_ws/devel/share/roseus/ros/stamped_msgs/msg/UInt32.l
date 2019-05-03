;; Auto-generated. Do not edit!


(when (boundp 'stamped_msgs::UInt32)
  (if (not (find-package "STAMPED_MSGS"))
    (make-package "STAMPED_MSGS"))
  (shadow 'UInt32 (find-package "STAMPED_MSGS")))
(unless (find-package "STAMPED_MSGS::UINT32")
  (make-package "STAMPED_MSGS::UINT32"))

(in-package "ROS")
;;//! \htmlinclude UInt32.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass stamped_msgs::UInt32
  :super ros::object
  :slots (_header _data ))

(defmethod stamped_msgs::UInt32
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _data (round __data))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get stamped_msgs::UInt32 :md5sum-) "e5fd0b1b0e2c334ef870f4bb8263e9fe")
(setf (get stamped_msgs::UInt32 :datatype-) "stamped_msgs/UInt32")
(setf (get stamped_msgs::UInt32 :definition-)
      "Header header
uint32 data

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



(provide :stamped_msgs/UInt32 "e5fd0b1b0e2c334ef870f4bb8263e9fe")


