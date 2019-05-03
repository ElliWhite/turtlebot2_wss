; Auto-generated. Do not edit!


(cl:in-package robot_trajectory_saver_msgs-srv)


;//! \htmlinclude SaveRobotTrajectories-request.msg.html

(cl:defclass <SaveRobotTrajectories-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform ""))
)

(cl:defclass SaveRobotTrajectories-request (<SaveRobotTrajectories-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveRobotTrajectories-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveRobotTrajectories-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_trajectory_saver_msgs-srv:<SaveRobotTrajectories-request> is deprecated: use robot_trajectory_saver_msgs-srv:SaveRobotTrajectories-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <SaveRobotTrajectories-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_trajectory_saver_msgs-srv:file_path-val is deprecated.  Use robot_trajectory_saver_msgs-srv:file_path instead.")
  (file_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveRobotTrajectories-request>) ostream)
  "Serializes a message object of type '<SaveRobotTrajectories-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveRobotTrajectories-request>) istream)
  "Deserializes a message object of type '<SaveRobotTrajectories-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveRobotTrajectories-request>)))
  "Returns string type for a service object of type '<SaveRobotTrajectories-request>"
  "robot_trajectory_saver_msgs/SaveRobotTrajectoriesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveRobotTrajectories-request)))
  "Returns string type for a service object of type 'SaveRobotTrajectories-request"
  "robot_trajectory_saver_msgs/SaveRobotTrajectoriesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveRobotTrajectories-request>)))
  "Returns md5sum for a message object of type '<SaveRobotTrajectories-request>"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveRobotTrajectories-request)))
  "Returns md5sum for a message object of type 'SaveRobotTrajectories-request"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveRobotTrajectories-request>)))
  "Returns full string definition for message of type '<SaveRobotTrajectories-request>"
  (cl:format cl:nil "string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveRobotTrajectories-request)))
  "Returns full string definition for message of type 'SaveRobotTrajectories-request"
  (cl:format cl:nil "string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveRobotTrajectories-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveRobotTrajectories-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveRobotTrajectories-request
    (cl:cons ':file_path (file_path msg))
))
;//! \htmlinclude SaveRobotTrajectories-response.msg.html

(cl:defclass <SaveRobotTrajectories-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SaveRobotTrajectories-response (<SaveRobotTrajectories-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveRobotTrajectories-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveRobotTrajectories-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_trajectory_saver_msgs-srv:<SaveRobotTrajectories-response> is deprecated: use robot_trajectory_saver_msgs-srv:SaveRobotTrajectories-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveRobotTrajectories-response>) ostream)
  "Serializes a message object of type '<SaveRobotTrajectories-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveRobotTrajectories-response>) istream)
  "Deserializes a message object of type '<SaveRobotTrajectories-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveRobotTrajectories-response>)))
  "Returns string type for a service object of type '<SaveRobotTrajectories-response>"
  "robot_trajectory_saver_msgs/SaveRobotTrajectoriesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveRobotTrajectories-response)))
  "Returns string type for a service object of type 'SaveRobotTrajectories-response"
  "robot_trajectory_saver_msgs/SaveRobotTrajectoriesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveRobotTrajectories-response>)))
  "Returns md5sum for a message object of type '<SaveRobotTrajectories-response>"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveRobotTrajectories-response)))
  "Returns md5sum for a message object of type 'SaveRobotTrajectories-response"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveRobotTrajectories-response>)))
  "Returns full string definition for message of type '<SaveRobotTrajectories-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveRobotTrajectories-response)))
  "Returns full string definition for message of type 'SaveRobotTrajectories-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveRobotTrajectories-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveRobotTrajectories-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveRobotTrajectories-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveRobotTrajectories)))
  'SaveRobotTrajectories-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveRobotTrajectories)))
  'SaveRobotTrajectories-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveRobotTrajectories)))
  "Returns string type for a service object of type '<SaveRobotTrajectories>"
  "robot_trajectory_saver_msgs/SaveRobotTrajectories")