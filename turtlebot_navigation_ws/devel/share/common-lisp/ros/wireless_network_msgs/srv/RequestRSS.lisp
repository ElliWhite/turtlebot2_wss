; Auto-generated. Do not edit!


(cl:in-package wireless_network_msgs-srv)


;//! \htmlinclude RequestRSS-request.msg.html

(cl:defclass <RequestRSS-request> (roslisp-msg-protocol:ros-message)
  ((x_position
    :reader x_position
    :initarg :x_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (y_position
    :reader y_position
    :initarg :y_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (z_position
    :reader z_position
    :initarg :z_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (source
    :reader source
    :initarg :source
    :type cl:integer
    :initform 0))
)

(cl:defclass RequestRSS-request (<RequestRSS-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestRSS-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestRSS-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wireless_network_msgs-srv:<RequestRSS-request> is deprecated: use wireless_network_msgs-srv:RequestRSS-request instead.")))

(cl:ensure-generic-function 'x_position-val :lambda-list '(m))
(cl:defmethod x_position-val ((m <RequestRSS-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-srv:x_position-val is deprecated.  Use wireless_network_msgs-srv:x_position instead.")
  (x_position m))

(cl:ensure-generic-function 'y_position-val :lambda-list '(m))
(cl:defmethod y_position-val ((m <RequestRSS-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-srv:y_position-val is deprecated.  Use wireless_network_msgs-srv:y_position instead.")
  (y_position m))

(cl:ensure-generic-function 'z_position-val :lambda-list '(m))
(cl:defmethod z_position-val ((m <RequestRSS-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-srv:z_position-val is deprecated.  Use wireless_network_msgs-srv:z_position instead.")
  (z_position m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <RequestRSS-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-srv:source-val is deprecated.  Use wireless_network_msgs-srv:source instead.")
  (source m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestRSS-request>) ostream)
  "Serializes a message object of type '<RequestRSS-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'x_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'x_position))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'y_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'y_position))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'z_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'z_position))
  (cl:let* ((signed (cl:slot-value msg 'source)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestRSS-request>) istream)
  "Deserializes a message object of type '<RequestRSS-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'x_position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'x_position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'y_position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'y_position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'z_position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'z_position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestRSS-request>)))
  "Returns string type for a service object of type '<RequestRSS-request>"
  "wireless_network_msgs/RequestRSSRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestRSS-request)))
  "Returns string type for a service object of type 'RequestRSS-request"
  "wireless_network_msgs/RequestRSSRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestRSS-request>)))
  "Returns md5sum for a message object of type '<RequestRSS-request>"
  "d8423904b521dd22d9d11c6abff995e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestRSS-request)))
  "Returns md5sum for a message object of type 'RequestRSS-request"
  "d8423904b521dd22d9d11c6abff995e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestRSS-request>)))
  "Returns full string definition for message of type '<RequestRSS-request>"
  (cl:format cl:nil "~%float32[] x_position~%float32[] y_position~%float32[] z_position~%~%~%int32 source~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestRSS-request)))
  "Returns full string definition for message of type 'RequestRSS-request"
  (cl:format cl:nil "~%float32[] x_position~%float32[] y_position~%float32[] z_position~%~%~%int32 source~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestRSS-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'x_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'y_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'z_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestRSS-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestRSS-request
    (cl:cons ':x_position (x_position msg))
    (cl:cons ':y_position (y_position msg))
    (cl:cons ':z_position (z_position msg))
    (cl:cons ':source (source msg))
))
;//! \htmlinclude RequestRSS-response.msg.html

(cl:defclass <RequestRSS-response> (roslisp-msg-protocol:ros-message)
  ((rssi_m
    :reader rssi_m
    :initarg :rssi_m
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (rssi_var
    :reader rssi_var
    :initarg :rssi_var
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RequestRSS-response (<RequestRSS-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestRSS-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestRSS-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wireless_network_msgs-srv:<RequestRSS-response> is deprecated: use wireless_network_msgs-srv:RequestRSS-response instead.")))

(cl:ensure-generic-function 'rssi_m-val :lambda-list '(m))
(cl:defmethod rssi_m-val ((m <RequestRSS-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-srv:rssi_m-val is deprecated.  Use wireless_network_msgs-srv:rssi_m instead.")
  (rssi_m m))

(cl:ensure-generic-function 'rssi_var-val :lambda-list '(m))
(cl:defmethod rssi_var-val ((m <RequestRSS-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-srv:rssi_var-val is deprecated.  Use wireless_network_msgs-srv:rssi_var instead.")
  (rssi_var m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestRSS-response>) ostream)
  "Serializes a message object of type '<RequestRSS-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rssi_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rssi_m))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rssi_var))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rssi_var))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestRSS-response>) istream)
  "Deserializes a message object of type '<RequestRSS-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rssi_m) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rssi_m)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rssi_var) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rssi_var)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestRSS-response>)))
  "Returns string type for a service object of type '<RequestRSS-response>"
  "wireless_network_msgs/RequestRSSResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestRSS-response)))
  "Returns string type for a service object of type 'RequestRSS-response"
  "wireless_network_msgs/RequestRSSResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestRSS-response>)))
  "Returns md5sum for a message object of type '<RequestRSS-response>"
  "d8423904b521dd22d9d11c6abff995e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestRSS-response)))
  "Returns md5sum for a message object of type 'RequestRSS-response"
  "d8423904b521dd22d9d11c6abff995e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestRSS-response>)))
  "Returns full string definition for message of type '<RequestRSS-response>"
  (cl:format cl:nil "~%float32[] rssi_m~%float32[] rssi_var~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestRSS-response)))
  "Returns full string definition for message of type 'RequestRSS-response"
  (cl:format cl:nil "~%float32[] rssi_m~%float32[] rssi_var~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestRSS-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rssi_m) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rssi_var) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestRSS-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestRSS-response
    (cl:cons ':rssi_m (rssi_m msg))
    (cl:cons ':rssi_var (rssi_var msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RequestRSS)))
  'RequestRSS-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RequestRSS)))
  'RequestRSS-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestRSS)))
  "Returns string type for a service object of type '<RequestRSS>"
  "wireless_network_msgs/RequestRSS")