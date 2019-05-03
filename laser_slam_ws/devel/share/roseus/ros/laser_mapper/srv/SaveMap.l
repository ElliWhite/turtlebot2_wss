;; Auto-generated. Do not edit!


(when (boundp 'laser_mapper::SaveMap)
  (if (not (find-package "LASER_MAPPER"))
    (make-package "LASER_MAPPER"))
  (shadow 'SaveMap (find-package "LASER_MAPPER")))
(unless (find-package "LASER_MAPPER::SAVEMAP")
  (make-package "LASER_MAPPER::SAVEMAP"))
(unless (find-package "LASER_MAPPER::SAVEMAPREQUEST")
  (make-package "LASER_MAPPER::SAVEMAPREQUEST"))
(unless (find-package "LASER_MAPPER::SAVEMAPRESPONSE")
  (make-package "LASER_MAPPER::SAVEMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass laser_mapper::SaveMapRequest
  :super ros::object
  :slots (_filename ))

(defmethod laser_mapper::SaveMapRequest
  (:init
   (&key
    ((:filename __filename) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _filename __filename)
   self)
  (:filename
   (&rest __filename)
   (if (keywordp (car __filename))
       (send* _filename __filename)
     (progn
       (if __filename (setq _filename (car __filename)))
       _filename)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _filename
    (send _filename :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _filename
       (send _filename :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _filename
     (send _filename :deserialize buf ptr-) (incf ptr- (send _filename :serialization-length))
   ;;
   self)
  )

(defclass laser_mapper::SaveMapResponse
  :super ros::object
  :slots ())

(defmethod laser_mapper::SaveMapResponse
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

(defclass laser_mapper::SaveMap
  :super ros::object
  :slots ())

(setf (get laser_mapper::SaveMap :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get laser_mapper::SaveMap :datatype-) "laser_mapper/SaveMap")
(setf (get laser_mapper::SaveMap :request) laser_mapper::SaveMapRequest)
(setf (get laser_mapper::SaveMap :response) laser_mapper::SaveMapResponse)

(defmethod laser_mapper::SaveMapRequest
  (:response () (instance laser_mapper::SaveMapResponse :init)))

(setf (get laser_mapper::SaveMapRequest :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get laser_mapper::SaveMapRequest :datatype-) "laser_mapper/SaveMapRequest")
(setf (get laser_mapper::SaveMapRequest :definition-)
      "
std_msgs/String filename

================================================================================
MSG: std_msgs/String
string data
---
")

(setf (get laser_mapper::SaveMapResponse :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get laser_mapper::SaveMapResponse :datatype-) "laser_mapper/SaveMapResponse")
(setf (get laser_mapper::SaveMapResponse :definition-)
      "
std_msgs/String filename

================================================================================
MSG: std_msgs/String
string data
---
")



(provide :laser_mapper/SaveMap "716e25f9d9dc76ceba197f93cbf05dc7")


