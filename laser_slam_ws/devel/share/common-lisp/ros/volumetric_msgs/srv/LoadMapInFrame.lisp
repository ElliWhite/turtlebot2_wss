; Auto-generated. Do not edit!


(cl:in-package volumetric_msgs-srv)


;//! \htmlinclude LoadMapInFrame-request.msg.html

(cl:defclass <LoadMapInFrame-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform "")
   (frame
    :reader frame
    :initarg :frame
    :type cl:string
    :initform ""))
)

(cl:defclass LoadMapInFrame-request (<LoadMapInFrame-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadMapInFrame-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadMapInFrame-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name volumetric_msgs-srv:<LoadMapInFrame-request> is deprecated: use volumetric_msgs-srv:LoadMapInFrame-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <LoadMapInFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader volumetric_msgs-srv:file_path-val is deprecated.  Use volumetric_msgs-srv:file_path instead.")
  (file_path m))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <LoadMapInFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader volumetric_msgs-srv:frame-val is deprecated.  Use volumetric_msgs-srv:frame instead.")
  (frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadMapInFrame-request>) ostream)
  "Serializes a message object of type '<LoadMapInFrame-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadMapInFrame-request>) istream)
  "Deserializes a message object of type '<LoadMapInFrame-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadMapInFrame-request>)))
  "Returns string type for a service object of type '<LoadMapInFrame-request>"
  "volumetric_msgs/LoadMapInFrameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMapInFrame-request)))
  "Returns string type for a service object of type 'LoadMapInFrame-request"
  "volumetric_msgs/LoadMapInFrameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadMapInFrame-request>)))
  "Returns md5sum for a message object of type '<LoadMapInFrame-request>"
  "921a98bd927760f83473e5da2c10f1c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadMapInFrame-request)))
  "Returns md5sum for a message object of type 'LoadMapInFrame-request"
  "921a98bd927760f83473e5da2c10f1c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadMapInFrame-request>)))
  "Returns full string definition for message of type '<LoadMapInFrame-request>"
  (cl:format cl:nil "string file_path~%string frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadMapInFrame-request)))
  "Returns full string definition for message of type 'LoadMapInFrame-request"
  (cl:format cl:nil "string file_path~%string frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadMapInFrame-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
     4 (cl:length (cl:slot-value msg 'frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadMapInFrame-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadMapInFrame-request
    (cl:cons ':file_path (file_path msg))
    (cl:cons ':frame (frame msg))
))
;//! \htmlinclude LoadMapInFrame-response.msg.html

(cl:defclass <LoadMapInFrame-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LoadMapInFrame-response (<LoadMapInFrame-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadMapInFrame-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadMapInFrame-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name volumetric_msgs-srv:<LoadMapInFrame-response> is deprecated: use volumetric_msgs-srv:LoadMapInFrame-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadMapInFrame-response>) ostream)
  "Serializes a message object of type '<LoadMapInFrame-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadMapInFrame-response>) istream)
  "Deserializes a message object of type '<LoadMapInFrame-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadMapInFrame-response>)))
  "Returns string type for a service object of type '<LoadMapInFrame-response>"
  "volumetric_msgs/LoadMapInFrameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMapInFrame-response)))
  "Returns string type for a service object of type 'LoadMapInFrame-response"
  "volumetric_msgs/LoadMapInFrameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadMapInFrame-response>)))
  "Returns md5sum for a message object of type '<LoadMapInFrame-response>"
  "921a98bd927760f83473e5da2c10f1c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadMapInFrame-response)))
  "Returns md5sum for a message object of type 'LoadMapInFrame-response"
  "921a98bd927760f83473e5da2c10f1c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadMapInFrame-response>)))
  "Returns full string definition for message of type '<LoadMapInFrame-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadMapInFrame-response)))
  "Returns full string definition for message of type 'LoadMapInFrame-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadMapInFrame-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadMapInFrame-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadMapInFrame-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadMapInFrame)))
  'LoadMapInFrame-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadMapInFrame)))
  'LoadMapInFrame-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMapInFrame)))
  "Returns string type for a service object of type '<LoadMapInFrame>"
  "volumetric_msgs/LoadMapInFrame")