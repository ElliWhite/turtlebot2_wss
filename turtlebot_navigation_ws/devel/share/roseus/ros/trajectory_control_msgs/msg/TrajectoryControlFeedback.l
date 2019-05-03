;; Auto-generated. Do not edit!


(when (boundp 'trajectory_control_msgs::TrajectoryControlFeedback)
  (if (not (find-package "TRAJECTORY_CONTROL_MSGS"))
    (make-package "TRAJECTORY_CONTROL_MSGS"))
  (shadow 'TrajectoryControlFeedback (find-package "TRAJECTORY_CONTROL_MSGS")))
(unless (find-package "TRAJECTORY_CONTROL_MSGS::TRAJECTORYCONTROLFEEDBACK")
  (make-package "TRAJECTORY_CONTROL_MSGS::TRAJECTORYCONTROLFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryControlFeedback.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NIFTI_ROBOT_DRIVER_MSGS"))
  (ros::roseus-add-msgs "nifti_robot_driver_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass trajectory_control_msgs::TrajectoryControlFeedback
  :super ros::object
  :slots (_timestep _cmd_vel _tracks_cmd _posture_cmd _flippers_state _trajectory_error _virtual_reference_pose _robot_pose ))

(defmethod trajectory_control_msgs::TrajectoryControlFeedback
  (:init
   (&key
    ((:timestep __timestep) 0.0)
    ((:cmd_vel __cmd_vel) (instance geometry_msgs::Twist :init))
    ((:tracks_cmd __tracks_cmd) (instance nifti_robot_driver_msgs::Tracks :init))
    ((:posture_cmd __posture_cmd) (instance std_msgs::Int32 :init))
    ((:flippers_state __flippers_state) (instance nifti_robot_driver_msgs::FlippersStateStamped :init))
    ((:trajectory_error __trajectory_error) (instance geometry_msgs::Vector3 :init))
    ((:virtual_reference_pose __virtual_reference_pose) (instance geometry_msgs::Pose :init))
    ((:robot_pose __robot_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _timestep (float __timestep))
   (setq _cmd_vel __cmd_vel)
   (setq _tracks_cmd __tracks_cmd)
   (setq _posture_cmd __posture_cmd)
   (setq _flippers_state __flippers_state)
   (setq _trajectory_error __trajectory_error)
   (setq _virtual_reference_pose __virtual_reference_pose)
   (setq _robot_pose __robot_pose)
   self)
  (:timestep
   (&optional __timestep)
   (if __timestep (setq _timestep __timestep)) _timestep)
  (:cmd_vel
   (&rest __cmd_vel)
   (if (keywordp (car __cmd_vel))
       (send* _cmd_vel __cmd_vel)
     (progn
       (if __cmd_vel (setq _cmd_vel (car __cmd_vel)))
       _cmd_vel)))
  (:tracks_cmd
   (&rest __tracks_cmd)
   (if (keywordp (car __tracks_cmd))
       (send* _tracks_cmd __tracks_cmd)
     (progn
       (if __tracks_cmd (setq _tracks_cmd (car __tracks_cmd)))
       _tracks_cmd)))
  (:posture_cmd
   (&rest __posture_cmd)
   (if (keywordp (car __posture_cmd))
       (send* _posture_cmd __posture_cmd)
     (progn
       (if __posture_cmd (setq _posture_cmd (car __posture_cmd)))
       _posture_cmd)))
  (:flippers_state
   (&rest __flippers_state)
   (if (keywordp (car __flippers_state))
       (send* _flippers_state __flippers_state)
     (progn
       (if __flippers_state (setq _flippers_state (car __flippers_state)))
       _flippers_state)))
  (:trajectory_error
   (&rest __trajectory_error)
   (if (keywordp (car __trajectory_error))
       (send* _trajectory_error __trajectory_error)
     (progn
       (if __trajectory_error (setq _trajectory_error (car __trajectory_error)))
       _trajectory_error)))
  (:virtual_reference_pose
   (&rest __virtual_reference_pose)
   (if (keywordp (car __virtual_reference_pose))
       (send* _virtual_reference_pose __virtual_reference_pose)
     (progn
       (if __virtual_reference_pose (setq _virtual_reference_pose (car __virtual_reference_pose)))
       _virtual_reference_pose)))
  (:robot_pose
   (&rest __robot_pose)
   (if (keywordp (car __robot_pose))
       (send* _robot_pose __robot_pose)
     (progn
       (if __robot_pose (setq _robot_pose (car __robot_pose)))
       _robot_pose)))
  (:serialization-length
   ()
   (+
    ;; float64 _timestep
    8
    ;; geometry_msgs/Twist _cmd_vel
    (send _cmd_vel :serialization-length)
    ;; nifti_robot_driver_msgs/Tracks _tracks_cmd
    (send _tracks_cmd :serialization-length)
    ;; std_msgs/Int32 _posture_cmd
    (send _posture_cmd :serialization-length)
    ;; nifti_robot_driver_msgs/FlippersStateStamped _flippers_state
    (send _flippers_state :serialization-length)
    ;; geometry_msgs/Vector3 _trajectory_error
    (send _trajectory_error :serialization-length)
    ;; geometry_msgs/Pose _virtual_reference_pose
    (send _virtual_reference_pose :serialization-length)
    ;; geometry_msgs/Pose _robot_pose
    (send _robot_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestep
       (sys::poke _timestep (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Twist _cmd_vel
       (send _cmd_vel :serialize s)
     ;; nifti_robot_driver_msgs/Tracks _tracks_cmd
       (send _tracks_cmd :serialize s)
     ;; std_msgs/Int32 _posture_cmd
       (send _posture_cmd :serialize s)
     ;; nifti_robot_driver_msgs/FlippersStateStamped _flippers_state
       (send _flippers_state :serialize s)
     ;; geometry_msgs/Vector3 _trajectory_error
       (send _trajectory_error :serialize s)
     ;; geometry_msgs/Pose _virtual_reference_pose
       (send _virtual_reference_pose :serialize s)
     ;; geometry_msgs/Pose _robot_pose
       (send _robot_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestep
     (setq _timestep (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Twist _cmd_vel
     (send _cmd_vel :deserialize buf ptr-) (incf ptr- (send _cmd_vel :serialization-length))
   ;; nifti_robot_driver_msgs/Tracks _tracks_cmd
     (send _tracks_cmd :deserialize buf ptr-) (incf ptr- (send _tracks_cmd :serialization-length))
   ;; std_msgs/Int32 _posture_cmd
     (send _posture_cmd :deserialize buf ptr-) (incf ptr- (send _posture_cmd :serialization-length))
   ;; nifti_robot_driver_msgs/FlippersStateStamped _flippers_state
     (send _flippers_state :deserialize buf ptr-) (incf ptr- (send _flippers_state :serialization-length))
   ;; geometry_msgs/Vector3 _trajectory_error
     (send _trajectory_error :deserialize buf ptr-) (incf ptr- (send _trajectory_error :serialization-length))
   ;; geometry_msgs/Pose _virtual_reference_pose
     (send _virtual_reference_pose :deserialize buf ptr-) (incf ptr- (send _virtual_reference_pose :serialization-length))
   ;; geometry_msgs/Pose _robot_pose
     (send _robot_pose :deserialize buf ptr-) (incf ptr- (send _robot_pose :serialization-length))
   ;;
   self)
  )

(setf (get trajectory_control_msgs::TrajectoryControlFeedback :md5sum-) "a4b7f31196641b87a18ac352f6126a78")
(setf (get trajectory_control_msgs::TrajectoryControlFeedback :datatype-) "trajectory_control_msgs/TrajectoryControlFeedback")
(setf (get trajectory_control_msgs::TrajectoryControlFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define a feedback message
float64 timestep
geometry_msgs/Twist cmd_vel
nifti_robot_driver_msgs/Tracks tracks_cmd
std_msgs/Int32 posture_cmd
nifti_robot_driver_msgs/FlippersStateStamped flippers_state
geometry_msgs/Vector3 trajectory_error
geometry_msgs/Pose virtual_reference_pose
geometry_msgs/Pose robot_pose


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
float64 z
================================================================================
MSG: nifti_robot_driver_msgs/Tracks
float64 left
float64 right


================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: nifti_robot_driver_msgs/FlippersStateStamped
Header header
float64 frontLeft
float64 frontRight
float64 rearLeft
float64 rearRight

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

")



(provide :trajectory_control_msgs/TrajectoryControlFeedback "a4b7f31196641b87a18ac352f6126a78")


