;; Auto-generated. Do not edit!


(when (boundp 'laser_mapper_tools::SetPose)
  (if (not (find-package "LASER_MAPPER_TOOLS"))
    (make-package "LASER_MAPPER_TOOLS"))
  (shadow 'SetPose (find-package "LASER_MAPPER_TOOLS")))
(unless (find-package "LASER_MAPPER_TOOLS::SETPOSE")
  (make-package "LASER_MAPPER_TOOLS::SETPOSE"))
(unless (find-package "LASER_MAPPER_TOOLS::SETPOSEREQUEST")
  (make-package "LASER_MAPPER_TOOLS::SETPOSEREQUEST"))
(unless (find-package "LASER_MAPPER_TOOLS::SETPOSERESPONSE")
  (make-package "LASER_MAPPER_TOOLS::SETPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass laser_mapper_tools::SetPoseRequest
  :super ros::object
  :slots (_pose ))

(defmethod laser_mapper_tools::SetPoseRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass laser_mapper_tools::SetPoseResponse
  :super ros::object
  :slots ())

(defmethod laser_mapper_tools::SetPoseResponse
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

(defclass laser_mapper_tools::SetPose
  :super ros::object
  :slots ())

(setf (get laser_mapper_tools::SetPose :md5sum-) "3f8930d968a3e84d471dff917bb1cdae")
(setf (get laser_mapper_tools::SetPose :datatype-) "laser_mapper_tools/SetPose")
(setf (get laser_mapper_tools::SetPose :request) laser_mapper_tools::SetPoseRequest)
(setf (get laser_mapper_tools::SetPose :response) laser_mapper_tools::SetPoseResponse)

(defmethod laser_mapper_tools::SetPoseRequest
  (:response () (instance laser_mapper_tools::SetPoseResponse :init)))

(setf (get laser_mapper_tools::SetPoseRequest :md5sum-) "3f8930d968a3e84d471dff917bb1cdae")
(setf (get laser_mapper_tools::SetPoseRequest :datatype-) "laser_mapper_tools/SetPoseRequest")
(setf (get laser_mapper_tools::SetPoseRequest :definition-)
      "geometry_msgs/PoseStamped pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

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
")

(setf (get laser_mapper_tools::SetPoseResponse :md5sum-) "3f8930d968a3e84d471dff917bb1cdae")
(setf (get laser_mapper_tools::SetPoseResponse :datatype-) "laser_mapper_tools/SetPoseResponse")
(setf (get laser_mapper_tools::SetPoseResponse :definition-)
      "geometry_msgs/PoseStamped pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

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
")



(provide :laser_mapper_tools/SetPose "3f8930d968a3e84d471dff917bb1cdae")


