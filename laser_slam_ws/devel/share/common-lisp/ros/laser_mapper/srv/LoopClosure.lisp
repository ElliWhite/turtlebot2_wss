; Auto-generated. Do not edit!


(cl:in-package laser_mapper-srv)


;//! \htmlinclude LoopClosure-request.msg.html

(cl:defclass <LoopClosure-request> (roslisp-msg-protocol:ros-message)
  ((time_a
    :reader time_a
    :initarg :time_a
    :type cl:integer
    :initform 0)
   (time_b
    :reader time_b
    :initarg :time_b
    :type cl:integer
    :initform 0)
   (transform_a_b
    :reader transform_a_b
    :initarg :transform_a_b
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (collector_times
    :reader collector_times
    :initarg :collector_times
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass LoopClosure-request (<LoopClosure-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoopClosure-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoopClosure-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_mapper-srv:<LoopClosure-request> is deprecated: use laser_mapper-srv:LoopClosure-request instead.")))

(cl:ensure-generic-function 'time_a-val :lambda-list '(m))
(cl:defmethod time_a-val ((m <LoopClosure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_mapper-srv:time_a-val is deprecated.  Use laser_mapper-srv:time_a instead.")
  (time_a m))

(cl:ensure-generic-function 'time_b-val :lambda-list '(m))
(cl:defmethod time_b-val ((m <LoopClosure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_mapper-srv:time_b-val is deprecated.  Use laser_mapper-srv:time_b instead.")
  (time_b m))

(cl:ensure-generic-function 'transform_a_b-val :lambda-list '(m))
(cl:defmethod transform_a_b-val ((m <LoopClosure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_mapper-srv:transform_a_b-val is deprecated.  Use laser_mapper-srv:transform_a_b instead.")
  (transform_a_b m))

(cl:ensure-generic-function 'collector_times-val :lambda-list '(m))
(cl:defmethod collector_times-val ((m <LoopClosure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_mapper-srv:collector_times-val is deprecated.  Use laser_mapper-srv:collector_times instead.")
  (collector_times m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoopClosure-request>) ostream)
  "Serializes a message object of type '<LoopClosure-request>"
  (cl:let* ((signed (cl:slot-value msg 'time_a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'time_b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform_a_b) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'collector_times))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'collector_times))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoopClosure-request>) istream)
  "Deserializes a message object of type '<LoopClosure-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform_a_b) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'collector_times) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'collector_times)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoopClosure-request>)))
  "Returns string type for a service object of type '<LoopClosure-request>"
  "laser_mapper/LoopClosureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoopClosure-request)))
  "Returns string type for a service object of type 'LoopClosure-request"
  "laser_mapper/LoopClosureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoopClosure-request>)))
  "Returns md5sum for a message object of type '<LoopClosure-request>"
  "2bfd8abab66078a46d6c266f42293b3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoopClosure-request)))
  "Returns md5sum for a message object of type 'LoopClosure-request"
  "2bfd8abab66078a46d6c266f42293b3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoopClosure-request>)))
  "Returns full string definition for message of type '<LoopClosure-request>"
  (cl:format cl:nil "~%int64 time_a~%int64 time_b~%geometry_msgs/Transform transform_a_b~%int64[] collector_times~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoopClosure-request)))
  "Returns full string definition for message of type 'LoopClosure-request"
  (cl:format cl:nil "~%int64 time_a~%int64 time_b~%geometry_msgs/Transform transform_a_b~%int64[] collector_times~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoopClosure-request>))
  (cl:+ 0
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform_a_b))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'collector_times) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoopClosure-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoopClosure-request
    (cl:cons ':time_a (time_a msg))
    (cl:cons ':time_b (time_b msg))
    (cl:cons ':transform_a_b (transform_a_b msg))
    (cl:cons ':collector_times (collector_times msg))
))
;//! \htmlinclude LoopClosure-response.msg.html

(cl:defclass <LoopClosure-response> (roslisp-msg-protocol:ros-message)
  ((transforms
    :reader transforms
    :initarg :transforms
    :type (cl:vector geometry_msgs-msg:Transform)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Transform :initial-element (cl:make-instance 'geometry_msgs-msg:Transform))))
)

(cl:defclass LoopClosure-response (<LoopClosure-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoopClosure-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoopClosure-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_mapper-srv:<LoopClosure-response> is deprecated: use laser_mapper-srv:LoopClosure-response instead.")))

(cl:ensure-generic-function 'transforms-val :lambda-list '(m))
(cl:defmethod transforms-val ((m <LoopClosure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_mapper-srv:transforms-val is deprecated.  Use laser_mapper-srv:transforms instead.")
  (transforms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoopClosure-response>) ostream)
  "Serializes a message object of type '<LoopClosure-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'transforms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'transforms))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoopClosure-response>) istream)
  "Deserializes a message object of type '<LoopClosure-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'transforms) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'transforms)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Transform))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoopClosure-response>)))
  "Returns string type for a service object of type '<LoopClosure-response>"
  "laser_mapper/LoopClosureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoopClosure-response)))
  "Returns string type for a service object of type 'LoopClosure-response"
  "laser_mapper/LoopClosureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoopClosure-response>)))
  "Returns md5sum for a message object of type '<LoopClosure-response>"
  "2bfd8abab66078a46d6c266f42293b3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoopClosure-response)))
  "Returns md5sum for a message object of type 'LoopClosure-response"
  "2bfd8abab66078a46d6c266f42293b3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoopClosure-response>)))
  "Returns full string definition for message of type '<LoopClosure-response>"
  (cl:format cl:nil "~%geometry_msgs/Transform[] transforms~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoopClosure-response)))
  "Returns full string definition for message of type 'LoopClosure-response"
  (cl:format cl:nil "~%geometry_msgs/Transform[] transforms~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoopClosure-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'transforms) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoopClosure-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoopClosure-response
    (cl:cons ':transforms (transforms msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoopClosure)))
  'LoopClosure-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoopClosure)))
  'LoopClosure-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoopClosure)))
  "Returns string type for a service object of type '<LoopClosure>"
  "laser_mapper/LoopClosure")