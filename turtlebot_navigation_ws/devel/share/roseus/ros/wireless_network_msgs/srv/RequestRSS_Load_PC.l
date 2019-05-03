;; Auto-generated. Do not edit!


(when (boundp 'wireless_network_msgs::RequestRSS_Load_PC)
  (if (not (find-package "WIRELESS_NETWORK_MSGS"))
    (make-package "WIRELESS_NETWORK_MSGS"))
  (shadow 'RequestRSS_Load_PC (find-package "WIRELESS_NETWORK_MSGS")))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_LOAD_PC")
  (make-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_LOAD_PC"))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_LOAD_PCREQUEST")
  (make-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_LOAD_PCREQUEST"))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_LOAD_PCRESPONSE")
  (make-package "WIRELESS_NETWORK_MSGS::REQUESTRSS_LOAD_PCRESPONSE"))

(in-package "ROS")





(defclass wireless_network_msgs::RequestRSS_Load_PCRequest
  :super ros::object
  :slots ())

(defmethod wireless_network_msgs::RequestRSS_Load_PCRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass wireless_network_msgs::RequestRSS_Load_PCResponse
  :super ros::object
  :slots (_status ))

(defmethod wireless_network_msgs::RequestRSS_Load_PCResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass wireless_network_msgs::RequestRSS_Load_PC
  :super ros::object
  :slots ())

(setf (get wireless_network_msgs::RequestRSS_Load_PC :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get wireless_network_msgs::RequestRSS_Load_PC :datatype-) "wireless_network_msgs/RequestRSS_Load_PC")
(setf (get wireless_network_msgs::RequestRSS_Load_PC :request) wireless_network_msgs::RequestRSS_Load_PCRequest)
(setf (get wireless_network_msgs::RequestRSS_Load_PC :response) wireless_network_msgs::RequestRSS_Load_PCResponse)

(defmethod wireless_network_msgs::RequestRSS_Load_PCRequest
  (:response () (instance wireless_network_msgs::RequestRSS_Load_PCResponse :init)))

(setf (get wireless_network_msgs::RequestRSS_Load_PCRequest :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get wireless_network_msgs::RequestRSS_Load_PCRequest :datatype-) "wireless_network_msgs/RequestRSS_Load_PCRequest")
(setf (get wireless_network_msgs::RequestRSS_Load_PCRequest :definition-)
      "
---

bool status


")

(setf (get wireless_network_msgs::RequestRSS_Load_PCResponse :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get wireless_network_msgs::RequestRSS_Load_PCResponse :datatype-) "wireless_network_msgs/RequestRSS_Load_PCResponse")
(setf (get wireless_network_msgs::RequestRSS_Load_PCResponse :definition-)
      "
---

bool status


")



(provide :wireless_network_msgs/RequestRSS_Load_PC "3a1255d4d998bd4d6585c64639b5ee9a")


