;; Auto-generated. Do not edit!


(when (boundp 'stamped_msgs::DurationArray)
  (if (not (find-package "STAMPED_MSGS"))
    (make-package "STAMPED_MSGS"))
  (shadow 'DurationArray (find-package "STAMPED_MSGS")))
(unless (find-package "STAMPED_MSGS::DURATIONARRAY")
  (make-package "STAMPED_MSGS::DURATIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude DurationArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass stamped_msgs::DurationArray
  :super ros::object
  :slots (_header _data ))

(defmethod stamped_msgs::DurationArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _data __data)
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
    ;; duration[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; duration[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-long (send (elt _data i) :sec) s) (write-long (send (elt _data i) :nsec) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; duration[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _data)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get stamped_msgs::DurationArray :md5sum-) "982e06151401a934cc67e2fa010ee5e6")
(setf (get stamped_msgs::DurationArray :datatype-) "stamped_msgs/DurationArray")
(setf (get stamped_msgs::DurationArray :definition-)
      "Header header
duration[] data

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



(provide :stamped_msgs/DurationArray "982e06151401a934cc67e2fa010ee5e6")


