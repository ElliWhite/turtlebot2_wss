; Auto-generated. Do not edit!


(cl:in-package volumetric_msgs-srv)


;//! \htmlinclude SetDisplayBounds-request.msg.html

(cl:defclass <SetDisplayBounds-request> (roslisp-msg-protocol:ros-message)
  ((min_z
    :reader min_z
    :initarg :min_z
    :type cl:float
    :initform 0.0)
   (max_z
    :reader max_z
    :initarg :max_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetDisplayBounds-request (<SetDisplayBounds-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDisplayBounds-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDisplayBounds-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name volumetric_msgs-srv:<SetDisplayBounds-request> is deprecated: use volumetric_msgs-srv:SetDisplayBounds-request instead.")))

(cl:ensure-generic-function 'min_z-val :lambda-list '(m))
(cl:defmethod min_z-val ((m <SetDisplayBounds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader volumetric_msgs-srv:min_z-val is deprecated.  Use volumetric_msgs-srv:min_z instead.")
  (min_z m))

(cl:ensure-generic-function 'max_z-val :lambda-list '(m))
(cl:defmethod max_z-val ((m <SetDisplayBounds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader volumetric_msgs-srv:max_z-val is deprecated.  Use volumetric_msgs-srv:max_z instead.")
  (max_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDisplayBounds-request>) ostream)
  "Serializes a message object of type '<SetDisplayBounds-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDisplayBounds-request>) istream)
  "Deserializes a message object of type '<SetDisplayBounds-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDisplayBounds-request>)))
  "Returns string type for a service object of type '<SetDisplayBounds-request>"
  "volumetric_msgs/SetDisplayBoundsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDisplayBounds-request)))
  "Returns string type for a service object of type 'SetDisplayBounds-request"
  "volumetric_msgs/SetDisplayBoundsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDisplayBounds-request>)))
  "Returns md5sum for a message object of type '<SetDisplayBounds-request>"
  "07683f201de683853c90da45e9c9c84a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDisplayBounds-request)))
  "Returns md5sum for a message object of type 'SetDisplayBounds-request"
  "07683f201de683853c90da45e9c9c84a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDisplayBounds-request>)))
  "Returns full string definition for message of type '<SetDisplayBounds-request>"
  (cl:format cl:nil "float64 min_z~%float64 max_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDisplayBounds-request)))
  "Returns full string definition for message of type 'SetDisplayBounds-request"
  (cl:format cl:nil "float64 min_z~%float64 max_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDisplayBounds-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDisplayBounds-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDisplayBounds-request
    (cl:cons ':min_z (min_z msg))
    (cl:cons ':max_z (max_z msg))
))
;//! \htmlinclude SetDisplayBounds-response.msg.html

(cl:defclass <SetDisplayBounds-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetDisplayBounds-response (<SetDisplayBounds-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDisplayBounds-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDisplayBounds-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name volumetric_msgs-srv:<SetDisplayBounds-response> is deprecated: use volumetric_msgs-srv:SetDisplayBounds-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDisplayBounds-response>) ostream)
  "Serializes a message object of type '<SetDisplayBounds-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDisplayBounds-response>) istream)
  "Deserializes a message object of type '<SetDisplayBounds-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDisplayBounds-response>)))
  "Returns string type for a service object of type '<SetDisplayBounds-response>"
  "volumetric_msgs/SetDisplayBoundsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDisplayBounds-response)))
  "Returns string type for a service object of type 'SetDisplayBounds-response"
  "volumetric_msgs/SetDisplayBoundsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDisplayBounds-response>)))
  "Returns md5sum for a message object of type '<SetDisplayBounds-response>"
  "07683f201de683853c90da45e9c9c84a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDisplayBounds-response)))
  "Returns md5sum for a message object of type 'SetDisplayBounds-response"
  "07683f201de683853c90da45e9c9c84a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDisplayBounds-response>)))
  "Returns full string definition for message of type '<SetDisplayBounds-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDisplayBounds-response)))
  "Returns full string definition for message of type 'SetDisplayBounds-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDisplayBounds-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDisplayBounds-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDisplayBounds-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDisplayBounds)))
  'SetDisplayBounds-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDisplayBounds)))
  'SetDisplayBounds-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDisplayBounds)))
  "Returns string type for a service object of type '<SetDisplayBounds>"
  "volumetric_msgs/SetDisplayBounds")