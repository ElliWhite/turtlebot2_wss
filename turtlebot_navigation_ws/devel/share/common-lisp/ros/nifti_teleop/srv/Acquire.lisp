; Auto-generated. Do not edit!


(cl:in-package nifti_teleop-srv)


;//! \htmlinclude Acquire-request.msg.html

(cl:defclass <Acquire-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass Acquire-request (<Acquire-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Acquire-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Acquire-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nifti_teleop-srv:<Acquire-request> is deprecated: use nifti_teleop-srv:Acquire-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <Acquire-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_teleop-srv:topic-val is deprecated.  Use nifti_teleop-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Acquire-request>) ostream)
  "Serializes a message object of type '<Acquire-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Acquire-request>) istream)
  "Deserializes a message object of type '<Acquire-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Acquire-request>)))
  "Returns string type for a service object of type '<Acquire-request>"
  "nifti_teleop/AcquireRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Acquire-request)))
  "Returns string type for a service object of type 'Acquire-request"
  "nifti_teleop/AcquireRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Acquire-request>)))
  "Returns md5sum for a message object of type '<Acquire-request>"
  "2543eda9ec3404107775710514498ddf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Acquire-request)))
  "Returns md5sum for a message object of type 'Acquire-request"
  "2543eda9ec3404107775710514498ddf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Acquire-request>)))
  "Returns full string definition for message of type '<Acquire-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Acquire-request)))
  "Returns full string definition for message of type 'Acquire-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Acquire-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Acquire-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Acquire-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude Acquire-response.msg.html

(cl:defclass <Acquire-response> (roslisp-msg-protocol:ros-message)
  ((acquired
    :reader acquired
    :initarg :acquired
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Acquire-response (<Acquire-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Acquire-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Acquire-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nifti_teleop-srv:<Acquire-response> is deprecated: use nifti_teleop-srv:Acquire-response instead.")))

(cl:ensure-generic-function 'acquired-val :lambda-list '(m))
(cl:defmethod acquired-val ((m <Acquire-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_teleop-srv:acquired-val is deprecated.  Use nifti_teleop-srv:acquired instead.")
  (acquired m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Acquire-response>) ostream)
  "Serializes a message object of type '<Acquire-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'acquired) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Acquire-response>) istream)
  "Deserializes a message object of type '<Acquire-response>"
    (cl:setf (cl:slot-value msg 'acquired) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Acquire-response>)))
  "Returns string type for a service object of type '<Acquire-response>"
  "nifti_teleop/AcquireResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Acquire-response)))
  "Returns string type for a service object of type 'Acquire-response"
  "nifti_teleop/AcquireResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Acquire-response>)))
  "Returns md5sum for a message object of type '<Acquire-response>"
  "2543eda9ec3404107775710514498ddf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Acquire-response)))
  "Returns md5sum for a message object of type 'Acquire-response"
  "2543eda9ec3404107775710514498ddf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Acquire-response>)))
  "Returns full string definition for message of type '<Acquire-response>"
  (cl:format cl:nil "bool acquired~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Acquire-response)))
  "Returns full string definition for message of type 'Acquire-response"
  (cl:format cl:nil "bool acquired~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Acquire-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Acquire-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Acquire-response
    (cl:cons ':acquired (acquired msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Acquire)))
  'Acquire-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Acquire)))
  'Acquire-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Acquire)))
  "Returns string type for a service object of type '<Acquire>"
  "nifti_teleop/Acquire")