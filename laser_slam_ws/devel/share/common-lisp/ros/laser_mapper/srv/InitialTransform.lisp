; Auto-generated. Do not edit!


(cl:in-package laser_mapper-srv)


;//! \htmlinclude InitialTransform-request.msg.html

(cl:defclass <InitialTransform-request> (roslisp-msg-protocol:ros-message)
  ((transform_map_marker
    :reader transform_map_marker
    :initarg :transform_map_marker
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass InitialTransform-request (<InitialTransform-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitialTransform-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitialTransform-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_mapper-srv:<InitialTransform-request> is deprecated: use laser_mapper-srv:InitialTransform-request instead.")))

(cl:ensure-generic-function 'transform_map_marker-val :lambda-list '(m))
(cl:defmethod transform_map_marker-val ((m <InitialTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_mapper-srv:transform_map_marker-val is deprecated.  Use laser_mapper-srv:transform_map_marker instead.")
  (transform_map_marker m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitialTransform-request>) ostream)
  "Serializes a message object of type '<InitialTransform-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform_map_marker) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitialTransform-request>) istream)
  "Deserializes a message object of type '<InitialTransform-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform_map_marker) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitialTransform-request>)))
  "Returns string type for a service object of type '<InitialTransform-request>"
  "laser_mapper/InitialTransformRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitialTransform-request)))
  "Returns string type for a service object of type 'InitialTransform-request"
  "laser_mapper/InitialTransformRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitialTransform-request>)))
  "Returns md5sum for a message object of type '<InitialTransform-request>"
  "ed4c4e4224ec161139370ee82d9ed7da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitialTransform-request)))
  "Returns md5sum for a message object of type 'InitialTransform-request"
  "ed4c4e4224ec161139370ee82d9ed7da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitialTransform-request>)))
  "Returns full string definition for message of type '<InitialTransform-request>"
  (cl:format cl:nil "~%geometry_msgs/Pose transform_map_marker~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitialTransform-request)))
  "Returns full string definition for message of type 'InitialTransform-request"
  (cl:format cl:nil "~%geometry_msgs/Pose transform_map_marker~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitialTransform-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform_map_marker))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitialTransform-request>))
  "Converts a ROS message object to a list"
  (cl:list 'InitialTransform-request
    (cl:cons ':transform_map_marker (transform_map_marker msg))
))
;//! \htmlinclude InitialTransform-response.msg.html

(cl:defclass <InitialTransform-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass InitialTransform-response (<InitialTransform-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitialTransform-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitialTransform-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_mapper-srv:<InitialTransform-response> is deprecated: use laser_mapper-srv:InitialTransform-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <InitialTransform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_mapper-srv:success-val is deprecated.  Use laser_mapper-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitialTransform-response>) ostream)
  "Serializes a message object of type '<InitialTransform-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'success) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitialTransform-response>) istream)
  "Deserializes a message object of type '<InitialTransform-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'success) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitialTransform-response>)))
  "Returns string type for a service object of type '<InitialTransform-response>"
  "laser_mapper/InitialTransformResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitialTransform-response)))
  "Returns string type for a service object of type 'InitialTransform-response"
  "laser_mapper/InitialTransformResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitialTransform-response>)))
  "Returns md5sum for a message object of type '<InitialTransform-response>"
  "ed4c4e4224ec161139370ee82d9ed7da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitialTransform-response)))
  "Returns md5sum for a message object of type 'InitialTransform-response"
  "ed4c4e4224ec161139370ee82d9ed7da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitialTransform-response>)))
  "Returns full string definition for message of type '<InitialTransform-response>"
  (cl:format cl:nil "~%std_msgs/Bool success~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitialTransform-response)))
  "Returns full string definition for message of type 'InitialTransform-response"
  (cl:format cl:nil "~%std_msgs/Bool success~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitialTransform-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'success))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitialTransform-response>))
  "Converts a ROS message object to a list"
  (cl:list 'InitialTransform-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'InitialTransform)))
  'InitialTransform-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'InitialTransform)))
  'InitialTransform-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitialTransform)))
  "Returns string type for a service object of type '<InitialTransform>"
  "laser_mapper/InitialTransform")