; Auto-generated. Do not edit!


(cl:in-package nifti_teleop-srv)


;//! \htmlinclude Release-request.msg.html

(cl:defclass <Release-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass Release-request (<Release-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Release-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Release-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nifti_teleop-srv:<Release-request> is deprecated: use nifti_teleop-srv:Release-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <Release-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_teleop-srv:topic-val is deprecated.  Use nifti_teleop-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Release-request>) ostream)
  "Serializes a message object of type '<Release-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Release-request>) istream)
  "Deserializes a message object of type '<Release-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Release-request>)))
  "Returns string type for a service object of type '<Release-request>"
  "nifti_teleop/ReleaseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Release-request)))
  "Returns string type for a service object of type 'Release-request"
  "nifti_teleop/ReleaseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Release-request>)))
  "Returns md5sum for a message object of type '<Release-request>"
  "d3ab87cb63701ba577b5ab3413ba13da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Release-request)))
  "Returns md5sum for a message object of type 'Release-request"
  "d3ab87cb63701ba577b5ab3413ba13da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Release-request>)))
  "Returns full string definition for message of type '<Release-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Release-request)))
  "Returns full string definition for message of type 'Release-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Release-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Release-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Release-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude Release-response.msg.html

(cl:defclass <Release-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Release-response (<Release-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Release-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Release-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nifti_teleop-srv:<Release-response> is deprecated: use nifti_teleop-srv:Release-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Release-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nifti_teleop-srv:success-val is deprecated.  Use nifti_teleop-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Release-response>) ostream)
  "Serializes a message object of type '<Release-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Release-response>) istream)
  "Deserializes a message object of type '<Release-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Release-response>)))
  "Returns string type for a service object of type '<Release-response>"
  "nifti_teleop/ReleaseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Release-response)))
  "Returns string type for a service object of type 'Release-response"
  "nifti_teleop/ReleaseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Release-response>)))
  "Returns md5sum for a message object of type '<Release-response>"
  "d3ab87cb63701ba577b5ab3413ba13da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Release-response)))
  "Returns md5sum for a message object of type 'Release-response"
  "d3ab87cb63701ba577b5ab3413ba13da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Release-response>)))
  "Returns full string definition for message of type '<Release-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Release-response)))
  "Returns full string definition for message of type 'Release-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Release-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Release-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Release-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Release)))
  'Release-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Release)))
  'Release-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Release)))
  "Returns string type for a service object of type '<Release>"
  "nifti_teleop/Release")