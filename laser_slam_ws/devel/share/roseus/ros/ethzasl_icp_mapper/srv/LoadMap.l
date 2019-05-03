;; Auto-generated. Do not edit!


(when (boundp 'ethzasl_icp_mapper::LoadMap)
  (if (not (find-package "ETHZASL_ICP_MAPPER"))
    (make-package "ETHZASL_ICP_MAPPER"))
  (shadow 'LoadMap (find-package "ETHZASL_ICP_MAPPER")))
(unless (find-package "ETHZASL_ICP_MAPPER::LOADMAP")
  (make-package "ETHZASL_ICP_MAPPER::LOADMAP"))
(unless (find-package "ETHZASL_ICP_MAPPER::LOADMAPREQUEST")
  (make-package "ETHZASL_ICP_MAPPER::LOADMAPREQUEST"))
(unless (find-package "ETHZASL_ICP_MAPPER::LOADMAPRESPONSE")
  (make-package "ETHZASL_ICP_MAPPER::LOADMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass ethzasl_icp_mapper::LoadMapRequest
  :super ros::object
  :slots (_filename ))

(defmethod ethzasl_icp_mapper::LoadMapRequest
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

(defclass ethzasl_icp_mapper::LoadMapResponse
  :super ros::object
  :slots ())

(defmethod ethzasl_icp_mapper::LoadMapResponse
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

(defclass ethzasl_icp_mapper::LoadMap
  :super ros::object
  :slots ())

(setf (get ethzasl_icp_mapper::LoadMap :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get ethzasl_icp_mapper::LoadMap :datatype-) "ethzasl_icp_mapper/LoadMap")
(setf (get ethzasl_icp_mapper::LoadMap :request) ethzasl_icp_mapper::LoadMapRequest)
(setf (get ethzasl_icp_mapper::LoadMap :response) ethzasl_icp_mapper::LoadMapResponse)

(defmethod ethzasl_icp_mapper::LoadMapRequest
  (:response () (instance ethzasl_icp_mapper::LoadMapResponse :init)))

(setf (get ethzasl_icp_mapper::LoadMapRequest :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get ethzasl_icp_mapper::LoadMapRequest :datatype-) "ethzasl_icp_mapper/LoadMapRequest")
(setf (get ethzasl_icp_mapper::LoadMapRequest :definition-)
      "std_msgs/String filename

================================================================================
MSG: std_msgs/String
string data
---

")

(setf (get ethzasl_icp_mapper::LoadMapResponse :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get ethzasl_icp_mapper::LoadMapResponse :datatype-) "ethzasl_icp_mapper/LoadMapResponse")
(setf (get ethzasl_icp_mapper::LoadMapResponse :definition-)
      "std_msgs/String filename

================================================================================
MSG: std_msgs/String
string data
---

")



(provide :ethzasl_icp_mapper/LoadMap "716e25f9d9dc76ceba197f93cbf05dc7")


