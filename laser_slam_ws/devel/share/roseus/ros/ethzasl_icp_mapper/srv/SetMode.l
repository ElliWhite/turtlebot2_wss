;; Auto-generated. Do not edit!


(when (boundp 'ethzasl_icp_mapper::SetMode)
  (if (not (find-package "ETHZASL_ICP_MAPPER"))
    (make-package "ETHZASL_ICP_MAPPER"))
  (shadow 'SetMode (find-package "ETHZASL_ICP_MAPPER")))
(unless (find-package "ETHZASL_ICP_MAPPER::SETMODE")
  (make-package "ETHZASL_ICP_MAPPER::SETMODE"))
(unless (find-package "ETHZASL_ICP_MAPPER::SETMODEREQUEST")
  (make-package "ETHZASL_ICP_MAPPER::SETMODEREQUEST"))
(unless (find-package "ETHZASL_ICP_MAPPER::SETMODERESPONSE")
  (make-package "ETHZASL_ICP_MAPPER::SETMODERESPONSE"))

(in-package "ROS")





(defclass ethzasl_icp_mapper::SetModeRequest
  :super ros::object
  :slots (_localize _map _applyChange ))

(defmethod ethzasl_icp_mapper::SetModeRequest
  (:init
   (&key
    ((:localize __localize) nil)
    ((:map __map) nil)
    ((:applyChange __applyChange) nil)
    )
   (send-super :init)
   (setq _localize __localize)
   (setq _map __map)
   (setq _applyChange __applyChange)
   self)
  (:localize
   (&optional __localize)
   (if __localize (setq _localize __localize)) _localize)
  (:map
   (&optional __map)
   (if __map (setq _map __map)) _map)
  (:applyChange
   (&optional __applyChange)
   (if __applyChange (setq _applyChange __applyChange)) _applyChange)
  (:serialization-length
   ()
   (+
    ;; bool _localize
    1
    ;; bool _map
    1
    ;; bool _applyChange
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _localize
       (if _localize (write-byte -1 s) (write-byte 0 s))
     ;; bool _map
       (if _map (write-byte -1 s) (write-byte 0 s))
     ;; bool _applyChange
       (if _applyChange (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _localize
     (setq _localize (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _map
     (setq _map (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _applyChange
     (setq _applyChange (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ethzasl_icp_mapper::SetModeResponse
  :super ros::object
  :slots (_localize _map ))

(defmethod ethzasl_icp_mapper::SetModeResponse
  (:init
   (&key
    ((:localize __localize) nil)
    ((:map __map) nil)
    )
   (send-super :init)
   (setq _localize __localize)
   (setq _map __map)
   self)
  (:localize
   (&optional __localize)
   (if __localize (setq _localize __localize)) _localize)
  (:map
   (&optional __map)
   (if __map (setq _map __map)) _map)
  (:serialization-length
   ()
   (+
    ;; bool _localize
    1
    ;; bool _map
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _localize
       (if _localize (write-byte -1 s) (write-byte 0 s))
     ;; bool _map
       (if _map (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _localize
     (setq _localize (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _map
     (setq _map (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ethzasl_icp_mapper::SetMode
  :super ros::object
  :slots ())

(setf (get ethzasl_icp_mapper::SetMode :md5sum-) "11879a69b8d234b7e1458ef090e302c2")
(setf (get ethzasl_icp_mapper::SetMode :datatype-) "ethzasl_icp_mapper/SetMode")
(setf (get ethzasl_icp_mapper::SetMode :request) ethzasl_icp_mapper::SetModeRequest)
(setf (get ethzasl_icp_mapper::SetMode :response) ethzasl_icp_mapper::SetModeResponse)

(defmethod ethzasl_icp_mapper::SetModeRequest
  (:response () (instance ethzasl_icp_mapper::SetModeResponse :init)))

(setf (get ethzasl_icp_mapper::SetModeRequest :md5sum-) "11879a69b8d234b7e1458ef090e302c2")
(setf (get ethzasl_icp_mapper::SetModeRequest :datatype-) "ethzasl_icp_mapper/SetModeRequest")
(setf (get ethzasl_icp_mapper::SetModeRequest :definition-)
      "bool localize
bool map
bool applyChange
---
bool localize
bool map


")

(setf (get ethzasl_icp_mapper::SetModeResponse :md5sum-) "11879a69b8d234b7e1458ef090e302c2")
(setf (get ethzasl_icp_mapper::SetModeResponse :datatype-) "ethzasl_icp_mapper/SetModeResponse")
(setf (get ethzasl_icp_mapper::SetModeResponse :definition-)
      "bool localize
bool map
bool applyChange
---
bool localize
bool map


")



(provide :ethzasl_icp_mapper/SetMode "11879a69b8d234b7e1458ef090e302c2")


