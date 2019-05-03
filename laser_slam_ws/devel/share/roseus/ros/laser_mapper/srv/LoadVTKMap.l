;; Auto-generated. Do not edit!


(when (boundp 'laser_mapper::LoadVTKMap)
  (if (not (find-package "LASER_MAPPER"))
    (make-package "LASER_MAPPER"))
  (shadow 'LoadVTKMap (find-package "LASER_MAPPER")))
(unless (find-package "LASER_MAPPER::LOADVTKMAP")
  (make-package "LASER_MAPPER::LOADVTKMAP"))
(unless (find-package "LASER_MAPPER::LOADVTKMAPREQUEST")
  (make-package "LASER_MAPPER::LOADVTKMAPREQUEST"))
(unless (find-package "LASER_MAPPER::LOADVTKMAPRESPONSE")
  (make-package "LASER_MAPPER::LOADVTKMAPRESPONSE"))

(in-package "ROS")





(defclass laser_mapper::LoadVTKMapRequest
  :super ros::object
  :slots (_filename ))

(defmethod laser_mapper::LoadVTKMapRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass laser_mapper::LoadVTKMapResponse
  :super ros::object
  :slots ())

(defmethod laser_mapper::LoadVTKMapResponse
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

(defclass laser_mapper::LoadVTKMap
  :super ros::object
  :slots ())

(setf (get laser_mapper::LoadVTKMap :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get laser_mapper::LoadVTKMap :datatype-) "laser_mapper/LoadVTKMap")
(setf (get laser_mapper::LoadVTKMap :request) laser_mapper::LoadVTKMapRequest)
(setf (get laser_mapper::LoadVTKMap :response) laser_mapper::LoadVTKMapResponse)

(defmethod laser_mapper::LoadVTKMapRequest
  (:response () (instance laser_mapper::LoadVTKMapResponse :init)))

(setf (get laser_mapper::LoadVTKMapRequest :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get laser_mapper::LoadVTKMapRequest :datatype-) "laser_mapper/LoadVTKMapRequest")
(setf (get laser_mapper::LoadVTKMapRequest :definition-)
      "string filename
---
")

(setf (get laser_mapper::LoadVTKMapResponse :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get laser_mapper::LoadVTKMapResponse :datatype-) "laser_mapper/LoadVTKMapResponse")
(setf (get laser_mapper::LoadVTKMapResponse :definition-)
      "string filename
---
")



(provide :laser_mapper/LoadVTKMap "030824f52a0628ead956fb9d67e66ae9")


