; Auto-generated. Do not edit!


(cl:in-package trajectory_control_msgs-msg)


;//! \htmlinclude TrajectoryControlFeedback.msg.html

(cl:defclass <TrajectoryControlFeedback> (roslisp-msg-protocol:ros-message)
  ((timestep
    :reader timestep
    :initarg :timestep
    :type cl:float
    :initform 0.0)
   (cmd_vel
    :reader cmd_vel
    :initarg :cmd_vel
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (tracks_cmd
    :reader tracks_cmd
    :initarg :tracks_cmd
    :type nifti_robot_driver_msgs-msg:Tracks
    :initform (cl:make-instance 'nifti_robot_driver_msgs-msg:Tracks))
   (posture_cmd
    :reader posture_cmd
    :initarg :posture_cmd
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (flippers_state
    :reader flippers_state
    :initarg :flippers_state
    :type nifti_robot_driver_msgs-msg:FlippersStateStamped
    :initform (cl:make-instance 'nifti_robot_driver_msgs-msg:FlippersStateStamped))
   (trajectory_error
    :reader trajectory_error
    :initarg :trajectory_error
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (virtual_reference_pose
    :reader virtual_reference_pose
    :initarg :virtual_reference_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (robot_pose
    :reader robot_pose
    :initarg :robot_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass TrajectoryControlFeedback (<TrajectoryControlFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryControlFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryControlFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_control_msgs-msg:<TrajectoryControlFeedback> is deprecated: use trajectory_control_msgs-msg:TrajectoryControlFeedback instead.")))

(cl:ensure-generic-function 'timestep-val :lambda-list '(m))
(cl:defmethod timestep-val ((m <TrajectoryControlFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:timestep-val is deprecated.  Use trajectory_control_msgs-msg:timestep instead.")
  (timestep m))

(cl:ensure-generic-function 'cmd_vel-val :lambda-list '(m))
(cl:defmethod cmd_vel-val ((m <TrajectoryControlFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:cmd_vel-val is deprecated.  Use trajectory_control_msgs-msg:cmd_vel instead.")
  (cmd_vel m))

(cl:ensure-generic-function 'tracks_cmd-val :lambda-list '(m))
(cl:defmethod tracks_cmd-val ((m <TrajectoryControlFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:tracks_cmd-val is deprecated.  Use trajectory_control_msgs-msg:tracks_cmd instead.")
  (tracks_cmd m))

(cl:ensure-generic-function 'posture_cmd-val :lambda-list '(m))
(cl:defmethod posture_cmd-val ((m <TrajectoryControlFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:posture_cmd-val is deprecated.  Use trajectory_control_msgs-msg:posture_cmd instead.")
  (posture_cmd m))

(cl:ensure-generic-function 'flippers_state-val :lambda-list '(m))
(cl:defmethod flippers_state-val ((m <TrajectoryControlFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:flippers_state-val is deprecated.  Use trajectory_control_msgs-msg:flippers_state instead.")
  (flippers_state m))

(cl:ensure-generic-function 'trajectory_error-val :lambda-list '(m))
(cl:defmethod trajectory_error-val ((m <TrajectoryControlFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:trajectory_error-val is deprecated.  Use trajectory_control_msgs-msg:trajectory_error instead.")
  (trajectory_error m))

(cl:ensure-generic-function 'virtual_reference_pose-val :lambda-list '(m))
(cl:defmethod virtual_reference_pose-val ((m <TrajectoryControlFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:virtual_reference_pose-val is deprecated.  Use trajectory_control_msgs-msg:virtual_reference_pose instead.")
  (virtual_reference_pose m))

(cl:ensure-generic-function 'robot_pose-val :lambda-list '(m))
(cl:defmethod robot_pose-val ((m <TrajectoryControlFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_control_msgs-msg:robot_pose-val is deprecated.  Use trajectory_control_msgs-msg:robot_pose instead.")
  (robot_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryControlFeedback>) ostream)
  "Serializes a message object of type '<TrajectoryControlFeedback>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestep))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cmd_vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tracks_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'posture_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'flippers_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'virtual_reference_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryControlFeedback>) istream)
  "Deserializes a message object of type '<TrajectoryControlFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestep) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cmd_vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tracks_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'posture_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'flippers_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'virtual_reference_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryControlFeedback>)))
  "Returns string type for a message object of type '<TrajectoryControlFeedback>"
  "trajectory_control_msgs/TrajectoryControlFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryControlFeedback)))
  "Returns string type for a message object of type 'TrajectoryControlFeedback"
  "trajectory_control_msgs/TrajectoryControlFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryControlFeedback>)))
  "Returns md5sum for a message object of type '<TrajectoryControlFeedback>"
  "a4b7f31196641b87a18ac352f6126a78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryControlFeedback)))
  "Returns md5sum for a message object of type 'TrajectoryControlFeedback"
  "a4b7f31196641b87a18ac352f6126a78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryControlFeedback>)))
  "Returns full string definition for message of type '<TrajectoryControlFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%float64 timestep~%geometry_msgs/Twist cmd_vel~%nifti_robot_driver_msgs/Tracks tracks_cmd~%std_msgs/Int32 posture_cmd~%nifti_robot_driver_msgs/FlippersStateStamped flippers_state~%geometry_msgs/Vector3 trajectory_error~%geometry_msgs/Pose virtual_reference_pose~%geometry_msgs/Pose robot_pose~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: nifti_robot_driver_msgs/Tracks~%float64 left~%float64 right~%~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: nifti_robot_driver_msgs/FlippersStateStamped~%Header header~%float64 frontLeft~%float64 frontRight~%float64 rearLeft~%float64 rearRight~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryControlFeedback)))
  "Returns full string definition for message of type 'TrajectoryControlFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%float64 timestep~%geometry_msgs/Twist cmd_vel~%nifti_robot_driver_msgs/Tracks tracks_cmd~%std_msgs/Int32 posture_cmd~%nifti_robot_driver_msgs/FlippersStateStamped flippers_state~%geometry_msgs/Vector3 trajectory_error~%geometry_msgs/Pose virtual_reference_pose~%geometry_msgs/Pose robot_pose~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: nifti_robot_driver_msgs/Tracks~%float64 left~%float64 right~%~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: nifti_robot_driver_msgs/FlippersStateStamped~%Header header~%float64 frontLeft~%float64 frontRight~%float64 rearLeft~%float64 rearRight~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryControlFeedback>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd_vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tracks_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'posture_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'flippers_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'virtual_reference_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryControlFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryControlFeedback
    (cl:cons ':timestep (timestep msg))
    (cl:cons ':cmd_vel (cmd_vel msg))
    (cl:cons ':tracks_cmd (tracks_cmd msg))
    (cl:cons ':posture_cmd (posture_cmd msg))
    (cl:cons ':flippers_state (flippers_state msg))
    (cl:cons ':trajectory_error (trajectory_error msg))
    (cl:cons ':virtual_reference_pose (virtual_reference_pose msg))
    (cl:cons ':robot_pose (robot_pose msg))
))
