;; Auto-generated. Do not edit!


(when (boundp 'robot_trajectory_saver_msgs::SaveRobotTrajectories)
  (if (not (find-package "ROBOT_TRAJECTORY_SAVER_MSGS"))
    (make-package "ROBOT_TRAJECTORY_SAVER_MSGS"))
  (shadow 'SaveRobotTrajectories (find-package "ROBOT_TRAJECTORY_SAVER_MSGS")))
(unless (find-package "ROBOT_TRAJECTORY_SAVER_MSGS::SAVEROBOTTRAJECTORIES")
  (make-package "ROBOT_TRAJECTORY_SAVER_MSGS::SAVEROBOTTRAJECTORIES"))
(unless (find-package "ROBOT_TRAJECTORY_SAVER_MSGS::SAVEROBOTTRAJECTORIESREQUEST")
  (make-package "ROBOT_TRAJECTORY_SAVER_MSGS::SAVEROBOTTRAJECTORIESREQUEST"))
(unless (find-package "ROBOT_TRAJECTORY_SAVER_MSGS::SAVEROBOTTRAJECTORIESRESPONSE")
  (make-package "ROBOT_TRAJECTORY_SAVER_MSGS::SAVEROBOTTRAJECTORIESRESPONSE"))

(in-package "ROS")





(defclass robot_trajectory_saver_msgs::SaveRobotTrajectoriesRequest
  :super ros::object
  :slots (_file_path ))

(defmethod robot_trajectory_saver_msgs::SaveRobotTrajectoriesRequest
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

(defclass robot_trajectory_saver_msgs::SaveRobotTrajectoriesResponse
  :super ros::object
  :slots ())

(defmethod robot_trajectory_saver_msgs::SaveRobotTrajectoriesResponse
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

(defclass robot_trajectory_saver_msgs::SaveRobotTrajectories
  :super ros::object
  :slots ())

(setf (get robot_trajectory_saver_msgs::SaveRobotTrajectories :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get robot_trajectory_saver_msgs::SaveRobotTrajectories :datatype-) "robot_trajectory_saver_msgs/SaveRobotTrajectories")
(setf (get robot_trajectory_saver_msgs::SaveRobotTrajectories :request) robot_trajectory_saver_msgs::SaveRobotTrajectoriesRequest)
(setf (get robot_trajectory_saver_msgs::SaveRobotTrajectories :response) robot_trajectory_saver_msgs::SaveRobotTrajectoriesResponse)

(defmethod robot_trajectory_saver_msgs::SaveRobotTrajectoriesRequest
  (:response () (instance robot_trajectory_saver_msgs::SaveRobotTrajectoriesResponse :init)))

(setf (get robot_trajectory_saver_msgs::SaveRobotTrajectoriesRequest :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get robot_trajectory_saver_msgs::SaveRobotTrajectoriesRequest :datatype-) "robot_trajectory_saver_msgs/SaveRobotTrajectoriesRequest")
(setf (get robot_trajectory_saver_msgs::SaveRobotTrajectoriesRequest :definition-)
      "string file_path
---

")

(setf (get robot_trajectory_saver_msgs::SaveRobotTrajectoriesResponse :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get robot_trajectory_saver_msgs::SaveRobotTrajectoriesResponse :datatype-) "robot_trajectory_saver_msgs/SaveRobotTrajectoriesResponse")
(setf (get robot_trajectory_saver_msgs::SaveRobotTrajectoriesResponse :definition-)
      "string file_path
---

")



(provide :robot_trajectory_saver_msgs/SaveRobotTrajectories "a1f82596372c52a517e1fe32d1e998e8")


