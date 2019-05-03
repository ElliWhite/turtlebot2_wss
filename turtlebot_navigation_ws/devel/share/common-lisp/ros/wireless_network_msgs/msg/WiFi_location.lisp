; Auto-generated. Do not edit!


(cl:in-package wireless_network_msgs-msg)


;//! \htmlinclude WiFi_location.msg.html

(cl:defclass <WiFi_location> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ssid
    :reader ssid
    :initarg :ssid
    :type cl:string
    :initform "")
   (rssi
    :reader rssi
    :initarg :rssi
    :type cl:float
    :initform 0.0)
   (xposition
    :reader xposition
    :initarg :xposition
    :type cl:float
    :initform 0.0)
   (yposition
    :reader yposition
    :initarg :yposition
    :type cl:float
    :initform 0.0)
   (zposition
    :reader zposition
    :initarg :zposition
    :type cl:float
    :initform 0.0)
   (orientation
    :reader orientation
    :initarg :orientation
    :type cl:float
    :initform 0.0))
)

(cl:defclass WiFi_location (<WiFi_location>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WiFi_location>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WiFi_location)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wireless_network_msgs-msg:<WiFi_location> is deprecated: use wireless_network_msgs-msg:WiFi_location instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WiFi_location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:header-val is deprecated.  Use wireless_network_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ssid-val :lambda-list '(m))
(cl:defmethod ssid-val ((m <WiFi_location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:ssid-val is deprecated.  Use wireless_network_msgs-msg:ssid instead.")
  (ssid m))

(cl:ensure-generic-function 'rssi-val :lambda-list '(m))
(cl:defmethod rssi-val ((m <WiFi_location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:rssi-val is deprecated.  Use wireless_network_msgs-msg:rssi instead.")
  (rssi m))

(cl:ensure-generic-function 'xposition-val :lambda-list '(m))
(cl:defmethod xposition-val ((m <WiFi_location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:xposition-val is deprecated.  Use wireless_network_msgs-msg:xposition instead.")
  (xposition m))

(cl:ensure-generic-function 'yposition-val :lambda-list '(m))
(cl:defmethod yposition-val ((m <WiFi_location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:yposition-val is deprecated.  Use wireless_network_msgs-msg:yposition instead.")
  (yposition m))

(cl:ensure-generic-function 'zposition-val :lambda-list '(m))
(cl:defmethod zposition-val ((m <WiFi_location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:zposition-val is deprecated.  Use wireless_network_msgs-msg:zposition instead.")
  (zposition m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <WiFi_location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:orientation-val is deprecated.  Use wireless_network_msgs-msg:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WiFi_location>) ostream)
  "Serializes a message object of type '<WiFi_location>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ssid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ssid))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rssi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xposition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yposition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zposition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WiFi_location>) istream)
  "Deserializes a message object of type '<WiFi_location>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ssid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ssid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rssi) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xposition) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yposition) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zposition) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WiFi_location>)))
  "Returns string type for a message object of type '<WiFi_location>"
  "wireless_network_msgs/WiFi_location")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WiFi_location)))
  "Returns string type for a message object of type 'WiFi_location"
  "wireless_network_msgs/WiFi_location")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WiFi_location>)))
  "Returns md5sum for a message object of type '<WiFi_location>"
  "94d5d3c9a19adc224442c55f1c86cff6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WiFi_location)))
  "Returns md5sum for a message object of type 'WiFi_location"
  "94d5d3c9a19adc224442c55f1c86cff6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WiFi_location>)))
  "Returns full string definition for message of type '<WiFi_location>"
  (cl:format cl:nil "Header header~%~%# SSID of the WiFi network~%string ssid ~%~%# Received Signal Strength (RSS) in dBm~%float32 rssi ~%~%# X Position of the robot~%float32 xposition~%~%# Y Positon of the robot~%float32 yposition~%~%# Z Position of the robot~%float32 zposition~%~%# Orientation of the robot (in radians) in robot frame~%float32 orientation~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WiFi_location)))
  "Returns full string definition for message of type 'WiFi_location"
  (cl:format cl:nil "Header header~%~%# SSID of the WiFi network~%string ssid ~%~%# Received Signal Strength (RSS) in dBm~%float32 rssi ~%~%# X Position of the robot~%float32 xposition~%~%# Y Positon of the robot~%float32 yposition~%~%# Z Position of the robot~%float32 zposition~%~%# Orientation of the robot (in radians) in robot frame~%float32 orientation~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WiFi_location>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'ssid))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WiFi_location>))
  "Converts a ROS message object to a list"
  (cl:list 'WiFi_location
    (cl:cons ':header (header msg))
    (cl:cons ':ssid (ssid msg))
    (cl:cons ':rssi (rssi msg))
    (cl:cons ':xposition (xposition msg))
    (cl:cons ':yposition (yposition msg))
    (cl:cons ':zposition (zposition msg))
    (cl:cons ':orientation (orientation msg))
))
