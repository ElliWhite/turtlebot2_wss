; Auto-generated. Do not edit!


(cl:in-package wireless_network_msgs-msg)


;//! \htmlinclude linkutilization.msg.html

(cl:defclass <linkutilization> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tcp_tx_segments
    :reader tcp_tx_segments
    :initarg :tcp_tx_segments
    :type cl:integer
    :initform 0)
   (tcp_rx_segments
    :reader tcp_rx_segments
    :initarg :tcp_rx_segments
    :type cl:integer
    :initform 0)
   (tcp_tx_segmentrate
    :reader tcp_tx_segmentrate
    :initarg :tcp_tx_segmentrate
    :type cl:float
    :initform 0.0)
   (tcp_rx_segmentrate
    :reader tcp_rx_segmentrate
    :initarg :tcp_rx_segmentrate
    :type cl:float
    :initform 0.0)
   (udp_tx_datagrams
    :reader udp_tx_datagrams
    :initarg :udp_tx_datagrams
    :type cl:integer
    :initform 0)
   (udp_rx_datagrams
    :reader udp_rx_datagrams
    :initarg :udp_rx_datagrams
    :type cl:integer
    :initform 0)
   (udp_tx_datagramrate
    :reader udp_tx_datagramrate
    :initarg :udp_tx_datagramrate
    :type cl:float
    :initform 0.0)
   (udp_rx_datagramrate
    :reader udp_rx_datagramrate
    :initarg :udp_rx_datagramrate
    :type cl:float
    :initform 0.0)
   (total_tx_packets
    :reader total_tx_packets
    :initarg :total_tx_packets
    :type cl:integer
    :initform 0)
   (total_tx_bytes
    :reader total_tx_bytes
    :initarg :total_tx_bytes
    :type cl:integer
    :initform 0)
   (total_rx_packets
    :reader total_rx_packets
    :initarg :total_rx_packets
    :type cl:integer
    :initform 0)
   (total_rx_bytes
    :reader total_rx_bytes
    :initarg :total_rx_bytes
    :type cl:integer
    :initform 0)
   (total_tx_mbps
    :reader total_tx_mbps
    :initarg :total_tx_mbps
    :type cl:float
    :initform 0.0)
   (total_rx_mbps
    :reader total_rx_mbps
    :initarg :total_rx_mbps
    :type cl:float
    :initform 0.0))
)

