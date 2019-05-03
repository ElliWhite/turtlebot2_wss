;; Auto-generated. Do not edit!


(when (boundp 'volumetric_msgs::SetDisplayBounds)
  (if (not (find-package "VOLUMETRIC_MSGS"))
    (make-package "VOLUMETRIC_MSGS"))
  (shadow 'SetDisplayBounds (find-package "VOLUMETRIC_MSGS")))
(unless (find-package "VOLUMETRIC_MSGS::SETDISPLAYBOUNDS")
  (make-package "VOLUMETRIC_MSGS::SETDISPLAYBOUNDS"))
(unless (find-package "VOLUMETRIC_MSGS::SETDISPLAYBOUNDSREQUEST")
  (make-package "VOLUMETRIC_MSGS::SETDISPLAYBOUNDSREQUEST"))
(unless (find-package "VOLUMETRIC_MSGS::SETDISPLAYBOUNDSRESPONSE")
  (make-package "VOLUMETRIC_MSGS::SETDISPLAYBOUNDSRESPONSE"))

(in-package "ROS")





(defclass volumetric_msgs::SetDisplayBoundsRequest
  :super ros::object
  :slots (_min_z _max_z ))

(defmethod volumetric_msgs::SetDisplayBoundsRequest
  (:init
   (&key
    ((:min_z __min_z) 0.0)
    ((:max_z __max_z) 0.0)
    )
   (send-super :init)
   (setq _min_z (float __min_z))
   (setq _max_z (float __max_z))
   self)
  (:min_z
   (&optional __min_z)
   (if __min_z (setq _min_z __min_z)) _min_z)
  (:max_z
   (&optional __max_z)
   (if __max_z (setq _max_z __max_z)) _max_z)
  (:serialization-length
   ()
   (+
    ;; float64 _min_z
    8
    ;; float64 _max_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _min_z
       (sys::poke _min_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_z
       (sys::poke _max_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _min_z
     (setq _min_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_z
     (setq _max_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass volumetric_msgs::SetDisplayBoundsResponse
  :super ros::object
  :slots ())

(defmethod volumetric_msgs::SetDisplayBoundsResponse
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

(defclass volumetric_msgs::SetDisplayBounds
  :super ros::object
  :slots ())

(setf (get volumetric_msgs::SetDisplayBounds :md5sum-) "07683f201de683853c90da45e9c9c84a")
(setf (get volumetric_msgs::SetDisplayBounds :datatype-) "volumetric_msgs/SetDisplayBounds")
(setf (get volumetric_msgs::SetDisplayBounds :request) volumetric_msgs::SetDisplayBoundsRequest)
(setf (get volumetric_msgs::SetDisplayBounds :response) volumetric_msgs::SetDisplayBoundsResponse)

(defmethod volumetric_msgs::SetDisplayBoundsRequest
  (:response () (instance volumetric_msgs::SetDisplayBoundsResponse :init)))

(setf (get volumetric_msgs::SetDisplayBoundsRequest :md5sum-) "07683f201de683853c90da45e9c9c84a")
(setf (get volumetric_msgs::SetDisplayBoundsRequest :datatype-) "volumetric_msgs/SetDisplayBoundsRequest")
(setf (get volumetric_msgs::SetDisplayBoundsRequest :definition-)
      "float64 min_z
float64 max_z
---

")

(setf (get volumetric_msgs::SetDisplayBoundsResponse :md5sum-) "07683f201de683853c90da45e9c9c84a")
(setf (get volumetric_msgs::SetDisplayBoundsResponse :datatype-) "volumetric_msgs/SetDisplayBoundsResponse")
(setf (get volumetric_msgs::SetDisplayBoundsResponse :definition-)
      "float64 min_z
float64 max_z
---

")



(provide :volumetric_msgs/SetDisplayBounds "07683f201de683853c90da45e9c9c84a")


