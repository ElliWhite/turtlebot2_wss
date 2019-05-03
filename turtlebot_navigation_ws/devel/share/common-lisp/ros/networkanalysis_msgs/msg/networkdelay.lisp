; Auto-generated. Do not edit!


(cl:in-package networkanalysis_msgs-msg)


;//! \htmlinclude networkdelay.msg.html

(cl:defclass <networkdelay> (roslisp-msg-protocol:ros-message)
  ((rtt
    :reader rtt
    :initarg :rtt
    :type cl:integer
    :initform 0)
   (delay
    :reader delay
    :initarg :delay
    :type cl:integer
    :initform 0)
   (alive
    :reader alive
    :initarg :alive
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass networkdelay (<networkdelay>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <networkdelay>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'networkdelay)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name networkanalysis_msgs-msg:<networkdelay> is deprecated: use networkanalysis_msgs-msg:networkdelay instead.")))

(cl:ensure-generic-function 'rtt-val :lambda-list '(m))
(cl:defmethod rtt-val ((m <networkdelay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-msg:rtt-val is deprecated.  Use networkanalysis_msgs-msg:rtt instead.")
  (rtt m))

(cl:ensure-generic-function 'delay-val :lambda-list '(m))
(cl:defmethod delay-val ((m <networkdelay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-msg:delay-val is deprecated.  Use networkanalysis_msgs-msg:delay instead.")
  (delay m))

(cl:ensure-generic-function 'alive-val :lambda-list '(m))
(cl:defmethod alive-val ((m <networkdelay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-msg:alive-val is deprecated.  Use networkanalysis_msgs-msg:alive instead.")
  (alive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <networkdelay>) ostream)
  "Serializes a message object of type '<networkdelay>"
  (cl:let* ((signed (cl:slot-value msg 'rtt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'delay)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'alive) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <networkdelay>) istream)
  "Deserializes a message object of type '<networkdelay>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rtt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'delay) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'alive) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<networkdelay>)))
  "Returns string type for a message object of type '<networkdelay>"
  "networkanalysis_msgs/networkdelay")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'networkdelay)))
  "Returns string type for a message object of type 'networkdelay"
  "networkanalysis_msgs/networkdelay")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<networkdelay>)))
  "Returns md5sum for a message object of type '<networkdelay>"
  "d03f4625e59c7764c5a566890285e1e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'networkdelay)))
  "Returns md5sum for a message object of type 'networkdelay"
  "d03f4625e59c7764c5a566890285e1e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<networkdelay>)))
  "Returns full string definition for message of type '<networkdelay>"
  (cl:format cl:nil "#round trip time (rtt) obtained using \"ping\" with ICMO echo request~%int32 rtt~%~%#network delay obtained directly at the application level (ros service call)~%int32 delay~%~%#Flag to check if the link is alive or dead~%bool alive~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'networkdelay)))
  "Returns full string definition for message of type 'networkdelay"
  (cl:format cl:nil "#round trip time (rtt) obtained using \"ping\" with ICMO echo request~%int32 rtt~%~%#network delay obtained directly at the application level (ros service call)~%int32 delay~%~%#Flag to check if the link is alive or dead~%bool alive~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <networkdelay>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <networkdelay>))
  "Converts a ROS message object to a list"
  (cl:list 'networkdelay
    (cl:cons ':rtt (rtt msg))
    (cl:cons ':delay (delay msg))
    (cl:cons ':alive (alive msg))
))