(cl:defclass linkutilization (<linkutilization>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <linkutilization>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'linkutilization)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wireless_network_msgs-msg:<linkutilization> is deprecated: use wireless_network_msgs-msg:linkutilization instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <linkutilization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:header-val is deprecated.  Use wireless_network_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tcp_tx_segments-val :lambda-list '(m))
(cl:defmethod tcp_tx_segments-val ((m <linkutilization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:tcp_tx_segments-val is deprecated.  Use wireless_network_msgs-msg:tcp_tx_segments instead.")
  (tcp_tx_segments m))

(cl:ensure-generic-function 'tcp_rx_segments-val :lambda-list '(m))
(cl:defmethod tcp_rx_segments-val ((m <linkutilization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:tcp_rx_segments-val is deprecated.  Use wireless_network_msgs-msg:tcp_rx_segments instead.")
  (tcp_rx_segments m))

(cl:ensure-generic-function 'tcp_tx_segmentrate-val :lambda-list '(m))
(cl:defmethod tcp_tx_segmentrate-val ((m <linkutilization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:tcp_tx_segmentrate-val is deprecated.  Use wireless_network_msgs-msg:tcp_tx_segmentrate instead.")
  (tcp_tx_segmentrate m))

(cl:ensure-generic-function 'tcp_rx_segmentrate-val :lambda-list '(m))
(cl:defmethod tcp_rx_segmentrate-val ((m <linkutilization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:tcp_rx_segmentrate-val is deprecated.  Use wireless_network_msgs-msg:tcp_rx_segmentrate instead.")
  (tcp_rx_segmentrate m))

(cl:ensure-generic-function 'udp_tx_datagrams-val :lambda-list '(m))
(cl:defmethod udp_tx_datagrams-val ((m <linkutilization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:udp_tx_datagrams-val is deprecated.  Use wireless_network_msgs-msg:udp_tx_datagrams instead.")
  (udp_tx_datagrams m))

(cl:ensure-generic-function 'udp_rx_datagrams-val :lambda-list '(m))
(cl:defmethod udp_rx_datagrams-val ((m <linkutilization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:udp_rx_datagrams-val is deprecated.  Use wireless_network_msgs-msg:udp_rx_datagrams instead.")
  (udp_rx_datagrams m))

(cl:ensure-generic-function 'udp_tx_datagramrate-val :lambda-list '(m))
(cl:defmethod udp_tx_datagramrate-val ((m <linkutilization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:udp_tx_datagramrate-val is deprecated.  Use wireless_network_msgs-msg:udp_tx_datagramrate instead.")
  (udp_tx_datagramrate m))

(cl:ensure-generic-function 'udp_rx_datagramrate-val :lambda-list '(m))
(cl:defmethod udp_rx_datagramrate-val ((m <linkutilization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:udp_rx_datagramrate-val is deprecated.  Use wireless_network_msgs-msg:udp_rx_datagramrate instead.")
  (udp_rx_datagramrate m))

(cl:ensure-generic-function 'total_tx_packets-val :lambda-list '(m))
(cl:defmethod total_tx_packets-val ((m <linkutilization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:total_tx_packets-val is deprecated.  Use wireless_network_msgs-msg:total_tx_packets instead.")
  (total_tx_packets m))

(cl:ensure-generic-function 'total_tx_bytes-val :lambda-list '(m))
(cl:defmethod total_tx_bytes-val ((m <linkutilization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:total_tx_bytes-val is deprecated.  Use wireless_network_msgs-msg:total_tx_bytes instead.")
  (total_tx_bytes m))

(cl:ensure-generic-function 'total_rx_packets-val :lambda-list '(m))
(cl:defmethod total_rx_packets-val ((m <linkutilization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:total_rx_packets-val is deprecated.  Use wireless_network_msgs-msg:total_rx_packets instead.")
  (total_rx_packets m))

(cl:ensure-generic-function 'total_rx_bytes-val :lambda-list '(m))
(cl:defmethod total_rx_bytes-val ((m <linkutilization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:total_rx_bytes-val is deprecated.  Use wireless_network_msgs-msg:total_rx_bytes instead.")
  (total_rx_bytes m))

(cl:ensure-generic-function 'total_tx_mbps-val :lambda-list '(m))
(cl:defmethod total_tx_mbps-val ((m <linkutilization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:total_tx_mbps-val is deprecated.  Use wireless_network_msgs-msg:total_tx_mbps instead.")
  (total_tx_mbps m))

(cl:ensure-generic-function 'total_rx_mbps-val :lambda-list '(m))
(cl:defmethod total_rx_mbps-val ((m <linkutilization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wireless_network_msgs-msg:total_rx_mbps-val is deprecated.  Use wireless_network_msgs-msg:total_rx_mbps instead.")
  (total_rx_mbps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <linkutilization>) ostream)
  "Serializes a message object of type '<linkutilization>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'tcp_tx_segments)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tcp_rx_segments)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tcp_tx_segmentrate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tcp_rx_segmentrate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'udp_tx_datagrams)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'udp_rx_datagrams)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'udp_tx_datagramrate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'udp_rx_datagramrate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'total_tx_packets)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'total_tx_bytes)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'total_rx_packets)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'total_rx_bytes)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'total_tx_mbps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'total_rx_mbps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <linkutilization>) istream)
  "Deserializes a message object of type '<linkutilization>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tcp_tx_segments) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tcp_rx_segments) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tcp_tx_segmentrate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tcp_rx_segmentrate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'udp_tx_datagrams) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'udp_rx_datagrams) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'udp_tx_datagramrate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'udp_rx_datagramrate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'total_tx_packets) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'total_tx_bytes) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'total_rx_packets) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'total_rx_bytes) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_tx_mbps) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_rx_mbps) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<linkutilization>)))
  "Returns string type for a message object of type '<linkutilization>"
  "wireless_network_msgs/linkutilization")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'linkutilization)))
  "Returns string type for a message object of type 'linkutilization"
  "wireless_network_msgs/linkutilization")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<linkutilization>)))
  "Returns md5sum for a message object of type '<linkutilization>"
  "c1b31e7f399b226658f6062ec5c03a38")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'linkutilization)))
  "Returns md5sum for a message object of type 'linkutilization"
  "c1b31e7f399b226658f6062ec5c03a38")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<linkutilization>)))
  "Returns full string definition for message of type '<linkutilization>"
  (cl:format cl:nil "Header header~%#TCP related information on link utilization for a given (NIC) interface~%int64 tcp_tx_segments~%int64 tcp_rx_segments~%float64 tcp_tx_segmentrate~%float64 tcp_rx_segmentrate~%~%#UDP related information on link utilization for a given (NIC) interface~%int64 udp_tx_datagrams~%int64 udp_rx_datagrams~%float64 udp_tx_datagramrate~%float64 udp_rx_datagramrate~%~%#Total (IP: TCP + UDP) link utilization for a given (NIC) interface~%int64 total_tx_packets~%int64 total_tx_bytes~%int64 total_rx_packets~%int64 total_rx_bytes~%float64 total_tx_mbps~%float64 total_rx_mbps~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'linkutilization)))
  "Returns full string definition for message of type 'linkutilization"
  (cl:format cl:nil "Header header~%#TCP related information on link utilization for a given (NIC) interface~%int64 tcp_tx_segments~%int64 tcp_rx_segments~%float64 tcp_tx_segmentrate~%float64 tcp_rx_segmentrate~%~%#UDP related information on link utilization for a given (NIC) interface~%int64 udp_tx_datagrams~%int64 udp_rx_datagrams~%float64 udp_tx_datagramrate~%float64 udp_rx_datagramrate~%~%#Total (IP: TCP + UDP) link utilization for a given (NIC) interface~%int64 total_tx_packets~%int64 total_tx_bytes~%int64 total_rx_packets~%int64 total_rx_bytes~%float64 total_tx_mbps~%float64 total_rx_mbps~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <linkutilization>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <linkutilization>))
  "Converts a ROS message object to a list"
  (cl:list 'linkutilization
    (cl:cons ':header (header msg))
    (cl:cons ':tcp_tx_segments (tcp_tx_segments msg))
    (cl:cons ':tcp_rx_segments (tcp_rx_segments msg))
    (cl:cons ':tcp_tx_segmentrate (tcp_tx_segmentrate msg))
    (cl:cons ':tcp_rx_segmentrate (tcp_rx_segmentrate msg))
    (cl:cons ':udp_tx_datagrams (udp_tx_datagrams msg))
    (cl:cons ':udp_rx_datagrams (udp_rx_datagrams msg))
    (cl:cons ':udp_tx_datagramrate (udp_tx_datagramrate msg))
    (cl:cons ':udp_rx_datagramrate (udp_rx_datagramrate msg))
    (cl:cons ':total_tx_packets (total_tx_packets msg))
    (cl:cons ':total_tx_bytes (total_tx_bytes msg))
    (cl:cons ':total_rx_packets (total_rx_packets msg))
    (cl:cons ':total_rx_bytes (total_rx_bytes msg))
    (cl:cons ':total_tx_mbps (total_tx_mbps msg))
    (cl:cons ':total_rx_mbps (total_rx_mbps msg))
))
