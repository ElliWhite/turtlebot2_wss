;; Auto-generated. Do not edit!


(when (boundp 'volumetric_msgs::SetBoxOccupancy)
  (if (not (find-package "VOLUMETRIC_MSGS"))
    (make-package "VOLUMETRIC_MSGS"))
  (shadow 'SetBoxOccupancy (find-package "VOLUMETRIC_MSGS")))
(unless (find-package "VOLUMETRIC_MSGS::SETBOXOCCUPANCY")
  (make-package "VOLUMETRIC_MSGS::SETBOXOCCUPANCY"))
(unless (find-package "VOLUMETRIC_MSGS::SETBOXOCCUPANCYREQUEST")
  (make-package "VOLUMETRIC_MSGS::SETBOXOCCUPANCYREQUEST"))
(unless (find-package "VOLUMETRIC_MSGS::SETBOXOCCUPANCYRESPONSE")
  (make-package "VOLUMETRIC_MSGS::SETBOXOCCUPANCYRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass volumetric_msgs::SetBoxOccupancyRequest
  :super ros::object
  :slots (_box_center _box_size _set_occupied ))

(defmethod volumetric_msgs::SetBoxOccupancyRequest
  (:init
   (&key
    ((:box_center __box_center) (instance geometry_msgs::Vector3 :init))
    ((:box_size __box_size) (instance geometry_msgs::Vector3 :init))
    ((:set_occupied __set_occupied) nil)
    )
   (send-super :init)
   (setq _box_center __box_center)
   (setq _box_size __box_size)
   (setq _set_occupied __set_occupied)
   self)
  (:box_center
   (&rest __box_center)
   (if (keywordp (car __box_center))
       (send* _box_center __box_center)
     (progn
       (if __box_center (setq _box_center (car __box_center)))
       _box_center)))
  (:box_size
   (&rest __box_size)
   (if (keywordp (car __box_size))
       (send* _box_size __box_size)
     (progn
       (if __box_size (setq _box_size (car __box_size)))
       _box_size)))
  (:set_occupied
   (&optional __set_occupied)
   (if __set_occupied (setq _set_occupied __set_occupied)) _set_occupied)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _box_center
    (send _box_center :serialization-length)
    ;; geometry_msgs/Vector3 _box_size
    (send _box_size :serialization-length)
    ;; bool _set_occupied
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _box_center
       (send _box_center :serialize s)
     ;; geometry_msgs/Vector3 _box_size
       (send _box_size :serialize s)
     ;; bool _set_occupied
       (if _set_occupied (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _box_center
     (send _box_center :deserialize buf ptr-) (incf ptr- (send _box_center :serialization-length))
   ;; geometry_msgs/Vector3 _box_size
     (send _box_size :deserialize buf ptr-) (incf ptr- (send _box_size :serialization-length))
   ;; bool _set_occupied
     (setq _set_occupied (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass volumetric_msgs::SetBoxOccupancyResponse
  :super ros::object
  :slots ())

(defmethod volumetric_msgs::SetBoxOccupancyResponse
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

(defclass volumetric_msgs::SetBoxOccupancy
  :super ros::object
  :slots ())

(setf (get volumetric_msgs::SetBoxOccupancy :md5sum-) "6588a1eb7f4c6adf70fa660225beeb92")
(setf (get volumetric_msgs::SetBoxOccupancy :datatype-) "volumetric_msgs/SetBoxOccupancy")
(setf (get volumetric_msgs::SetBoxOccupancy :request) volumetric_msgs::SetBoxOccupancyRequest)
(setf (get volumetric_msgs::SetBoxOccupancy :response) volumetric_msgs::SetBoxOccupancyResponse)

(defmethod volumetric_msgs::SetBoxOccupancyRequest
  (:response () (instance volumetric_msgs::SetBoxOccupancyResponse :init)))

(setf (get volumetric_msgs::SetBoxOccupancyRequest :md5sum-) "6588a1eb7f4c6adf70fa660225beeb92")
(setf (get volumetric_msgs::SetBoxOccupancyRequest :datatype-) "volumetric_msgs/SetBoxOccupancyRequest")
(setf (get volumetric_msgs::SetBoxOccupancyRequest :definition-)
      "
geometry_msgs/Vector3 box_center
geometry_msgs/Vector3 box_size
bool set_occupied

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---

")

(setf (get volumetric_msgs::SetBoxOccupancyResponse :md5sum-) "6588a1eb7f4c6adf70fa660225beeb92")
(setf (get volumetric_msgs::SetBoxOccupancyResponse :datatype-) "volumetric_msgs/SetBoxOccupancyResponse")
(setf (get volumetric_msgs::SetBoxOccupancyResponse :definition-)
      "
geometry_msgs/Vector3 box_center
geometry_msgs/Vector3 box_size
bool set_occupied

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---

")



(provide :volumetric_msgs/SetBoxOccupancy "6588a1eb7f4c6adf70fa660225beeb92")


