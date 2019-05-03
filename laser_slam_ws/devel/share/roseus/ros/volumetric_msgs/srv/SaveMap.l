;; Auto-generated. Do not edit!


(when (boundp 'volumetric_msgs::SaveMap)
  (if (not (find-package "VOLUMETRIC_MSGS"))
    (make-package "VOLUMETRIC_MSGS"))
  (shadow 'SaveMap (find-package "VOLUMETRIC_MSGS")))
(unless (find-package "VOLUMETRIC_MSGS::SAVEMAP")
  (make-package "VOLUMETRIC_MSGS::SAVEMAP"))
(unless (find-package "VOLUMETRIC_MSGS::SAVEMAPREQUEST")
  (make-package "VOLUMETRIC_MSGS::SAVEMAPREQUEST"))
(unless (find-package "VOLUMETRIC_MSGS::SAVEMAPRESPONSE")
  (make-package "VOLUMETRIC_MSGS::SAVEMAPRESPONSE"))

(in-package "ROS")





(defclass volumetric_msgs::SaveMapRequest
  :super ros::object
  :slots (_file_path ))

(defmethod volumetric_msgs::SaveMapRequest
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

(defclass volumetric_msgs::SaveMapResponse
  :super ros::object
  :slots ())

(defmethod volumetric_msgs::SaveMapResponse
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

(defclass volumetric_msgs::SaveMap
  :super ros::object
  :slots ())

(setf (get volumetric_msgs::SaveMap :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get volumetric_msgs::SaveMap :datatype-) "volumetric_msgs/SaveMap")
(setf (get volumetric_msgs::SaveMap :request) volumetric_msgs::SaveMapRequest)
(setf (get volumetric_msgs::SaveMap :response) volumetric_msgs::SaveMapResponse)

(defmethod volumetric_msgs::SaveMapRequest
  (:response () (instance volumetric_msgs::SaveMapResponse :init)))

(setf (get volumetric_msgs::SaveMapRequest :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get volumetric_msgs::SaveMapRequest :datatype-) "volumetric_msgs/SaveMapRequest")
(setf (get volumetric_msgs::SaveMapRequest :definition-)
      "string file_path
---

")

(setf (get volumetric_msgs::SaveMapResponse :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get volumetric_msgs::SaveMapResponse :datatype-) "volumetric_msgs/SaveMapResponse")
(setf (get volumetric_msgs::SaveMapResponse :definition-)
      "string file_path
---

")



(provide :volumetric_msgs/SaveMap "a1f82596372c52a517e1fe32d1e998e8")


