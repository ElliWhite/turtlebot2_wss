; Auto-generated. Do not edit!


(cl:in-package laser_mapper-srv)


;//! \htmlinclude LoadVTKMap-request.msg.html

(cl:defclass <LoadVTKMap-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass LoadVTKMap-request (<LoadVTKMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadVTKMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadVTKMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_mapper-srv:<LoadVTKMap-request> is deprecated: use laser_mapper-srv:LoadVTKMap-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <LoadVTKMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_mapper-srv:filename-val is deprecated.  Use laser_mapper-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadVTKMap-request>) ostream)
  "Serializes a message object of type '<LoadVTKMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadVTKMap-request>) istream)
  "Deserializes a message object of type '<LoadVTKMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadVTKMap-request>)))
  "Returns string type for a service object of type '<LoadVTKMap-request>"
  "laser_mapper/LoadVTKMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadVTKMap-request)))
  "Returns string type for a service object of type 'LoadVTKMap-request"
  "laser_mapper/LoadVTKMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadVTKMap-request>)))
  "Returns md5sum for a message object of type '<LoadVTKMap-request>"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadVTKMap-request)))
  "Returns md5sum for a message object of type 'LoadVTKMap-request"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadVTKMap-request>)))
  "Returns full string definition for message of type '<LoadVTKMap-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadVTKMap-request)))
  "Returns full string definition for message of type 'LoadVTKMap-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadVTKMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadVTKMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadVTKMap-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude LoadVTKMap-response.msg.html

(cl:defclass <LoadVTKMap-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LoadVTKMap-response (<LoadVTKMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadVTKMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadVTKMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_mapper-srv:<LoadVTKMap-response> is deprecated: use laser_mapper-srv:LoadVTKMap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadVTKMap-response>) ostream)
  "Serializes a message object of type '<LoadVTKMap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadVTKMap-response>) istream)
  "Deserializes a message object of type '<LoadVTKMap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadVTKMap-response>)))
  "Returns string type for a service object of type '<LoadVTKMap-response>"
  "laser_mapper/LoadVTKMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadVTKMap-response)))
  "Returns string type for a service object of type 'LoadVTKMap-response"
  "laser_mapper/LoadVTKMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadVTKMap-response>)))
  "Returns md5sum for a message object of type '<LoadVTKMap-response>"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadVTKMap-response)))
  "Returns md5sum for a message object of type 'LoadVTKMap-response"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadVTKMap-response>)))
  "Returns full string definition for message of type '<LoadVTKMap-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadVTKMap-response)))
  "Returns full string definition for message of type 'LoadVTKMap-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadVTKMap-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadVTKMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadVTKMap-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadVTKMap)))
  'LoadVTKMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadVTKMap)))
  'LoadVTKMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadVTKMap)))
  "Returns string type for a service object of type '<LoadVTKMap>"
  "laser_mapper/LoadVTKMap")