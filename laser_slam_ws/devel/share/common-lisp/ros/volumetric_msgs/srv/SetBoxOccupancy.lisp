; Auto-generated. Do not edit!


(cl:in-package volumetric_msgs-srv)


;//! \htmlinclude SetBoxOccupancy-request.msg.html

(cl:defclass <SetBoxOccupancy-request> (roslisp-msg-protocol:ros-message)
  ((box_center
    :reader box_center
    :initarg :box_center
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (box_size
    :reader box_size
    :initarg :box_size
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (set_occupied
    :reader set_occupied
    :initarg :set_occupied
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetBoxOccupancy-request (<SetBoxOccupancy-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBoxOccupancy-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBoxOccupancy-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name volumetric_msgs-srv:<SetBoxOccupancy-request> is deprecated: use volumetric_msgs-srv:SetBoxOccupancy-request instead.")))

(cl:ensure-generic-function 'box_center-val :lambda-list '(m))
(cl:defmethod box_center-val ((m <SetBoxOccupancy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader volumetric_msgs-srv:box_center-val is deprecated.  Use volumetric_msgs-srv:box_center instead.")
  (box_center m))

(cl:ensure-generic-function 'box_size-val :lambda-list '(m))
(cl:defmethod box_size-val ((m <SetBoxOccupancy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader volumetric_msgs-srv:box_size-val is deprecated.  Use volumetric_msgs-srv:box_size instead.")
  (box_size m))

(cl:ensure-generic-function 'set_occupied-val :lambda-list '(m))
(cl:defmethod set_occupied-val ((m <SetBoxOccupancy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader volumetric_msgs-srv:set_occupied-val is deprecated.  Use volumetric_msgs-srv:set_occupied instead.")
  (set_occupied m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBoxOccupancy-request>) ostream)
  "Serializes a message object of type '<SetBoxOccupancy-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box_center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box_size) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_occupied) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBoxOccupancy-request>) istream)
  "Deserializes a message object of type '<SetBoxOccupancy-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box_center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box_size) istream)
    (cl:setf (cl:slot-value msg 'set_occupied) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBoxOccupancy-request>)))
  "Returns string type for a service object of type '<SetBoxOccupancy-request>"
  "volumetric_msgs/SetBoxOccupancyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBoxOccupancy-request)))
  "Returns string type for a service object of type 'SetBoxOccupancy-request"
  "volumetric_msgs/SetBoxOccupancyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBoxOccupancy-request>)))
  "Returns md5sum for a message object of type '<SetBoxOccupancy-request>"
  "6588a1eb7f4c6adf70fa660225beeb92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBoxOccupancy-request)))
  "Returns md5sum for a message object of type 'SetBoxOccupancy-request"
  "6588a1eb7f4c6adf70fa660225beeb92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBoxOccupancy-request>)))
  "Returns full string definition for message of type '<SetBoxOccupancy-request>"
  (cl:format cl:nil "~%geometry_msgs/Vector3 box_center~%geometry_msgs/Vector3 box_size~%bool set_occupied~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBoxOccupancy-request)))
  "Returns full string definition for message of type 'SetBoxOccupancy-request"
  (cl:format cl:nil "~%geometry_msgs/Vector3 box_center~%geometry_msgs/Vector3 box_size~%bool set_occupied~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBoxOccupancy-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box_center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box_size))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBoxOccupancy-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBoxOccupancy-request
    (cl:cons ':box_center (box_center msg))
    (cl:cons ':box_size (box_size msg))
    (cl:cons ':set_occupied (set_occupied msg))
))
;//! \htmlinclude SetBoxOccupancy-response.msg.html

(cl:defclass <SetBoxOccupancy-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetBoxOccupancy-response (<SetBoxOccupancy-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBoxOccupancy-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBoxOccupancy-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name volumetric_msgs-srv:<SetBoxOccupancy-response> is deprecated: use volumetric_msgs-srv:SetBoxOccupancy-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBoxOccupancy-response>) ostream)
  "Serializes a message object of type '<SetBoxOccupancy-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBoxOccupancy-response>) istream)
  "Deserializes a message object of type '<SetBoxOccupancy-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBoxOccupancy-response>)))
  "Returns string type for a service object of type '<SetBoxOccupancy-response>"
  "volumetric_msgs/SetBoxOccupancyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBoxOccupancy-response)))
  "Returns string type for a service object of type 'SetBoxOccupancy-response"
  "volumetric_msgs/SetBoxOccupancyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBoxOccupancy-response>)))
  "Returns md5sum for a message object of type '<SetBoxOccupancy-response>"
  "6588a1eb7f4c6adf70fa660225beeb92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBoxOccupancy-response)))
  "Returns md5sum for a message object of type 'SetBoxOccupancy-response"
  "6588a1eb7f4c6adf70fa660225beeb92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBoxOccupancy-response>)))
  "Returns full string definition for message of type '<SetBoxOccupancy-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBoxOccupancy-response)))
  "Returns full string definition for message of type 'SetBoxOccupancy-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBoxOccupancy-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBoxOccupancy-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBoxOccupancy-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetBoxOccupancy)))
  'SetBoxOccupancy-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetBoxOccupancy)))
  'SetBoxOccupancy-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBoxOccupancy)))
  "Returns string type for a service object of type '<SetBoxOccupancy>"
  "volumetric_msgs/SetBoxOccupancy")