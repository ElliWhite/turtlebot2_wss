;; Auto-generated. Do not edit!


(when (boundp 'nifti_teleop::Acquire)
  (if (not (find-package "NIFTI_TELEOP"))
    (make-package "NIFTI_TELEOP"))
  (shadow 'Acquire (find-package "NIFTI_TELEOP")))
(unless (find-package "NIFTI_TELEOP::ACQUIRE")
  (make-package "NIFTI_TELEOP::ACQUIRE"))
(unless (find-package "NIFTI_TELEOP::ACQUIREREQUEST")
  (make-package "NIFTI_TELEOP::ACQUIREREQUEST"))
(unless (find-package "NIFTI_TELEOP::ACQUIRERESPONSE")
  (make-package "NIFTI_TELEOP::ACQUIRERESPONSE"))

(in-package "ROS")





(defclass nifti_teleop::AcquireRequest
  :super ros::object
  :slots (_topic ))

(defmethod nifti_teleop::AcquireRequest
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

(defclass nifti_teleop::AcquireResponse
  :super ros::object
  :slots (_acquired ))

(defmethod nifti_teleop::AcquireResponse
  (:init
   (&key
    ((:acquired __acquired) nil)
    )
   (send-super :init)
   (setq _acquired __acquired)
   self)
  (:acquired
   (&optional __acquired)
   (if __acquired (setq _acquired __acquired)) _acquired)
  (:serialization-length
   ()
   (+
    ;; bool _acquired
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _acquired
       (if _acquired (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _acquired
     (setq _acquired (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass nifti_teleop::Acquire
  :super ros::object
  :slots ())

(setf (get nifti_teleop::Acquire :md5sum-) "2543eda9ec3404107775710514498ddf")
(setf (get nifti_teleop::Acquire :datatype-) "nifti_teleop/Acquire")
(setf (get nifti_teleop::Acquire :request) nifti_teleop::AcquireRequest)
(setf (get nifti_teleop::Acquire :response) nifti_teleop::AcquireResponse)

(defmethod nifti_teleop::AcquireRequest
  (:response () (instance nifti_teleop::AcquireResponse :init)))

(setf (get nifti_teleop::AcquireRequest :md5sum-) "2543eda9ec3404107775710514498ddf")
(setf (get nifti_teleop::AcquireRequest :datatype-) "nifti_teleop/AcquireRequest")
(setf (get nifti_teleop::AcquireRequest :definition-)
      "string topic
---
bool acquired

")

(setf (get nifti_teleop::AcquireResponse :md5sum-) "2543eda9ec3404107775710514498ddf")
(setf (get nifti_teleop::AcquireResponse :datatype-) "nifti_teleop/AcquireResponse")
(setf (get nifti_teleop::AcquireResponse :definition-)
      "string topic
---
bool acquired

")



(provide :nifti_teleop/Acquire "2543eda9ec3404107775710514498ddf")


