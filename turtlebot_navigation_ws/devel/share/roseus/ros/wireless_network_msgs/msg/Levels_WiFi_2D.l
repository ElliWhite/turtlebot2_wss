;; Auto-generated. Do not edit!


(when (boundp 'wireless_network_msgs::Levels_WiFi_2D)
  (if (not (find-package "WIRELESS_NETWORK_MSGS"))
    (make-package "WIRELESS_NETWORK_MSGS"))
  (shadow 'Levels_WiFi_2D (find-package "WIRELESS_NETWORK_MSGS")))
(unless (find-package "WIRELESS_NETWORK_MSGS::LEVELS_WIFI_2D")
  (make-package "WIRELESS_NETWORK_MSGS::LEVELS_WIFI_2D"))

(in-package "ROS")
;;//! \htmlinclude Levels_WiFi_2D.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass wireless_network_msgs::Levels_WiFi_2D
  :super ros::object
  :slots (_header _LL_level _LR_level _UL_level _UR_level _C_level _LL_level_abs _LR_level_abs _UL_level_abs _UR_level_abs _C_level_abs ))

(defmethod wireless_network_msgs::Levels_WiFi_2D
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:LL_level __LL_level) 0.0)
    ((:LR_level __LR_level) 0.0)
    ((:UL_level __UL_level) 0.0)
    ((:UR_level __UR_level) 0.0)
    ((:C_level __C_level) 0.0)
    ((:LL_level_abs __LL_level_abs) 0.0)
    ((:LR_level_abs __LR_level_abs) 0.0)
    ((:UL_level_abs __UL_level_abs) 0.0)
    ((:UR_level_abs __UR_level_abs) 0.0)
    ((:C_level_abs __C_level_abs) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _LL_level (float __LL_level))
   (setq _LR_level (float __LR_level))
   (setq _UL_level (float __UL_level))
   (setq _UR_level (float __UR_level))
   (setq _C_level (float __C_level))
   (setq _LL_level_abs (float __LL_level_abs))
   (setq _LR_level_abs (float __LR_level_abs))
   (setq _UL_level_abs (float __UL_level_abs))
   (setq _UR_level_abs (float __UR_level_abs))
   (setq _C_level_abs (float __C_level_abs))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:LL_level
   (&optional __LL_level)
   (if __LL_level (setq _LL_level __LL_level)) _LL_level)
  (:LR_level
   (&optional __LR_level)
   (if __LR_level (setq _LR_level __LR_level)) _LR_level)
  (:UL_level
   (&optional __UL_level)
   (if __UL_level (setq _UL_level __UL_level)) _UL_level)
  (:UR_level
   (&optional __UR_level)
   (if __UR_level (setq _UR_level __UR_level)) _UR_level)
  (:C_level
   (&optional __C_level)
   (if __C_level (setq _C_level __C_level)) _C_level)
  (:LL_level_abs
   (&optional __LL_level_abs)
   (if __LL_level_abs (setq _LL_level_abs __LL_level_abs)) _LL_level_abs)
  (:LR_level_abs
   (&optional __LR_level_abs)
   (if __LR_level_abs (setq _LR_level_abs __LR_level_abs)) _LR_level_abs)
  (:UL_level_abs
   (&optional __UL_level_abs)
   (if __UL_level_abs (setq _UL_level_abs __UL_level_abs)) _UL_level_abs)
  (:UR_level_abs
   (&optional __UR_level_abs)
   (if __UR_level_abs (setq _UR_level_abs __UR_level_abs)) _UR_level_abs)
  (:C_level_abs
   (&optional __C_level_abs)
   (if __C_level_abs (setq _C_level_abs __C_level_abs)) _C_level_abs)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _LL_level
    4
    ;; float32 _LR_level
    4
    ;; float32 _UL_level
    4
    ;; float32 _UR_level
    4
    ;; float32 _C_level
    4
    ;; float32 _LL_level_abs
    4
    ;; float32 _LR_level_abs
    4
    ;; float32 _UL_level_abs
    4
    ;; float32 _UR_level_abs
    4
    ;; float32 _C_level_abs
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _LL_level
       (sys::poke _LL_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LR_level
       (sys::poke _LR_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _UL_level
       (sys::poke _UL_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _UR_level
       (sys::poke _UR_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _C_level
       (sys::poke _C_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LL_level_abs
       (sys::poke _LL_level_abs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LR_level_abs
       (sys::poke _LR_level_abs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _UL_level_abs
       (sys::poke _UL_level_abs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _UR_level_abs
       (sys::poke _UR_level_abs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _C_level_abs
       (sys::poke _C_level_abs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _LL_level
     (setq _LL_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LR_level
     (setq _LR_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _UL_level
     (setq _UL_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _UR_level
     (setq _UR_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _C_level
     (setq _C_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LL_level_abs
     (setq _LL_level_abs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LR_level_abs
     (setq _LR_level_abs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _UL_level_abs
     (setq _UL_level_abs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _UR_level_abs
     (setq _UR_level_abs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _C_level_abs
     (setq _C_level_abs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get wireless_network_msgs::Levels_WiFi_2D :md5sum-) "b6a31ec136ad71020ee606788242b927")
(setf (get wireless_network_msgs::Levels_WiFi_2D :datatype-) "wireless_network_msgs/Levels_WiFi_2D")
(setf (get wireless_network_msgs::Levels_WiFi_2D :definition-)
      "Header header

float32 LL_level 
# Lower left WiFi signal in a normalized scale (1-100)

float32 LR_level 
# Lower Right WiFi signal in a normalized scale (1-100)

float32 UL_level 
# Upper Left WiFi signal in a normalized scale (1-100)

float32 UR_level 
# Upper Right WiFi signal in a normalized scale (1-100)

float32 C_level 
# Center WiFi signal in a normalized scale (1-100)

float32 LL_level_abs 
# Lower Left WiFi signal in dBm

float32 LR_level_abs 
# Lower Right WiFi signal in dBm

float32 UL_level_abs 
# Lower Left WiFi signal in dBm

float32 UR_level_abs 
# Upper Right WiFi signal in dBm

float32 C_level_abs 
# Center WiFi signal in dBm



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



(provide :wireless_network_msgs/Levels_WiFi_2D "b6a31ec136ad71020ee606788242b927")


