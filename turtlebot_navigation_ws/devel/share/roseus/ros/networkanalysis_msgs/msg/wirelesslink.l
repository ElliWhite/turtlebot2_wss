;; Auto-generated. Do not edit!


(when (boundp 'networkanalysis_msgs::wirelesslink)
  (if (not (find-package "NETWORKANALYSIS_MSGS"))
    (make-package "NETWORKANALYSIS_MSGS"))
  (shadow 'wirelesslink (find-package "NETWORKANALYSIS_MSGS")))
(unless (find-package "NETWORKANALYSIS_MSGS::WIRELESSLINK")
  (make-package "NETWORKANALYSIS_MSGS::WIRELESSLINK"))

(in-package "ROS")
;;//! \htmlinclude wirelesslink.msg.html


(defclass networkanalysis_msgs::wirelesslink
  :super ros::object
  :slots (_rssi _lqi _noise ))

(defmethod networkanalysis_msgs::wirelesslink
  (:init
   (&key
    ((:rssi __rssi) 0)
    ((:lqi __lqi) 0)
    ((:noise __noise) 0)
    )
   (send-super :init)
   (setq _rssi (round __rssi))
   (setq _lqi (round __lqi))
   (setq _noise (round __noise))
   self)
  (:rssi
   (&optional __rssi)
   (if __rssi (setq _rssi __rssi)) _rssi)
  (:lqi
   (&optional __lqi)
   (if __lqi (setq _lqi __lqi)) _lqi)
  (:noise
   (&optional __noise)
   (if __noise (setq _noise __noise)) _noise)
  (:serialization-length
   ()
   (+
    ;; int16 _rssi
    2
    ;; int16 _lqi
    2
    ;; int16 _noise
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _rssi
       (write-word _rssi s)
     ;; int16 _lqi
       (write-word _lqi s)
     ;; int16 _noise
       (write-word _noise s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _rssi
     (setq _rssi (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _lqi
     (setq _lqi (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _noise
     (setq _noise (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get networkanalysis_msgs::wirelesslink :md5sum-) "457a5c2625e82fb0b67b1de1eee53435")
(setf (get networkanalysis_msgs::wirelesslink :datatype-) "networkanalysis_msgs/wirelesslink")
(setf (get networkanalysis_msgs::wirelesslink :definition-)
      "#Received Signal Strength (RSS) in dBm
int16 rssi

#Link Quality of the wireless link in percentage
int16 lqi

#Noise floor of the wireless link in dBm (only very few NICs provide this correctly)
int16 noise

")



(provide :networkanalysis_msgs/wirelesslink "457a5c2625e82fb0b67b1de1eee53435")


