;; Auto-generated. Do not edit!


(when (boundp 'wireless_network_msgs::networkdelay)
  (if (not (find-package "WIRELESS_NETWORK_MSGS"))
    (make-package "WIRELESS_NETWORK_MSGS"))
  (shadow 'networkdelay (find-package "WIRELESS_NETWORK_MSGS")))
(unless (find-package "WIRELESS_NETWORK_MSGS::NETWORKDELAY")
  (make-package "WIRELESS_NETWORK_MSGS::NETWORKDELAY"))

(in-package "ROS")
;;//! \htmlinclude networkdelay.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass wireless_network_msgs::networkdelay
  :super ros::object
  :slots (_header _rtt _delay _alive ))

(defmethod wireless_network_msgs::networkdelay
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rtt __rtt) 0)
    ((:delay __delay) 0)
    ((:alive __alive) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _rtt (round __rtt))
   (setq _delay (round __delay))
   (setq _alive __alive)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rtt
   (&optional __rtt)
   (if __rtt (setq _rtt __rtt)) _rtt)
  (:delay
   (&optional __delay)
   (if __delay (setq _delay __delay)) _delay)
  (:alive
   (&optional __alive)
   (if __alive (setq _alive __alive)) _alive)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _rtt
    4
    ;; int32 _delay
    4
    ;; bool _alive
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _rtt
       (write-long _rtt s)
     ;; int32 _delay
       (write-long _delay s)
     ;; bool _alive
       (if _alive (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _rtt
     (setq _rtt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _delay
     (setq _delay (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _alive
     (setq _alive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get wireless_network_msgs::networkdelay :md5sum-) "c1e2e10f6c6d892071c552e7897b2292")
(setf (get wireless_network_msgs::networkdelay :datatype-) "wireless_network_msgs/networkdelay")
(setf (get wireless_network_msgs::networkdelay :definition-)
      "Header header
#round trip time (rtt) obtained using \"ping\" with ICMO echo request
int32 rtt

#network delay obtained directly at the application level (ros service call)
int32 delay

#Flag to check if the link is alive or dead
bool alive

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



(provide :wireless_network_msgs/networkdelay "c1e2e10f6c6d892071c552e7897b2292")


