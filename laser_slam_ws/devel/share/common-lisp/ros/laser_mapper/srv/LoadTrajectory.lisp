; Auto-generated. Do not edit!


(cl:in-package laser_mapper-srv)


;//! \htmlinclude LoadTrajectory-request.msg.html

(cl:defclass <LoadTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform ""))
)

(cl:defclass LoadTrajectory-request (<LoadTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_mapper-srv:<LoadTrajectory-request> is deprecated: use laser_mapper-srv:LoadTrajectory-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <LoadTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_mapper-srv:file_path-val is deprecated.  Use laser_mapper-srv:file_path instead.")
  (file_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadTrajectory-request>) ostream)
  "Serializes a message object of type '<LoadTrajectory-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadTrajectory-request>) istream)
  "Deserializes a message object of type '<LoadTrajectory-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadTrajectory-request>)))
  "Returns string type for a service object of type '<LoadTrajectory-request>"
  "laser_mapper/LoadTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadTrajectory-request)))
  "Returns string type for a service object of type 'LoadTrajectory-request"
  "laser_mapper/LoadTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadTrajectory-request>)))
  "Returns md5sum for a message object of type '<LoadTrajectory-request>"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadTrajectory-request)))
  "Returns md5sum for a message object of type 'LoadTrajectory-request"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadTrajectory-request>)))
  "Returns full string definition for message of type '<LoadTrajectory-request>"
  (cl:format cl:nil "string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadTrajectory-request)))
  "Returns full string definition for message of type 'LoadTrajectory-request"
  (cl:format cl:nil "string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadTrajectory-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadTrajectory-request
    (cl:cons ':file_path (file_path msg))
))
;//! \htmlinclude LoadTrajectory-response.msg.html

(cl:defclass <LoadTrajectory-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LoadTrajectory-response (<LoadTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_mapper-srv:<LoadTrajectory-response> is deprecated: use laser_mapper-srv:LoadTrajectory-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadTrajectory-response>) ostream)
  "Serializes a message object of type '<LoadTrajectory-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadTrajectory-response>) istream)
  "Deserializes a message object of type '<LoadTrajectory-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadTrajectory-response>)))
  "Returns string type for a service object of type '<LoadTrajectory-response>"
  "laser_mapper/LoadTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadTrajectory-response)))
  "Returns string type for a service object of type 'LoadTrajectory-response"
  "laser_mapper/LoadTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadTrajectory-response>)))
  "Returns md5sum for a message object of type '<LoadTrajectory-response>"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadTrajectory-response)))
  "Returns md5sum for a message object of type 'LoadTrajectory-response"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadTrajectory-response>)))
  "Returns full string definition for message of type '<LoadTrajectory-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadTrajectory-response)))
  "Returns full string definition for message of type 'LoadTrajectory-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadTrajectory-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadTrajectory-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadTrajectory)))
  'LoadTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadTrajectory)))
  'LoadTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadTrajectory)))
  "Returns string type for a service object of type '<LoadTrajectory>"
  "laser_mapper/LoadTrajectory")