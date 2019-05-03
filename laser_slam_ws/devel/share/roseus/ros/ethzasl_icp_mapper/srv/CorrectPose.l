;; Auto-generated. Do not edit!


(when (boundp 'ethzasl_icp_mapper::CorrectPose)
  (if (not (find-package "ETHZASL_ICP_MAPPER"))
    (make-package "ETHZASL_ICP_MAPPER"))
  (shadow 'CorrectPose (find-package "ETHZASL_ICP_MAPPER")))
(unless (find-package "ETHZASL_ICP_MAPPER::CORRECTPOSE")
  (make-package "ETHZASL_ICP_MAPPER::CORRECTPOSE"))
(unless (find-package "ETHZASL_ICP_MAPPER::CORRECTPOSEREQUEST")
  (make-package "ETHZASL_ICP_MAPPER::CORRECTPOSEREQUEST"))
(unless (find-package "ETHZASL_ICP_MAPPER::CORRECTPOSERESPONSE")
  (make-package "ETHZASL_ICP_MAPPER::CORRECTPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))




(defclass ethzasl_icp_mapper::CorrectPoseRequest
  :super ros::object
  :slots (_odom ))

(defmethod ethzasl_icp_mapper::CorrectPoseRequest
  (:init
   (&key
    ((:odom __odom) (instance nav_msgs::Odometry :init))
    )
   (send-super :init)
   (setq _odom __odom)
   self)
  (:odom
   (&rest __odom)
   (if (keywordp (car __odom))
       (send* _odom __odom)
     (progn
       (if __odom (setq _odom (car __odom)))
       _odom)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Odometry _odom
    (send _odom :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Odometry _odom
       (send _odom :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Odometry _odom
     (send _odom :deserialize buf ptr-) (incf ptr- (send _odom :serialization-length))
   ;;
   self)
  )

(defclass ethzasl_icp_mapper::CorrectPoseResponse
  :super ros::object
  :slots ())

(defmethod ethzasl_icp_mapper::CorrectPoseResponse
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

(defclass ethzasl_icp_mapper::CorrectPose
  :super ros::object
  :slots ())

(setf (get ethzasl_icp_mapper::CorrectPose :md5sum-) "75d9701e058ed9a7608ba3dbc16b5b7e")
(setf (get ethzasl_icp_mapper::CorrectPose :datatype-) "ethzasl_icp_mapper/CorrectPose")
(setf (get ethzasl_icp_mapper::CorrectPose :request) ethzasl_icp_mapper::CorrectPoseRequest)
(setf (get ethzasl_icp_mapper::CorrectPose :response) ethzasl_icp_mapper::CorrectPoseResponse)

(defmethod ethzasl_icp_mapper::CorrectPoseRequest
  (:response () (instance ethzasl_icp_mapper::CorrectPoseResponse :init)))

(setf (get ethzasl_icp_mapper::CorrectPoseRequest :md5sum-) "75d9701e058ed9a7608ba3dbc16b5b7e")
(setf (get ethzasl_icp_mapper::CorrectPoseRequest :datatype-) "ethzasl_icp_mapper/CorrectPoseRequest")
(setf (get ethzasl_icp_mapper::CorrectPoseRequest :definition-)
      "nav_msgs/Odometry odom

================================================================================
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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

(setf (get ethzasl_icp_mapper::CorrectPoseResponse :md5sum-) "75d9701e058ed9a7608ba3dbc16b5b7e")
(setf (get ethzasl_icp_mapper::CorrectPoseResponse :datatype-) "ethzasl_icp_mapper/CorrectPoseResponse")
(setf (get ethzasl_icp_mapper::CorrectPoseResponse :definition-)
      "nav_msgs/Odometry odom

================================================================================
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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



(provide :ethzasl_icp_mapper/CorrectPose "75d9701e058ed9a7608ba3dbc16b5b7e")


