; Auto-generated. Do not edit!


(cl:in-package wireless_network_msgs-msg)


;//! \htmlinclude wirelesslink.msg.html

(cl:defclass <wirelesslink> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rssi
    :reader rssi
    :initarg :rssi
    :type cl:float
    :initform 0.0)
   (lqi
    :reader lqi
    :initarg :lqi
    :type cl:integer
    :initform 0)
   (noise
    :reader noise
    :initarg :noise
    :type cl:integer
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass wirelesslink (<wirelesslink>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wirelesslink>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wirelesslink)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wireless_network_msgs-msg:<wirelesslink> is deprecated: use wireless_network_msgs-msg:wirelesslink instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <wirelesslink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:header-val is deprecated.  Use wireless_network_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rssi-val :lambda-list '(m))
(cl:defmethod rssi-val ((m <wirelesslink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:rssi-val is deprecated.  Use wireless_network_msgs-msg:rssi instead.")
  (rssi m))

(cl:ensure-generic-function 'lqi-val :lambda-list '(m))
(cl:defmethod lqi-val ((m <wirelesslink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:lqi-val is deprecated.  Use wireless_network_msgs-msg:lqi instead.")
  (lqi m))

(cl:ensure-generic-function 'noise-val :lambda-list '(m))
(cl:defmethod noise-val ((m <wirelesslink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:noise-val is deprecated.  Use wireless_network_msgs-msg:noise instead.")
  (noise m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <wirelesslink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:id-val is deprecated.  Use wireless_network_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wirelesslink>) ostream)
  "Serializes a message object of type '<wirelesslink>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rssi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'lqi)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'noise)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wirelesslink>) istream)
  "Deserializes a message object of type '<wirelesslink>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rssi) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lqi) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'noise) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wirelesslink>)))
  "Returns string type for a message object of type '<wirelesslink>"
  "wireless_network_msgs/wirelesslink")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wirelesslink)))
  "Returns string type for a message object of type 'wirelesslink"
  "wireless_network_msgs/wirelesslink")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wirelesslink>)))
  "Returns md5sum for a message object of type '<wirelesslink>"
  "b66245439f6c497dfd55043e8bf4332e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wirelesslink)))
  "Returns md5sum for a message object of type 'wirelesslink"
  "b66245439f6c497dfd55043e8bf4332e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wirelesslink>)))
  "Returns full string definition for message of type '<wirelesslink>"
  (cl:format cl:nil "Header header~%~%#Received Signal Strength (RSS) in dBm~%float32 rssi~%~%#Link Quality of the wireless link in percentage~%int32 lqi~%~%#Noise floor of the wireless link in dBm (only very few NICs provide this correctly)~%int32 noise~%~%#Source id - either AP name, or SSID or the mac address~%string id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wirelesslink)))
  "Returns full string definition for message of type 'wirelesslink"
  (cl:format cl:nil "Header header~%~%#Received Signal Strength (RSS) in dBm~%float32 rssi~%~%#Link Quality of the wireless link in percentage~%int32 lqi~%~%#Noise floor of the wireless link in dBm (only very few NICs provide this correctly)~%int32 noise~%~%#Source id - either AP name, or SSID or the mac address~%string id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wirelesslink>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wirelesslink>))
  "Converts a ROS message object to a list"
  (cl:list 'wirelesslink
    (cl:cons ':header (header msg))
    (cl:cons ':rssi (rssi msg))
    (cl:cons ':lqi (lqi msg))
    (cl:cons ':noise (noise msg))
    (cl:cons ':id (id msg))
))
