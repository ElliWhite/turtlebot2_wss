;; Auto-generated. Do not edit!


(when (boundp 'networkanalysis_msgs::pingactionFeedback)
  (if (not (find-package "NETWORKANALYSIS_MSGS"))
    (make-package "NETWORKANALYSIS_MSGS"))
  (shadow 'pingactionFeedback (find-package "NETWORKANALYSIS_MSGS")))
(unless (find-package "NETWORKANALYSIS_MSGS::PINGACTIONFEEDBACK")
  (make-package "NETWORKANALYSIS_MSGS::PINGACTIONFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude pingactionFeedback.msg.html


(defclass networkanalysis_msgs::pingactionFeedback
  :super ros::object
  :slots (_outp ))

(defmethod networkanalysis_msgs::pingactionFeedback
  (:init
   (&key
    ((:outp __outp) nil)
    )
   (send-super :init)
   (setq _outp __outp)
   self)
  (:outp
   (&optional __outp)
   (if __outp (setq _outp __outp)) _outp)
  (:serialization-length
   ()
   (+
    ;; bool _outp
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _outp
       (if _outp (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _outp
     (setq _outp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get networkanalysis_msgs::pingactionFeedback :md5sum-) "4646f5e06440d78571c439e8eabcd8d9")
(setf (get networkanalysis_msgs::pingactionFeedback :datatype-) "networkanalysis_msgs/pingactionFeedback")
(setf (get networkanalysis_msgs::pingactionFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback
bool outp


")



(provide :networkanalysis_msgs/pingactionFeedback "4646f5e06440d78571c439e8eabcd8d9")

