; Auto-generated. Do not edit!


(cl:in-package wireless_network_msgs-srv)


;//! \htmlinclude RequestRSS_Load_PC-request.msg.html

(cl:defclass <RequestRSS_Load_PC-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RequestRSS_Load_PC-request (<RequestRSS_Load_PC-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestRSS_Load_PC-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestRSS_Load_PC-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wireless_network_msgs-srv:<RequestRSS_Load_PC-request> is deprecated: use wireless_network_msgs-srv:RequestRSS_Load_PC-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestRSS_Load_PC-request>) ostream)
  "Serializes a message object of type '<RequestRSS_Load_PC-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestRSS_Load_PC-request>) istream)
  "Deserializes a message object of type '<RequestRSS_Load_PC-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestRSS_Load_PC-request>)))
  "Returns string type for a service object of type '<RequestRSS_Load_PC-request>"
  "wireless_network_msgs/RequestRSS_Load_PCRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestRSS_Load_PC-request)))
  "Returns string type for a service object of type 'RequestRSS_Load_PC-request"
  "wireless_network_msgs/RequestRSS_Load_PCRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestRSS_Load_PC-request>)))
  "Returns md5sum for a message object of type '<RequestRSS_Load_PC-request>"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestRSS_Load_PC-request)))
  "Returns md5sum for a message object of type 'RequestRSS_Load_PC-request"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestRSS_Load_PC-request>)))
  "Returns full string definition for message of type '<RequestRSS_Load_PC-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestRSS_Load_PC-request)))
  "Returns full string definition for message of type 'RequestRSS_Load_PC-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestRSS_Load_PC-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestRSS_Load_PC-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestRSS_Load_PC-request
))
;//! \htmlinclude RequestRSS_Load_PC-response.msg.html

(cl:defclass <RequestRSS_Load_PC-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RequestRSS_Load_PC-response (<RequestRSS_Load_PC-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestRSS_Load_PC-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestRSS_Load_PC-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wireless_network_msgs-srv:<RequestRSS_Load_PC-response> is deprecated: use wireless_network_msgs-srv:RequestRSS_Load_PC-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RequestRSS_Load_PC-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-srv:status-val is deprecated.  Use wireless_network_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestRSS_Load_PC-response>) ostream)
  "Serializes a message object of type '<RequestRSS_Load_PC-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestRSS_Load_PC-response>) istream)
  "Deserializes a message object of type '<RequestRSS_Load_PC-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestRSS_Load_PC-response>)))
  "Returns string type for a service object of type '<RequestRSS_Load_PC-response>"
  "wireless_network_msgs/RequestRSS_Load_PCResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestRSS_Load_PC-response)))
  "Returns string type for a service object of type 'RequestRSS_Load_PC-response"
  "wireless_network_msgs/RequestRSS_Load_PCResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestRSS_Load_PC-response>)))
  "Returns md5sum for a message object of type '<RequestRSS_Load_PC-response>"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestRSS_Load_PC-response)))
  "Returns md5sum for a message object of type 'RequestRSS_Load_PC-response"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestRSS_Load_PC-response>)))
  "Returns full string definition for message of type '<RequestRSS_Load_PC-response>"
  (cl:format cl:nil "~%bool status~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestRSS_Load_PC-response)))
  "Returns full string definition for message of type 'RequestRSS_Load_PC-response"
  (cl:format cl:nil "~%bool status~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestRSS_Load_PC-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestRSS_Load_PC-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestRSS_Load_PC-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RequestRSS_Load_PC)))
  'RequestRSS_Load_PC-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RequestRSS_Load_PC)))
  'RequestRSS_Load_PC-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestRSS_Load_PC)))
  "Returns string type for a service object of type '<RequestRSS_Load_PC>"
  "wireless_network_msgs/RequestRSS_Load_PC")