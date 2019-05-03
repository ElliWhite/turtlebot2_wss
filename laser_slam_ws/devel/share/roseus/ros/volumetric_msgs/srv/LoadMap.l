;; Auto-generated. Do not edit!


(when (boundp 'volumetric_msgs::LoadMap)
  (if (not (find-package "VOLUMETRIC_MSGS"))
    (make-package "VOLUMETRIC_MSGS"))
  (shadow 'LoadMap (find-package "VOLUMETRIC_MSGS")))
(unless (find-package "VOLUMETRIC_MSGS::LOADMAP")
  (make-package "VOLUMETRIC_MSGS::LOADMAP"))
(unless (find-package "VOLUMETRIC_MSGS::LOADMAPREQUEST")
  (make-package "VOLUMETRIC_MSGS::LOADMAPREQUEST"))
(unless (find-package "VOLUMETRIC_MSGS::LOADMAPRESPONSE")
  (make-package "VOLUMETRIC_MSGS::LOADMAPRESPONSE"))

(in-package "ROS")





(defclass volumetric_msgs::LoadMapRequest
  :super ros::object
  :slots (_file_path ))

(defmethod volumetric_msgs::LoadMapRequest
  (:init
   (&key
    ((:file_path __file_path) "")
    )
   (send-super :init)
   (setq _file_path (string __file_path))
   self)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:serialization-length
   ()
   (+
    ;; string _file_path
    4 (length _file_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass volumetric_msgs::LoadMapResponse
  :super ros::object
  :slots ())

(defmethod volumetric_msgs::LoadMapResponse
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

(defclass volumetric_msgs::LoadMap
  :super ros::object
  :slots ())

(setf (get volumetric_msgs::LoadMap :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get volumetric_msgs::LoadMap :datatype-) "volumetric_msgs/LoadMap")
(setf (get volumetric_msgs::LoadMap :request) volumetric_msgs::LoadMapRequest)
(setf (get volumetric_msgs::LoadMap :response) volumetric_msgs::LoadMapResponse)

(defmethod volumetric_msgs::LoadMapRequest
  (:response () (instance volumetric_msgs::LoadMapResponse :init)))

(setf (get volumetric_msgs::LoadMapRequest :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get volumetric_msgs::LoadMapRequest :datatype-) "volumetric_msgs/LoadMapRequest")
(setf (get volumetric_msgs::LoadMapRequest :definition-)
      "string file_path
---

")

(setf (get volumetric_msgs::LoadMapResponse :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get volumetric_msgs::LoadMapResponse :datatype-) "volumetric_msgs/LoadMapResponse")
(setf (get volumetric_msgs::LoadMapResponse :definition-)
      "string file_path
---

")



(provide :volumetric_msgs/LoadMap "a1f82596372c52a517e1fe32d1e998e8")


