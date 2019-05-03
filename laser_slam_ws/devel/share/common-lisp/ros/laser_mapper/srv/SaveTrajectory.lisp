; Auto-generated. Do not edit!


(cl:in-package laser_mapper-srv)


;//! \htmlinclude SaveTrajectory-request.msg.html

(cl:defclass <SaveTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform ""))
)

(cl:defclass SaveTrajectory-request (<SaveTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_mapper-srv:<SaveTrajectory-request> is deprecated: use laser_mapper-srv:SaveTrajectory-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <SaveTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_mapper-srv:file_path-val is deprecated.  Use laser_mapper-srv:file_path instead.")
  (file_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveTrajectory-request>) ostream)
  "Serializes a message object of type '<SaveTrajectory-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveTrajectory-request>) istream)
  "Deserializes a message object of type '<SaveTrajectory-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveTrajectory-request>)))
  "Returns string type for a service object of type '<SaveTrajectory-request>"
  "laser_mapper/SaveTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveTrajectory-request)))
  "Returns string type for a service object of type 'SaveTrajectory-request"
  "laser_mapper/SaveTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveTrajectory-request>)))
  "Returns md5sum for a message object of type '<SaveTrajectory-request>"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveTrajectory-request)))
  "Returns md5sum for a message object of type 'SaveTrajectory-request"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveTrajectory-request>)))
  "Returns full string definition for message of type '<SaveTrajectory-request>"
  (cl:format cl:nil "string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveTrajectory-request)))
  "Returns full string definition for message of type 'SaveTrajectory-request"
  (cl:format cl:nil "string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveTrajectory-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveTrajectory-request
    (cl:cons ':file_path (file_path msg))
))
;//! \htmlinclude SaveTrajectory-response.msg.html

(cl:defclass <SaveTrajectory-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SaveTrajectory-response (<SaveTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_mapper-srv:<SaveTrajectory-response> is deprecated: use laser_mapper-srv:SaveTrajectory-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveTrajectory-response>) ostream)
  "Serializes a message object of type '<SaveTrajectory-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveTrajectory-response>) istream)
  "Deserializes a message object of type '<SaveTrajectory-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveTrajectory-response>)))
  "Returns string type for a service object of type '<SaveTrajectory-response>"
  "laser_mapper/SaveTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveTrajectory-response)))
  "Returns string type for a service object of type 'SaveTrajectory-response"
  "laser_mapper/SaveTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveTrajectory-response>)))
  "Returns md5sum for a message object of type '<SaveTrajectory-response>"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveTrajectory-response)))
  "Returns md5sum for a message object of type 'SaveTrajectory-response"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveTrajectory-response>)))
  "Returns full string definition for message of type '<SaveTrajectory-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveTrajectory-response)))
  "Returns full string definition for message of type 'SaveTrajectory-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveTrajectory-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveTrajectory-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveTrajectory)))
  'SaveTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveTrajectory)))
  'SaveTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveTrajectory)))
  "Returns string type for a service object of type '<SaveTrajectory>"
  "laser_mapper/SaveTrajectory")