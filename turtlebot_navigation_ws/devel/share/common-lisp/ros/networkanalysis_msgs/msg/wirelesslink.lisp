; Auto-generated. Do not edit!


(cl:in-package networkanalysis_msgs-msg)


;//! \htmlinclude wirelesslink.msg.html

(cl:defclass <wirelesslink> (roslisp-msg-protocol:ros-message)
  ((rssi
    :reader rssi
    :initarg :rssi
    :type cl:fixnum
    :initform 0)
   (lqi
    :reader lqi
    :initarg :lqi
    :type cl:fixnum
    :initform 0)
   (noise
    :reader noise
    :initarg :noise
    :type cl:fixnum
    :initform 0))
)

(cl:defclass wirelesslink (<wirelesslink>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wirelesslink>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wirelesslink)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name networkanalysis_msgs-msg:<wirelesslink> is deprecated: use networkanalysis_msgs-msg:wirelesslink instead.")))

(cl:ensure-generic-function 'rssi-val :lambda-list '(m))
(cl:defmethod rssi-val ((m <wirelesslink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-msg:rssi-val is deprecated.  Use networkanalysis_msgs-msg:rssi instead.")
  (rssi m))

(cl:ensure-generic-function 'lqi-val :lambda-list '(m))
(cl:defmethod lqi-val ((m <wirelesslink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-msg:lqi-val is deprecated.  Use networkanalysis_msgs-msg:lqi instead.")
  (lqi m))

(cl:ensure-generic-function 'noise-val :lambda-list '(m))
(cl:defmethod noise-val ((m <wirelesslink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-msg:noise-val is deprecated.  Use networkanalysis_msgs-msg:noise instead.")
  (noise m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wirelesslink>) ostream)
  "Serializes a message object of type '<wirelesslink>"
  (cl:let* ((signed (cl:slot-value msg 'rssi)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lqi)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'noise)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wirelesslink>) istream)
  "Deserializes a message object of type '<wirelesslink>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rssi) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lqi) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'noise) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wirelesslink>)))
  "Returns string type for a message object of type '<wirelesslink>"
  "networkanalysis_msgs/wirelesslink")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wirelesslink)))
  "Returns string type for a message object of type 'wirelesslink"
  "networkanalysis_msgs/wirelesslink")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wirelesslink>)))
  "Returns md5sum for a message object of type '<wirelesslink>"
  "457a5c2625e82fb0b67b1de1eee53435")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wirelesslink)))
  "Returns md5sum for a message object of type 'wirelesslink"
  "457a5c2625e82fb0b67b1de1eee53435")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wirelesslink>)))
  "Returns full string definition for message of type '<wirelesslink>"
  (cl:format cl:nil "#Received Signal Strength (RSS) in dBm~%int16 rssi~%~%#Link Quality of the wireless link in percentage~%int16 lqi~%~%#Noise floor of the wireless link in dBm (only very few NICs provide this correctly)~%int16 noise~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wirelesslink)))
  "Returns full string definition for message of type 'wirelesslink"
  (cl:format cl:nil "#Received Signal Strength (RSS) in dBm~%int16 rssi~%~%#Link Quality of the wireless link in percentage~%int16 lqi~%~%#Noise floor of the wireless link in dBm (only very few NICs provide this correctly)~%int16 noise~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wirelesslink>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wirelesslink>))
  "Converts a ROS message object to a list"
  (cl:list 'wirelesslink
    (cl:cons ':rssi (rssi msg))
    (cl:cons ':lqi (lqi msg))
    (cl:cons ':noise (noise msg))
))
