;; Auto-generated. Do not edit!


(when (boundp 'laser_mapper::SaveTrajectory)
  (if (not (find-package "LASER_MAPPER"))
    (make-package "LASER_MAPPER"))
  (shadow 'SaveTrajectory (find-package "LASER_MAPPER")))
(unless (find-package "LASER_MAPPER::SAVETRAJECTORY")
  (make-package "LASER_MAPPER::SAVETRAJECTORY"))
(unless (find-package "LASER_MAPPER::SAVETRAJECTORYREQUEST")
  (make-package "LASER_MAPPER::SAVETRAJECTORYREQUEST"))
(unless (find-package "LASER_MAPPER::SAVETRAJECTORYRESPONSE")
  (make-package "LASER_MAPPER::SAVETRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass laser_mapper::SaveTrajectoryRequest
  :super ros::object
  :slots (_file_path ))

(defmethod laser_mapper::SaveTrajectoryRequest
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

(defclass laser_mapper::SaveTrajectoryResponse
  :super ros::object
  :slots ())

(defmethod laser_mapper::SaveTrajectoryResponse
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

(defclass laser_mapper::SaveTrajectory
  :super ros::object
  :slots ())

(setf (get laser_mapper::SaveTrajectory :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get laser_mapper::SaveTrajectory :datatype-) "laser_mapper/SaveTrajectory")
(setf (get laser_mapper::SaveTrajectory :request) laser_mapper::SaveTrajectoryRequest)
(setf (get laser_mapper::SaveTrajectory :response) laser_mapper::SaveTrajectoryResponse)

(defmethod laser_mapper::SaveTrajectoryRequest
  (:response () (instance laser_mapper::SaveTrajectoryResponse :init)))

(setf (get laser_mapper::SaveTrajectoryRequest :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get laser_mapper::SaveTrajectoryRequest :datatype-) "laser_mapper/SaveTrajectoryRequest")
(setf (get laser_mapper::SaveTrajectoryRequest :definition-)
      "string file_path
---
")

(setf (get laser_mapper::SaveTrajectoryResponse :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get laser_mapper::SaveTrajectoryResponse :datatype-) "laser_mapper/SaveTrajectoryResponse")
(setf (get laser_mapper::SaveTrajectoryResponse :definition-)
      "string file_path
---
")



(provide :laser_mapper/SaveTrajectory "a1f82596372c52a517e1fe32d1e998e8")


