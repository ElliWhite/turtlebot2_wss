;; Auto-generated. Do not edit!


(when (boundp 'wireless_network_msgs::wirelesslink)
  (if (not (find-package "WIRELESS_NETWORK_MSGS"))
    (make-package "WIRELESS_NETWORK_MSGS"))
  (shadow 'wirelesslink (find-package "WIRELESS_NETWORK_MSGS")))
(unless (find-package "WIRELESS_NETWORK_MSGS::WIRELESSLINK")
  (make-package "WIRELESS_NETWORK_MSGS::WIRELESSLINK"))

(in-package "ROS")
;;//! \htmlinclude wirelesslink.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass wireless_network_msgs::wirelesslink
  :super ros::object
  :slots (_header _rssi _lqi _noise _id ))

(defmethod wireless_network_msgs::wirelesslink
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rssi __rssi) 0.0)
    ((:lqi __lqi) 0)
    ((:noise __noise) 0)
    ((:id __id) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _rssi (float __rssi))
   (setq _lqi (round __lqi))
   (setq _noise (round __noise))
   (setq _id (string __id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rssi
   (&optional __rssi)
   (if __rssi (setq _rssi __rssi)) _rssi)
  (:lqi
   (&optional __lqi)
   (if __lqi (setq _lqi __lqi)) _lqi)
  (:noise
   (&optional __noise)
   (if __noise (setq _noise __noise)) _noise)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _rssi
    4
    ;; int32 _lqi
    4
    ;; int32 _noise
    4
    ;; string _id
    4 (length _id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _rssi
       (sys::poke _rssi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _lqi
       (write-long _lqi s)
     ;; int32 _noise
       (write-long _noise s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _rssi
     (setq _rssi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _lqi
     (setq _lqi (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _noise
     (setq _noise (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get wireless_network_msgs::wirelesslink :md5sum-) "b66245439f6c497dfd55043e8bf4332e")
(setf (get wireless_network_msgs::wirelesslink :datatype-) "wireless_network_msgs/wirelesslink")
(setf (get wireless_network_msgs::wirelesslink :definition-)
      "Header header

#Received Signal Strength (RSS) in dBm
float32 rssi

#Link Quality of the wireless link in percentage
int32 lqi

#Noise floor of the wireless link in dBm (only very few NICs provide this correctly)
int32 noise

#Source id - either AP name, or SSID or the mac address
string id

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



(provide :wireless_network_msgs/wirelesslink "b66245439f6c497dfd55043e8bf4332e")


