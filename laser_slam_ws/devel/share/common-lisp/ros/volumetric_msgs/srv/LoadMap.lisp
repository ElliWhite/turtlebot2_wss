; Auto-generated. Do not edit!


(cl:in-package volumetric_msgs-srv)


;//! \htmlinclude LoadMap-request.msg.html

(cl:defclass <LoadMap-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform ""))
)

(cl:defclass LoadMap-request (<LoadMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name volumetric_msgs-srv:<LoadMap-request> is deprecated: use volumetric_msgs-srv:LoadMap-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <LoadMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader volumetric_msgs-srv:file_path-val is deprecated.  Use volumetric_msgs-srv:file_path instead.")
  (file_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadMap-request>) ostream)
  "Serializes a message object of type '<LoadMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadMap-request>) istream)
  "Deserializes a message object of type '<LoadMap-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadMap-request>)))
  "Returns string type for a service object of type '<LoadMap-request>"
  "volumetric_msgs/LoadMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMap-request)))
  "Returns string type for a service object of type 'LoadMap-request"
  "volumetric_msgs/LoadMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadMap-request>)))
  "Returns md5sum for a message object of type '<LoadMap-request>"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadMap-request)))
  "Returns md5sum for a message object of type 'LoadMap-request"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadMap-request>)))
  "Returns full string definition for message of type '<LoadMap-request>"
  (cl:format cl:nil "string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadMap-request)))
  "Returns full string definition for message of type 'LoadMap-request"
  (cl:format cl:nil "string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadMap-request
    (cl:cons ':file_path (file_path msg))
))
;//! \htmlinclude LoadMap-response.msg.html

(cl:defclass <LoadMap-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LoadMap-response (<LoadMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name volumetric_msgs-srv:<LoadMap-response> is deprecated: use volumetric_msgs-srv:LoadMap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadMap-response>) ostream)
  "Serializes a message object of type '<LoadMap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadMap-response>) istream)
  "Deserializes a message object of type '<LoadMap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadMap-response>)))
  "Returns string type for a service object of type '<LoadMap-response>"
  "volumetric_msgs/LoadMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMap-response)))
  "Returns string type for a service object of type 'LoadMap-response"
  "volumetric_msgs/LoadMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadMap-response>)))
  "Returns md5sum for a message object of type '<LoadMap-response>"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadMap-response)))
  "Returns md5sum for a message object of type 'LoadMap-response"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadMap-response>)))
  "Returns full string definition for message of type '<LoadMap-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadMap-response)))
  "Returns full string definition for message of type 'LoadMap-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadMap-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadMap-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadMap)))
  'LoadMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadMap)))
  'LoadMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMap)))
  "Returns string type for a service object of type '<LoadMap>"
  "volumetric_msgs/LoadMap")