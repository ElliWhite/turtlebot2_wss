;; Auto-generated. Do not edit!


(when (boundp 'laser_mapper::LoadTrajectory)
  (if (not (find-package "LASER_MAPPER"))
    (make-package "LASER_MAPPER"))
  (shadow 'LoadTrajectory (find-package "LASER_MAPPER")))
(unless (find-package "LASER_MAPPER::LOADTRAJECTORY")
  (make-package "LASER_MAPPER::LOADTRAJECTORY"))
(unless (find-package "LASER_MAPPER::LOADTRAJECTORYREQUEST")
  (make-package "LASER_MAPPER::LOADTRAJECTORYREQUEST"))
(unless (find-package "LASER_MAPPER::LOADTRAJECTORYRESPONSE")
  (make-package "LASER_MAPPER::LOADTRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass laser_mapper::LoadTrajectoryRequest
  :super ros::object
  :slots (_file_path ))

(defmethod laser_mapper::LoadTrajectoryRequest
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

(defclass laser_mapper::LoadTrajectoryResponse
  :super ros::object
  :slots ())

(defmethod laser_mapper::LoadTrajectoryResponse
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

(defclass laser_mapper::LoadTrajectory
  :super ros::object
  :slots ())

(setf (get laser_mapper::LoadTrajectory :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get laser_mapper::LoadTrajectory :datatype-) "laser_mapper/LoadTrajectory")
(setf (get laser_mapper::LoadTrajectory :request) laser_mapper::LoadTrajectoryRequest)
(setf (get laser_mapper::LoadTrajectory :response) laser_mapper::LoadTrajectoryResponse)

(defmethod laser_mapper::LoadTrajectoryRequest
  (:response () (instance laser_mapper::LoadTrajectoryResponse :init)))

(setf (get laser_mapper::LoadTrajectoryRequest :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get laser_mapper::LoadTrajectoryRequest :datatype-) "laser_mapper/LoadTrajectoryRequest")
(setf (get laser_mapper::LoadTrajectoryRequest :definition-)
      "string file_path
---
")

(setf (get laser_mapper::LoadTrajectoryResponse :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get laser_mapper::LoadTrajectoryResponse :datatype-) "laser_mapper/LoadTrajectoryResponse")
(setf (get laser_mapper::LoadTrajectoryResponse :definition-)
      "string file_path
---
")



(provide :laser_mapper/LoadTrajectory "a1f82596372c52a517e1fe32d1e998e8")


