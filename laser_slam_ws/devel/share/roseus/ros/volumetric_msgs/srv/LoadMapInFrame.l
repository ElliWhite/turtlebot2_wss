;; Auto-generated. Do not edit!


(when (boundp 'volumetric_msgs::LoadMapInFrame)
  (if (not (find-package "VOLUMETRIC_MSGS"))
    (make-package "VOLUMETRIC_MSGS"))
  (shadow 'LoadMapInFrame (find-package "VOLUMETRIC_MSGS")))
(unless (find-package "VOLUMETRIC_MSGS::LOADMAPINFRAME")
  (make-package "VOLUMETRIC_MSGS::LOADMAPINFRAME"))
(unless (find-package "VOLUMETRIC_MSGS::LOADMAPINFRAMEREQUEST")
  (make-package "VOLUMETRIC_MSGS::LOADMAPINFRAMEREQUEST"))
(unless (find-package "VOLUMETRIC_MSGS::LOADMAPINFRAMERESPONSE")
  (make-package "VOLUMETRIC_MSGS::LOADMAPINFRAMERESPONSE"))

(in-package "ROS")





(defclass volumetric_msgs::LoadMapInFrameRequest
  :super ros::object
  :slots (_file_path _frame ))

(defmethod volumetric_msgs::LoadMapInFrameRequest
  (:init
   (&key
    ((:file_path __file_path) "")
    ((:frame __frame) "")
    )
   (send-super :init)
   (setq _file_path (string __file_path))
   (setq _frame (string __frame))
   self)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:serialization-length
   ()
   (+
    ;; string _file_path
    4 (length _file_path)
    ;; string _frame
    4 (length _frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;; string _frame
       (write-long (length _frame) s) (princ _frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass volumetric_msgs::LoadMapInFrameResponse
  :super ros::object
  :slots ())

(defmethod volumetric_msgs::LoadMapInFrameResponse
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

(defclass volumetric_msgs::LoadMapInFrame
  :super ros::object
  :slots ())

(setf (get volumetric_msgs::LoadMapInFrame :md5sum-) "921a98bd927760f83473e5da2c10f1c9")
(setf (get volumetric_msgs::LoadMapInFrame :datatype-) "volumetric_msgs/LoadMapInFrame")
(setf (get volumetric_msgs::LoadMapInFrame :request) volumetric_msgs::LoadMapInFrameRequest)
(setf (get volumetric_msgs::LoadMapInFrame :response) volumetric_msgs::LoadMapInFrameResponse)

(defmethod volumetric_msgs::LoadMapInFrameRequest
  (:response () (instance volumetric_msgs::LoadMapInFrameResponse :init)))

(setf (get volumetric_msgs::LoadMapInFrameRequest :md5sum-) "921a98bd927760f83473e5da2c10f1c9")
(setf (get volumetric_msgs::LoadMapInFrameRequest :datatype-) "volumetric_msgs/LoadMapInFrameRequest")
(setf (get volumetric_msgs::LoadMapInFrameRequest :definition-)
      "string file_path
string frame
---

")

(setf (get volumetric_msgs::LoadMapInFrameResponse :md5sum-) "921a98bd927760f83473e5da2c10f1c9")
(setf (get volumetric_msgs::LoadMapInFrameResponse :datatype-) "volumetric_msgs/LoadMapInFrameResponse")
(setf (get volumetric_msgs::LoadMapInFrameResponse :definition-)
      "string file_path
string frame
---

")



(provide :volumetric_msgs/LoadMapInFrame "921a98bd927760f83473e5da2c10f1c9")


