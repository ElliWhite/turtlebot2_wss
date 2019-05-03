;; Auto-generated. Do not edit!


(when (boundp 'nifti_teleop::Release)
  (if (not (find-package "NIFTI_TELEOP"))
    (make-package "NIFTI_TELEOP"))
  (shadow 'Release (find-package "NIFTI_TELEOP")))
(unless (find-package "NIFTI_TELEOP::RELEASE")
  (make-package "NIFTI_TELEOP::RELEASE"))
(unless (find-package "NIFTI_TELEOP::RELEASEREQUEST")
  (make-package "NIFTI_TELEOP::RELEASEREQUEST"))
(unless (find-package "NIFTI_TELEOP::RELEASERESPONSE")
  (make-package "NIFTI_TELEOP::RELEASERESPONSE"))

(in-package "ROS")





(defclass nifti_teleop::ReleaseRequest
  :super ros::object
  :slots (_topic ))

(defmethod nifti_teleop::ReleaseRequest
  (:init
   (&key
    ((:topic __topic) "")
    )
   (send-super :init)
   (setq _topic (string __topic))
   self)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:serialization-length
   ()
   (+
    ;; string _topic
    4 (length _topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nifti_teleop::ReleaseResponse
  :super ros::object
  :slots (_success ))

(defmethod nifti_teleop::ReleaseResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass nifti_teleop::Release
  :super ros::object
  :slots ())

(setf (get nifti_teleop::Release :md5sum-) "d3ab87cb63701ba577b5ab3413ba13da")
(setf (get nifti_teleop::Release :datatype-) "nifti_teleop/Release")
(setf (get nifti_teleop::Release :request) nifti_teleop::ReleaseRequest)
(setf (get nifti_teleop::Release :response) nifti_teleop::ReleaseResponse)

(defmethod nifti_teleop::ReleaseRequest
  (:response () (instance nifti_teleop::ReleaseResponse :init)))

(setf (get nifti_teleop::ReleaseRequest :md5sum-) "d3ab87cb63701ba577b5ab3413ba13da")
(setf (get nifti_teleop::ReleaseRequest :datatype-) "nifti_teleop/ReleaseRequest")
(setf (get nifti_teleop::ReleaseRequest :definition-)
      "string topic
---
bool success

")

(setf (get nifti_teleop::ReleaseResponse :md5sum-) "d3ab87cb63701ba577b5ab3413ba13da")
(setf (get nifti_teleop::ReleaseResponse :datatype-) "nifti_teleop/ReleaseResponse")
(setf (get nifti_teleop::ReleaseResponse :definition-)
      "string topic
---
bool success

")



(provide :nifti_teleop/Release "d3ab87cb63701ba577b5ab3413ba13da")


