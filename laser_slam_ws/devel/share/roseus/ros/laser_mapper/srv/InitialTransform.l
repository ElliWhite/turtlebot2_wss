;; Auto-generated. Do not edit!


(when (boundp 'laser_mapper::InitialTransform)
  (if (not (find-package "LASER_MAPPER"))
    (make-package "LASER_MAPPER"))
  (shadow 'InitialTransform (find-package "LASER_MAPPER")))
(unless (find-package "LASER_MAPPER::INITIALTRANSFORM")
  (make-package "LASER_MAPPER::INITIALTRANSFORM"))
(unless (find-package "LASER_MAPPER::INITIALTRANSFORMREQUEST")
  (make-package "LASER_MAPPER::INITIALTRANSFORMREQUEST"))
(unless (find-package "LASER_MAPPER::INITIALTRANSFORMRESPONSE")
  (make-package "LASER_MAPPER::INITIALTRANSFORMRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass laser_mapper::InitialTransformRequest
  :super ros::object
  :slots (_transform_map_marker ))

(defmethod laser_mapper::InitialTransformRequest
  (:init
   (&key
    ((:transform_map_marker __transform_map_marker) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _transform_map_marker __transform_map_marker)
   self)
  (:transform_map_marker
   (&rest __transform_map_marker)
   (if (keywordp (car __transform_map_marker))
       (send* _transform_map_marker __transform_map_marker)
     (progn
       (if __transform_map_marker (setq _transform_map_marker (car __transform_map_marker)))
       _transform_map_marker)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _transform_map_marker
    (send _transform_map_marker :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _transform_map_marker
       (send _transform_map_marker :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _transform_map_marker
     (send _transform_map_marker :deserialize buf ptr-) (incf ptr- (send _transform_map_marker :serialization-length))
   ;;
   self)
  )

(defclass laser_mapper::InitialTransformResponse
  :super ros::object
  :slots (_success ))

(defmethod laser_mapper::InitialTransformResponse
  (:init
   (&key
    ((:success __success) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&rest __success)
   (if (keywordp (car __success))
       (send* _success __success)
     (progn
       (if __success (setq _success (car __success)))
       _success)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _success
    (send _success :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _success
       (send _success :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _success
     (send _success :deserialize buf ptr-) (incf ptr- (send _success :serialization-length))
   ;;
   self)
  )

(defclass laser_mapper::InitialTransform
  :super ros::object
  :slots ())

(setf (get laser_mapper::InitialTransform :md5sum-) "ed4c4e4224ec161139370ee82d9ed7da")
(setf (get laser_mapper::InitialTransform :datatype-) "laser_mapper/InitialTransform")
(setf (get laser_mapper::InitialTransform :request) laser_mapper::InitialTransformRequest)
(setf (get laser_mapper::InitialTransform :response) laser_mapper::InitialTransformResponse)

(defmethod laser_mapper::InitialTransformRequest
  (:response () (instance laser_mapper::InitialTransformResponse :init)))

(setf (get laser_mapper::InitialTransformRequest :md5sum-) "ed4c4e4224ec161139370ee82d9ed7da")
(setf (get laser_mapper::InitialTransformRequest :datatype-) "laser_mapper/InitialTransformRequest")
(setf (get laser_mapper::InitialTransformRequest :definition-)
      "
geometry_msgs/Pose transform_map_marker

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

std_msgs/Bool success

================================================================================
MSG: std_msgs/Bool
")

(setf (get laser_mapper::InitialTransformResponse :md5sum-) "ed4c4e4224ec161139370ee82d9ed7da")
(setf (get laser_mapper::InitialTransformResponse :datatype-) "laser_mapper/InitialTransformResponse")
(setf (get laser_mapper::InitialTransformResponse :definition-)
      "
geometry_msgs/Pose transform_map_marker

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

std_msgs/Bool success

================================================================================
MSG: std_msgs/Bool
")



(provide :laser_mapper/InitialTransform "ed4c4e4224ec161139370ee82d9ed7da")


