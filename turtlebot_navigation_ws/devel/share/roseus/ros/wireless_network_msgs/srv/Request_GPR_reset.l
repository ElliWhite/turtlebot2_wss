;; Auto-generated. Do not edit!


(when (boundp 'wireless_network_msgs::Request_GPR_reset)
  (if (not (find-package "WIRELESS_NETWORK_MSGS"))
    (make-package "WIRELESS_NETWORK_MSGS"))
  (shadow 'Request_GPR_reset (find-package "WIRELESS_NETWORK_MSGS")))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUEST_GPR_RESET")
  (make-package "WIRELESS_NETWORK_MSGS::REQUEST_GPR_RESET"))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUEST_GPR_RESETREQUEST")
  (make-package "WIRELESS_NETWORK_MSGS::REQUEST_GPR_RESETREQUEST"))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUEST_GPR_RESETRESPONSE")
  (make-package "WIRELESS_NETWORK_MSGS::REQUEST_GPR_RESETRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass wireless_network_msgs::Request_GPR_resetRequest
  :super ros::object
  :slots (_id_source ))

(defmethod wireless_network_msgs::Request_GPR_resetRequest
  (:init
   (&key
    ((:id_source __id_source) (instance std_msgs::Int32 :init))
    )
   (send-super :init)
   (setq _id_source __id_source)
   self)
  (:id_source
   (&rest __id_source)
   (if (keywordp (car __id_source))
       (send* _id_source __id_source)
     (progn
       (if __id_source (setq _id_source (car __id_source)))
       _id_source)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32 _id_source
    (send _id_source :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32 _id_source
       (send _id_source :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32 _id_source
     (send _id_source :deserialize buf ptr-) (incf ptr- (send _id_source :serialization-length))
   ;;
   self)
  )

(defclass wireless_network_msgs::Request_GPR_resetResponse
  :super ros::object
  :slots (_success ))

(defmethod wireless_network_msgs::Request_GPR_resetResponse
  (:init
   (&key
    ((:success __success) (instance std_msgs::Int32 :init))
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&rest __success)
   (if (keywordp (car __success))
       (send* _success __success)
     (progn
       (if __success (setq _success (car __success)))
       _success)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32 _success
    (send _success :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32 _success
       (send _success :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32 _success
     (send _success :deserialize buf ptr-) (incf ptr- (send _success :serialization-length))
   ;;
   self)
  )

(defclass wireless_network_msgs::Request_GPR_reset
  :super ros::object
  :slots ())

(setf (get wireless_network_msgs::Request_GPR_reset :md5sum-) "7818eabd25118ebe6de9ee66d82ef30c")
(setf (get wireless_network_msgs::Request_GPR_reset :datatype-) "wireless_network_msgs/Request_GPR_reset")
(setf (get wireless_network_msgs::Request_GPR_reset :request) wireless_network_msgs::Request_GPR_resetRequest)
(setf (get wireless_network_msgs::Request_GPR_reset :response) wireless_network_msgs::Request_GPR_resetResponse)

(defmethod wireless_network_msgs::Request_GPR_resetRequest
  (:response () (instance wireless_network_msgs::Request_GPR_resetResponse :init)))

(setf (get wireless_network_msgs::Request_GPR_resetRequest :md5sum-) "7818eabd25118ebe6de9ee66d82ef30c")
(setf (get wireless_network_msgs::Request_GPR_resetRequest :datatype-) "wireless_network_msgs/Request_GPR_resetRequest")
(setf (get wireless_network_msgs::Request_GPR_resetRequest :definition-)
      "
std_msgs/Int32 id_source

================================================================================
MSG: std_msgs/Int32
---

std_msgs/Int32 success


================================================================================
MSG: std_msgs/Int32
")

(setf (get wireless_network_msgs::Request_GPR_resetResponse :md5sum-) "7818eabd25118ebe6de9ee66d82ef30c")
(setf (get wireless_network_msgs::Request_GPR_resetResponse :datatype-) "wireless_network_msgs/Request_GPR_resetResponse")
(setf (get wireless_network_msgs::Request_GPR_resetResponse :definition-)
      "
std_msgs/Int32 id_source

================================================================================
MSG: std_msgs/Int32
---

std_msgs/Int32 success


================================================================================
MSG: std_msgs/Int32
")



(provide :wireless_network_msgs/Request_GPR_reset "7818eabd25118ebe6de9ee66d82ef30c")


