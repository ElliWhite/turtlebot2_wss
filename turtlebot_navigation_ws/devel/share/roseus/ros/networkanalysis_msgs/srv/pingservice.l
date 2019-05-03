;; Auto-generated. Do not edit!


(when (boundp 'networkanalysis_msgs::pingservice)
  (if (not (find-package "NETWORKANALYSIS_MSGS"))
    (make-package "NETWORKANALYSIS_MSGS"))
  (shadow 'pingservice (find-package "NETWORKANALYSIS_MSGS")))
(unless (find-package "NETWORKANALYSIS_MSGS::PINGSERVICE")
  (make-package "NETWORKANALYSIS_MSGS::PINGSERVICE"))
(unless (find-package "NETWORKANALYSIS_MSGS::PINGSERVICEREQUEST")
  (make-package "NETWORKANALYSIS_MSGS::PINGSERVICEREQUEST"))
(unless (find-package "NETWORKANALYSIS_MSGS::PINGSERVICERESPONSE")
  (make-package "NETWORKANALYSIS_MSGS::PINGSERVICERESPONSE"))

(in-package "ROS")





(defclass networkanalysis_msgs::pingserviceRequest
  :super ros::object
  :slots (_inp ))

(defmethod networkanalysis_msgs::pingserviceRequest
  (:init
   (&key
    ((:inp __inp) 0)
    )
   (send-super :init)
   (setq _inp (round __inp))
   self)
  (:inp
   (&optional __inp)
   (if __inp (setq _inp __inp)) _inp)
  (:serialization-length
   ()
   (+
    ;; int16 _inp
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _inp
       (write-word _inp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _inp
     (setq _inp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass networkanalysis_msgs::pingserviceResponse
  :super ros::object
  :slots (_outp ))

(defmethod networkanalysis_msgs::pingserviceResponse
  (:init
   (&key
    ((:outp __outp) 0)
    )
   (send-super :init)
   (setq _outp (round __outp))
   self)
  (:outp
   (&optional __outp)
   (if __outp (setq _outp __outp)) _outp)
  (:serialization-length
   ()
   (+
    ;; int16 _outp
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _outp
       (write-word _outp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _outp
     (setq _outp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass networkanalysis_msgs::pingservice
  :super ros::object
  :slots ())

(setf (get networkanalysis_msgs::pingservice :md5sum-) "12a26707b8a62d612b0a1ffbc1162d35")
(setf (get networkanalysis_msgs::pingservice :datatype-) "networkanalysis_msgs/pingservice")
(setf (get networkanalysis_msgs::pingservice :request) networkanalysis_msgs::pingserviceRequest)
(setf (get networkanalysis_msgs::pingservice :response) networkanalysis_msgs::pingserviceResponse)

(defmethod networkanalysis_msgs::pingserviceRequest
  (:response () (instance networkanalysis_msgs::pingserviceResponse :init)))

(setf (get networkanalysis_msgs::pingserviceRequest :md5sum-) "12a26707b8a62d612b0a1ffbc1162d35")
(setf (get networkanalysis_msgs::pingserviceRequest :datatype-) "networkanalysis_msgs/pingserviceRequest")
(setf (get networkanalysis_msgs::pingserviceRequest :definition-)
      "int16 inp
---
int16 outp

")

(setf (get networkanalysis_msgs::pingserviceResponse :md5sum-) "12a26707b8a62d612b0a1ffbc1162d35")
(setf (get networkanalysis_msgs::pingserviceResponse :datatype-) "networkanalysis_msgs/pingserviceResponse")
(setf (get networkanalysis_msgs::pingserviceResponse :definition-)
      "int16 inp
---
int16 outp

")



(provide :networkanalysis_msgs/pingservice "12a26707b8a62d612b0a1ffbc1162d35")


