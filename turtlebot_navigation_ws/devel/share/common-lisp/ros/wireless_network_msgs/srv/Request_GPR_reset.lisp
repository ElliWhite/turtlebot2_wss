; Auto-generated. Do not edit!


(cl:in-package wireless_network_msgs-srv)


;//! \htmlinclude Request_GPR_reset-request.msg.html

(cl:defclass <Request_GPR_reset-request> (roslisp-msg-protocol:ros-message)
  ((id_source
    :reader id_source
    :initarg :id_source
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass Request_GPR_reset-request (<Request_GPR_reset-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Request_GPR_reset-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Request_GPR_reset-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wireless_network_msgs-srv:<Request_GPR_reset-request> is deprecated: use wireless_network_msgs-srv:Request_GPR_reset-request instead.")))

(cl:ensure-generic-function 'id_source-val :lambda-list '(m))
(cl:defmethod id_source-val ((m <Request_GPR_reset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-srv:id_source-val is deprecated.  Use wireless_network_msgs-srv:id_source instead.")
  (id_source m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Request_GPR_reset-request>) ostream)
  "Serializes a message object of type '<Request_GPR_reset-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id_source) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Request_GPR_reset-request>) istream)
  "Deserializes a message object of type '<Request_GPR_reset-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id_source) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Request_GPR_reset-request>)))
  "Returns string type for a service object of type '<Request_GPR_reset-request>"
  "wireless_network_msgs/Request_GPR_resetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Request_GPR_reset-request)))
  "Returns string type for a service object of type 'Request_GPR_reset-request"
  "wireless_network_msgs/Request_GPR_resetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Request_GPR_reset-request>)))
  "Returns md5sum for a message object of type '<Request_GPR_reset-request>"
  "7818eabd25118ebe6de9ee66d82ef30c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Request_GPR_reset-request)))
  "Returns md5sum for a message object of type 'Request_GPR_reset-request"
  "7818eabd25118ebe6de9ee66d82ef30c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Request_GPR_reset-request>)))
  "Returns full string definition for message of type '<Request_GPR_reset-request>"
  (cl:format cl:nil "~%std_msgs/Int32 id_source~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Request_GPR_reset-request)))
  "Returns full string definition for message of type 'Request_GPR_reset-request"
  (cl:format cl:nil "~%std_msgs/Int32 id_source~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Request_GPR_reset-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id_source))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Request_GPR_reset-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Request_GPR_reset-request
    (cl:cons ':id_source (id_source msg))
))
;//! \htmlinclude Request_GPR_reset-response.msg.html

(cl:defclass <Request_GPR_reset-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass Request_GPR_reset-response (<Request_GPR_reset-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Request_GPR_reset-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Request_GPR_reset-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wireless_network_msgs-srv:<Request_GPR_reset-response> is deprecated: use wireless_network_msgs-srv:Request_GPR_reset-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Request_GPR_reset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-srv:success-val is deprecated.  Use wireless_network_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Request_GPR_reset-response>) ostream)
  "Serializes a message object of type '<Request_GPR_reset-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'success) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Request_GPR_reset-response>) istream)
  "Deserializes a message object of type '<Request_GPR_reset-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'success) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Request_GPR_reset-response>)))
  "Returns string type for a service object of type '<Request_GPR_reset-response>"
  "wireless_network_msgs/Request_GPR_resetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Request_GPR_reset-response)))
  "Returns string type for a service object of type 'Request_GPR_reset-response"
  "wireless_network_msgs/Request_GPR_resetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Request_GPR_reset-response>)))
  "Returns md5sum for a message object of type '<Request_GPR_reset-response>"
  "7818eabd25118ebe6de9ee66d82ef30c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Request_GPR_reset-response)))
  "Returns md5sum for a message object of type 'Request_GPR_reset-response"
  "7818eabd25118ebe6de9ee66d82ef30c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Request_GPR_reset-response>)))
  "Returns full string definition for message of type '<Request_GPR_reset-response>"
  (cl:format cl:nil "~%std_msgs/Int32 success~%~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Request_GPR_reset-response)))
  "Returns full string definition for message of type 'Request_GPR_reset-response"
  (cl:format cl:nil "~%std_msgs/Int32 success~%~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Request_GPR_reset-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'success))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Request_GPR_reset-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Request_GPR_reset-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Request_GPR_reset)))
  'Request_GPR_reset-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Request_GPR_reset)))
  'Request_GPR_reset-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Request_GPR_reset)))
  "Returns string type for a service object of type '<Request_GPR_reset>"
  "wireless_network_msgs/Request_GPR_reset")