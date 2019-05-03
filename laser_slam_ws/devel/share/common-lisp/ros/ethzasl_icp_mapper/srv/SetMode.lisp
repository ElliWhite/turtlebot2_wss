; Auto-generated. Do not edit!


(cl:in-package ethzasl_icp_mapper-srv)


;//! \htmlinclude SetMode-request.msg.html

(cl:defclass <SetMode-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetMode-request (<SetMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethzasl_icp_mapper-srv:<SetMode-request> is deprecated: use ethzasl_icp_mapper-srv:SetMode-request instead.")))

(cl:ensure-generic-function 'localize-val :lambda-list '(m))
(cl:defmethod localize-val ((m <SetMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:localize-val is deprecated.  Use ethzasl_icp_mapper-srv:localize instead.")
  (localize m))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <SetMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:map-val is deprecated.  Use ethzasl_icp_mapper-srv:map instead.")
  (map m))

(cl:ensure-generic-function 'applyChange-val :lambda-list '(m))
(cl:defmethod applyChange-val ((m <SetMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:applyChange-val is deprecated.  Use ethzasl_icp_mapper-srv:applyChange instead.")
  (applyChange m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMode-request>) ostream)
  "Serializes a message object of type '<SetMode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'localize) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'map) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'applyChange) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMode-request>) istream)
  "Deserializes a message object of type '<SetMode-request>"
    (cl:setf (cl:slot-value msg 'localize) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'map) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'applyChange) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMode-request>)))
  "Returns string type for a service object of type '<SetMode-request>"
  "ethzasl_icp_mapper/SetModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMode-request)))
  "Returns string type for a service object of type 'SetMode-request"
  "ethzasl_icp_mapper/SetModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMode-request>)))
  "Returns md5sum for a message object of type '<SetMode-request>"
  "11879a69b8d234b7e1458ef090e302c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMode-request)))
  "Returns md5sum for a message object of type 'SetMode-request"
  "11879a69b8d234b7e1458ef090e302c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMode-request>)))
  "Returns full string definition for message of type '<SetMode-request>"
  (cl:format cl:nil "bool localize~%bool map~%bool applyChange~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMode-request)))
  "Returns full string definition for message of type 'SetMode-request"
  (cl:format cl:nil "bool localize~%bool map~%bool applyChange~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMode-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMode-request
    (cl:cons ':localize (localize msg))
    (cl:cons ':map (map msg))
    (cl:cons ':applyChange (applyChange msg))
))
;//! \htmlinclude SetMode-response.msg.html

(cl:defclass <SetMode-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetMode-response (<SetMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ethzasl_icp_mapper-srv:<SetMode-response> is deprecated: use ethzasl_icp_mapper-srv:SetMode-response instead.")))

(cl:ensure-generic-function 'localize-val :lambda-list '(m))
(cl:defmethod localize-val ((m <SetMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:localize-val is deprecated.  Use ethzasl_icp_mapper-srv:localize instead.")
  (localize m))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <SetMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ethzasl_icp_mapper-srv:map-val is deprecated.  Use ethzasl_icp_mapper-srv:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMode-response>) ostream)
  "Serializes a message object of type '<SetMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'localize) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'map) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMode-response>) istream)
  "Deserializes a message object of type '<SetMode-response>"
    (cl:setf (cl:slot-value msg 'localize) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'map) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMode-response>)))
  "Returns string type for a service object of type '<SetMode-response>"
  "ethzasl_icp_mapper/SetModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMode-response)))
  "Returns string type for a service object of type 'SetMode-response"
  "ethzasl_icp_mapper/SetModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMode-response>)))
  "Returns md5sum for a message object of type '<SetMode-response>"
  "11879a69b8d234b7e1458ef090e302c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMode-response)))
  "Returns md5sum for a message object of type 'SetMode-response"
  "11879a69b8d234b7e1458ef090e302c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMode-response>)))
  "Returns full string definition for message of type '<SetMode-response>"
  (cl:format cl:nil "bool localize~%bool map~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMode-response)))
  "Returns full string definition for message of type 'SetMode-response"
  (cl:format cl:nil "bool localize~%bool map~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMode-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMode-response
    (cl:cons ':localize (localize msg))
    (cl:cons ':map (map msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMode)))
  'SetMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMode)))
  'SetMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMode)))
  "Returns string type for a service object of type '<SetMode>"
  "ethzasl_icp_mapper/SetMode")