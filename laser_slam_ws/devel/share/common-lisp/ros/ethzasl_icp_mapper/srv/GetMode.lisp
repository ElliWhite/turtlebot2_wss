; Auto-generated. Do not edit!


(cl:in-package ethzasl_icp_mapper-srv)


;//! \htmlinclude GetMode-request.msg.html

(cl:defclass <GetMode-request> (roslisp-msg-protocol:ros-message)
  ((localize
    :reader localize
    :initarg :localize
    :type cl:boolean
    :initform cl:nil)
   (map
    :reader map
    :initarg :map
    :type cl:boolean
    :initform cl:nil)
   (applyChange
    :reader applyChange
    :initarg :applyChange
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetMode-request (<GetMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethzasl_icp_mapper-srv:<GetMode-request> is deprecated: use ethzasl_icp_mapper-srv:GetMode-request instead.")))

(cl:ensure-generic-function 'localize-val :lambda-list '(m))
(cl:defmethod localize-val ((m <GetMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:localize-val is deprecated.  Use ethzasl_icp_mapper-srv:localize instead.")
  (localize m))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <GetMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:map-val is deprecated.  Use ethzasl_icp_mapper-srv:map instead.")
  (map m))

(cl:ensure-generic-function 'applyChange-val :lambda-list '(m))
(cl:defmethod applyChange-val ((m <GetMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:applyChange-val is deprecated.  Use ethzasl_icp_mapper-srv:applyChange instead.")
  (applyChange m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMode-request>) ostream)
  "Serializes a message object of type '<GetMode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'localize) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'map) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'applyChange) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMode-request>) istream)
  "Deserializes a message object of type '<GetMode-request>"
    (cl:setf (cl:slot-value msg 'localize) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'map) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'applyChange) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMode-request>)))
  "Returns string type for a service object of type '<GetMode-request>"
  "ethzasl_icp_mapper/GetModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMode-request)))
  "Returns string type for a service object of type 'GetMode-request"
  "ethzasl_icp_mapper/GetModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMode-request>)))
  "Returns md5sum for a message object of type '<GetMode-request>"
  "11879a69b8d234b7e1458ef090e302c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMode-request)))
  "Returns md5sum for a message object of type 'GetMode-request"
  "11879a69b8d234b7e1458ef090e302c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMode-request>)))
  "Returns full string definition for message of type '<GetMode-request>"
  (cl:format cl:nil "bool localize~%bool map~%bool applyChange~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMode-request)))
  "Returns full string definition for message of type 'GetMode-request"
  (cl:format cl:nil "bool localize~%bool map~%bool applyChange~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMode-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMode-request
    (cl:cons ':localize (localize msg))
    (cl:cons ':map (map msg))
    (cl:cons ':applyChange (applyChange msg))
))
;//! \htmlinclude GetMode-response.msg.html

(cl:defclass <GetMode-response> (roslisp-msg-protocol:ros-message)
  ((localize
    :reader localize
    :initarg :localize
    :type cl:boolean
    :initform cl:nil)
   (map
    :reader map
    :initarg :map
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetMode-response (<GetMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethzasl_icp_mapper-srv:<GetMode-response> is deprecated: use ethzasl_icp_mapper-srv:GetMode-response instead.")))

(cl:ensure-generic-function 'localize-val :lambda-list '(m))
(cl:defmethod localize-val ((m <GetMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:localize-val is deprecated.  Use ethzasl_icp_mapper-srv:localize instead.")
  (localize m))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <GetMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:map-val is deprecated.  Use ethzasl_icp_mapper-srv:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMode-response>) ostream)
  "Serializes a message object of type '<GetMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'localize) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'map) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMode-response>) istream)
  "Deserializes a message object of type '<GetMode-response>"
    (cl:setf (cl:slot-value msg 'localize) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'map) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMode-response>)))
  "Returns string type for a service object of type '<GetMode-response>"
  "ethzasl_icp_mapper/GetModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMode-response)))
  "Returns string type for a service object of type 'GetMode-response"
  "ethzasl_icp_mapper/GetModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMode-response>)))
  "Returns md5sum for a message object of type '<GetMode-response>"
  "11879a69b8d234b7e1458ef090e302c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMode-response)))
  "Returns md5sum for a message object of type 'GetMode-response"
  "11879a69b8d234b7e1458ef090e302c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMode-response>)))
  "Returns full string definition for message of type '<GetMode-response>"
  (cl:format cl:nil "bool localize~%bool map~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMode-response)))
  "Returns full string definition for message of type 'GetMode-response"
  (cl:format cl:nil "bool localize~%bool map~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMode-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMode-response
    (cl:cons ':localize (localize msg))
    (cl:cons ':map (map msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMode)))
  'GetMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMode)))
  'GetMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMode)))
  "Returns string type for a service object of type '<GetMode>"
  "ethzasl_icp_mapper/GetMode")