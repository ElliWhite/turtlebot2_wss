;; Auto-generated. Do not edit!


(when (boundp 'wireless_network_msgs::WiFi_location)
  (if (not (find-package "WIRELESS_NETWORK_MSGS"))
    (make-package "WIRELESS_NETWORK_MSGS"))
  (shadow 'WiFi_location (find-package "WIRELESS_NETWORK_MSGS")))
(unless (find-package "WIRELESS_NETWORK_MSGS::WIFI_LOCATION")
  (make-package "WIRELESS_NETWORK_MSGS::WIFI_LOCATION"))

(in-package "ROS")
;;//! \htmlinclude WiFi_location.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass wireless_network_msgs::WiFi_location
  :super ros::object
  :slots (_header _ssid _rssi _xposition _yposition _zposition _orientation ))

(defmethod wireless_network_msgs::WiFi_location
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ssid __ssid) "")
    ((:rssi __rssi) 0.0)
    ((:xposition __xposition) 0.0)
    ((:yposition __yposition) 0.0)
    ((:zposition __zposition) 0.0)
    ((:orientation __orientation) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ssid (string __ssid))
   (setq _rssi (float __rssi))
   (setq _xposition (float __xposition))
   (setq _yposition (float __yposition))
   (setq _zposition (float __zposition))
   (setq _orientation (float __orientation))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ssid
   (&optional __ssid)
   (if __ssid (setq _ssid __ssid)) _ssid)
  (:rssi
   (&optional __rssi)
   (if __rssi (setq _rssi __rssi)) _rssi)
  (:xposition
   (&optional __xposition)
   (if __xposition (setq _xposition __xposition)) _xposition)
  (:yposition
   (&optional __yposition)
   (if __yposition (setq _yposition __yposition)) _yposition)
  (:zposition
   (&optional __zposition)
   (if __zposition (setq _zposition __zposition)) _zposition)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _ssid
    4 (length _ssid)
    ;; float32 _rssi
    4
    ;; float32 _xposition
    4
    ;; float32 _yposition
    4
    ;; float32 _zposition
    4
    ;; float32 _orientation
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _ssid
       (write-long (length _ssid) s) (princ _ssid s)
     ;; float32 _rssi
       (sys::poke _rssi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xposition
       (sys::poke _xposition (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yposition
       (sys::poke _yposition (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zposition
       (sys::poke _zposition (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _orientation
       (sys::poke _orientation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _ssid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ssid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _rssi
     (setq _rssi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xposition
     (setq _xposition (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yposition
     (setq _yposition (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zposition
     (setq _zposition (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _orientation
     (setq _orientation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get wireless_network_msgs::WiFi_location :md5sum-) "94d5d3c9a19adc224442c55f1c86cff6")
(setf (get wireless_network_msgs::WiFi_location :datatype-) "wireless_network_msgs/WiFi_location")
(setf (get wireless_network_msgs::WiFi_location :definition-)
      "Header header

# SSID of the WiFi network
string ssid 

# Received Signal Strength (RSS) in dBm
float32 rssi 

# X Position of the robot
float32 xposition

# Y Positon of the robot
float32 yposition

# Z Position of the robot
float32 zposition

# Orientation of the robot (in radians) in robot frame
float32 orientation

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



(provide :wireless_network_msgs/WiFi_location "94d5d3c9a19adc224442c55f1c86cff6")


