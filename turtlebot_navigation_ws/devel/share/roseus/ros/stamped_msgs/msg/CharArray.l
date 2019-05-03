;; Auto-generated. Do not edit!


(when (boundp 'stamped_msgs::CharArray)
  (if (not (find-package "STAMPED_MSGS"))
    (make-package "STAMPED_MSGS"))
  (shadow 'CharArray (find-package "STAMPED_MSGS")))
(unless (find-package "STAMPED_MSGS::CHARARRAY")
  (make-package "STAMPED_MSGS::CHARARRAY"))

(in-package "ROS")
;;//! \htmlinclude CharArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass stamped_msgs::CharArray
  :super ros::object
  :slots (_header _data ))

(defmethod stamped_msgs::CharArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
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
    ;; char[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; char[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-byte (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; char[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get stamped_msgs::CharArray :md5sum-) "6e83e7c744b829fd85f106a20dc3ada2")
(setf (get stamped_msgs::CharArray :datatype-) "stamped_msgs/CharArray")
(setf (get stamped_msgs::CharArray :definition-)
      "Header header
char[] data

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



(provide :stamped_msgs/CharArray "6e83e7c744b829fd85f106a20dc3ada2")


