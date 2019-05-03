; Auto-generated. Do not edit!


(cl:in-package networkanalysis_msgs-srv)


;//! \htmlinclude pingservice-request.msg.html

(cl:defclass <pingservice-request> (roslisp-msg-protocol:ros-message)
  ((inp
    :reader inp
    :initarg :inp
    :type cl:fixnum
    :initform 0))
)

(cl:defclass pingservice-request (<pingservice-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pingservice-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pingservice-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name networkanalysis_msgs-srv:<pingservice-request> is deprecated: use networkanalysis_msgs-srv:pingservice-request instead.")))

(cl:ensure-generic-function 'inp-val :lambda-list '(m))
(cl:defmethod inp-val ((m <pingservice-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-srv:inp-val is deprecated.  Use networkanalysis_msgs-srv:inp instead.")
  (inp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pingservice-request>) ostream)
  "Serializes a message object of type '<pingservice-request>"
  (cl:let* ((signed (cl:slot-value msg 'inp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pingservice-request>) istream)
  "Deserializes a message object of type '<pingservice-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'inp) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pingservice-request>)))
  "Returns string type for a service object of type '<pingservice-request>"
  "networkanalysis_msgs/pingserviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pingservice-request)))
  "Returns string type for a service object of type 'pingservice-request"
  "networkanalysis_msgs/pingserviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pingservice-request>)))
  "Returns md5sum for a message object of type '<pingservice-request>"
  "12a26707b8a62d612b0a1ffbc1162d35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pingservice-request)))
  "Returns md5sum for a message object of type 'pingservice-request"
  "12a26707b8a62d612b0a1ffbc1162d35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pingservice-request>)))
  "Returns full string definition for message of type '<pingservice-request>"
  (cl:format cl:nil "int16 inp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pingservice-request)))
  "Returns full string definition for message of type 'pingservice-request"
  (cl:format cl:nil "int16 inp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pingservice-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pingservice-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pingservice-request
    (cl:cons ':inp (inp msg))
))
;//! \htmlinclude pingservice-response.msg.html

(cl:defclass <pingservice-response> (roslisp-msg-protocol:ros-message)
  ((outp
    :reader outp
    :initarg :outp
    :type cl:fixnum
    :initform 0))
)

(cl:defclass pingservice-response (<pingservice-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pingservice-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pingservice-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name networkanalysis_msgs-srv:<pingservice-response> is deprecated: use networkanalysis_msgs-srv:pingservice-response instead.")))

(cl:ensure-generic-function 'outp-val :lambda-list '(m))
(cl:defmethod outp-val ((m <pingservice-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-srv:outp-val is deprecated.  Use networkanalysis_msgs-srv:outp instead.")
  (outp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pingservice-response>) ostream)
  "Serializes a message object of type '<pingservice-response>"
  (cl:let* ((signed (cl:slot-value msg 'outp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pingservice-response>) istream)
  "Deserializes a message object of type '<pingservice-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'outp) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pingservice-response>)))
  "Returns string type for a service object of type '<pingservice-response>"
  "networkanalysis_msgs/pingserviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pingservice-response)))
  "Returns string type for a service object of type 'pingservice-response"
  "networkanalysis_msgs/pingserviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pingservice-response>)))
  "Returns md5sum for a message object of type '<pingservice-response>"
  "12a26707b8a62d612b0a1ffbc1162d35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pingservice-response)))
  "Returns md5sum for a message object of type 'pingservice-response"
  "12a26707b8a62d612b0a1ffbc1162d35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pingservice-response>)))
  "Returns full string definition for message of type '<pingservice-response>"
  (cl:format cl:nil "int16 outp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pingservice-response)))
  "Returns full string definition for message of type 'pingservice-response"
  (cl:format cl:nil "int16 outp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pingservice-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pingservice-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pingservice-response
    (cl:cons ':outp (outp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pingservice)))
  'pingservice-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pingservice)))
  'pingservice-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pingservice)))
  "Returns string type for a service object of type '<pingservice>"
  "networkanalysis_msgs/pingservice")