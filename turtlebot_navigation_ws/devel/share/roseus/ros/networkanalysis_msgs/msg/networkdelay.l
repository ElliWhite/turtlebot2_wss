;; Auto-generated. Do not edit!


(when (boundp 'networkanalysis_msgs::networkdelay)
  (if (not (find-package "NETWORKANALYSIS_MSGS"))
    (make-package "NETWORKANALYSIS_MSGS"))
  (shadow 'networkdelay (find-package "NETWORKANALYSIS_MSGS")))
(unless (find-package "NETWORKANALYSIS_MSGS::NETWORKDELAY")
  (make-package "NETWORKANALYSIS_MSGS::NETWORKDELAY"))

(in-package "ROS")
;;//! \htmlinclude networkdelay.msg.html


(defclass networkanalysis_msgs::networkdelay
  :super ros::object
  :slots (_rtt _delay _alive ))

(defmethod networkanalysis_msgs::networkdelay
  (:init
   (&key
    ((:rtt __rtt) 0)
    ((:delay __delay) 0)
    ((:alive __alive) nil)
    )
   (send-super :init)
   (setq _rtt (round __rtt))
   (setq _delay (round __delay))
   (setq _alive __alive)
   self)
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
   ;; int32 _rtt
     (setq _rtt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _delay
     (setq _delay (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _alive
     (setq _alive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get networkanalysis_msgs::networkdelay :md5sum-) "d03f4625e59c7764c5a566890285e1e3")
(setf (get networkanalysis_msgs::networkdelay :datatype-) "networkanalysis_msgs/networkdelay")
(setf (get networkanalysis_msgs::networkdelay :definition-)
      "#round trip time (rtt) obtained using \"ping\" with ICMO echo request
int32 rtt

#network delay obtained directly at the application level (ros service call)
int32 delay

#Flag to check if the link is alive or dead
bool alive

")



(provide :networkanalysis_msgs/networkdelay "d03f4625e59c7764c5a566890285e1e3")


