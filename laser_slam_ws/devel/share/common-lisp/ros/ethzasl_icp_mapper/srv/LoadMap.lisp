; Auto-generated. Do not edit!


(cl:in-package ethzasl_icp_mapper-srv)


;//! \htmlinclude LoadMap-request.msg.html

(cl:defclass <LoadMap-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass LoadMap-request (<LoadMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethzasl_icp_mapper-srv:<LoadMap-request> is deprecated: use ethzasl_icp_mapper-srv:LoadMap-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <LoadMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:filename-val is deprecated.  Use ethzasl_icp_mapper-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadMap-request>) ostream)
  "Serializes a message object of type '<LoadMap-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filename) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadMap-request>) istream)
  "Deserializes a message object of type '<LoadMap-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filename) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadMap-request>)))
  "Returns string type for a service object of type '<LoadMap-request>"
  "ethzasl_icp_mapper/LoadMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMap-request)))
  "Returns string type for a service object of type 'LoadMap-request"
  "ethzasl_icp_mapper/LoadMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadMap-request>)))
  "Returns md5sum for a message object of type '<LoadMap-request>"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadMap-request)))
  "Returns md5sum for a message object of type 'LoadMap-request"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadMap-request>)))
  "Returns full string definition for message of type '<LoadMap-request>"
  (cl:format cl:nil "std_msgs/String filename~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadMap-request)))
  "Returns full string definition for message of type 'LoadMap-request"
  (cl:format cl:nil "std_msgs/String filename~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadMap-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadMap-request
    (cl:cons ':filename (filename msg))
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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethzasl_icp_mapper-srv:<LoadMap-response> is deprecated: use ethzasl_icp_mapper-srv:LoadMap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadMap-response>) ostream)
  "Serializes a message object of type '<LoadMap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadMap-response>) istream)
  "Deserializes a message object of type '<LoadMap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadMap-response>)))
  "Returns string type for a service object of type '<LoadMap-response>"
  "ethzasl_icp_mapper/LoadMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMap-response)))
  "Returns string type for a service object of type 'LoadMap-response"
  "ethzasl_icp_mapper/LoadMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadMap-response>)))
  "Returns md5sum for a message object of type '<LoadMap-response>"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadMap-response)))
  "Returns md5sum for a message object of type 'LoadMap-response"
  "716e25f9d9dc76ceba197f93cbf05dc7")
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
  "ethzasl_icp_mapper/LoadMap")