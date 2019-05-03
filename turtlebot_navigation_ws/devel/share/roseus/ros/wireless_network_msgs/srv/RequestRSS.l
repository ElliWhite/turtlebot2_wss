;; Auto-generated. Do not edit!


(when (boundp 'wireless_network_msgs::RequestRSS)
  (if (not (find-package "WIRELESS_NETWORK_MSGS"))
    (make-package "WIRELESS_NETWORK_MSGS"))
  (shadow 'RequestRSS (find-package "WIRELESS_NETWORK_MSGS")))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUESTRSS")
  (make-package "WIRELESS_NETWORK_MSGS::REQUESTRSS"))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUESTRSSREQUEST")
  (make-package "WIRELESS_NETWORK_MSGS::REQUESTRSSREQUEST"))
(unless (find-package "WIRELESS_NETWORK_MSGS::REQUESTRSSRESPONSE")
  (make-package "WIRELESS_NETWORK_MSGS::REQUESTRSSRESPONSE"))

(in-package "ROS")





(defclass wireless_network_msgs::RequestRSSRequest
  :super ros::object
  :slots (_x_position _y_position _z_position _source ))

(defmethod wireless_network_msgs::RequestRSSRequest
  (:init
   (&key
    ((:x_position __x_position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y_position __y_position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:z_position __z_position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:source __source) 0)
    )
   (send-super :init)
   (setq _x_position __x_position)
   (setq _y_position __y_position)
   (setq _z_position __z_position)
   (setq _source (round __source))
   self)
  (:x_position
   (&optional __x_position)
   (if __x_position (setq _x_position __x_position)) _x_position)
  (:y_position
   (&optional __y_position)
   (if __y_position (setq _y_position __y_position)) _y_position)
  (:z_position
   (&optional __z_position)
   (if __z_position (setq _z_position __z_position)) _z_position)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:serialization-length
   ()
   (+
    ;; float32[] _x_position
    (* 4    (length _x_position)) 4
    ;; float32[] _y_position
    (* 4    (length _y_position)) 4
    ;; float32[] _z_position
    (* 4    (length _z_position)) 4
    ;; int32 _source
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _x_position
     (write-long (length _x_position) s)
     (dotimes (i (length _x_position))
       (sys::poke (elt _x_position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y_position
     (write-long (length _y_position) s)
     (dotimes (i (length _y_position))
       (sys::poke (elt _y_position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _z_position
     (write-long (length _z_position) s)
     (dotimes (i (length _z_position))
       (sys::poke (elt _z_position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _source
       (write-long _source s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _x_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x_position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y_position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _z_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _z_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _z_position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _source
     (setq _source (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass wireless_network_msgs::RequestRSSResponse
  :super ros::object
  :slots (_rssi_m _rssi_var ))

(defmethod wireless_network_msgs::RequestRSSResponse
  (:init
   (&key
    ((:rssi_m __rssi_m) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rssi_var __rssi_var) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _rssi_m __rssi_m)
   (setq _rssi_var __rssi_var)
   self)
  (:rssi_m
   (&optional __rssi_m)
   (if __rssi_m (setq _rssi_m __rssi_m)) _rssi_m)
  (:rssi_var
   (&optional __rssi_var)
   (if __rssi_var (setq _rssi_var __rssi_var)) _rssi_var)
  (:serialization-length
   ()
   (+
    ;; float32[] _rssi_m
    (* 4    (length _rssi_m)) 4
    ;; float32[] _rssi_var
    (* 4    (length _rssi_var)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _rssi_m
     (write-long (length _rssi_m) s)
     (dotimes (i (length _rssi_m))
       (sys::poke (elt _rssi_m i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _rssi_var
     (write-long (length _rssi_var) s)
     (dotimes (i (length _rssi_var))
       (sys::poke (elt _rssi_var i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _rssi_m
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rssi_m (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rssi_m i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _rssi_var
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rssi_var (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rssi_var i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass wireless_network_msgs::RequestRSS
  :super ros::object
  :slots ())

(setf (get wireless_network_msgs::RequestRSS :md5sum-) "d8423904b521dd22d9d11c6abff995e6")
(setf (get wireless_network_msgs::RequestRSS :datatype-) "wireless_network_msgs/RequestRSS")
(setf (get wireless_network_msgs::RequestRSS :request) wireless_network_msgs::RequestRSSRequest)
(setf (get wireless_network_msgs::RequestRSS :response) wireless_network_msgs::RequestRSSResponse)

(defmethod wireless_network_msgs::RequestRSSRequest
  (:response () (instance wireless_network_msgs::RequestRSSResponse :init)))

(setf (get wireless_network_msgs::RequestRSSRequest :md5sum-) "d8423904b521dd22d9d11c6abff995e6")
(setf (get wireless_network_msgs::RequestRSSRequest :datatype-) "wireless_network_msgs/RequestRSSRequest")
(setf (get wireless_network_msgs::RequestRSSRequest :definition-)
      "
float32[] x_position
float32[] y_position
float32[] z_position


int32 source

---

float32[] rssi_m
float32[] rssi_var

")

(setf (get wireless_network_msgs::RequestRSSResponse :md5sum-) "d8423904b521dd22d9d11c6abff995e6")
(setf (get wireless_network_msgs::RequestRSSResponse :datatype-) "wireless_network_msgs/RequestRSSResponse")
(setf (get wireless_network_msgs::RequestRSSResponse :definition-)
      "
float32[] x_position
float32[] y_position
float32[] z_position


int32 source

---

float32[] rssi_m
float32[] rssi_var

")



(provide :wireless_network_msgs/RequestRSS "d8423904b521dd22d9d11c6abff995e6")


