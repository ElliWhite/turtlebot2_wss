; Auto-generated. Do not edit!


(cl:in-package networkanalysis_msgs-msg)


;//! \htmlinclude networkerrors.msg.html

(cl:defclass <networkerrors> (roslisp-msg-protocol:ros-message)
  ((retransmits
    :reader retransmits
    :initarg :retransmits
    :type cl:integer
    :initform 0)
   (badsegments
    :reader badsegments
    :initarg :badsegments
    :type cl:integer
    :initform 0)
   (udperrors
    :reader udperrors
    :initarg :udperrors
    :type cl:integer
    :initform 0)
   (tx_retires
    :reader tx_retires
    :initarg :tx_retires
    :type cl:integer
    :initform 0)
   (rx_dropped
    :reader rx_dropped
    :initarg :rx_dropped
    :type cl:integer
    :initform 0)
   (nic_tx_errors
    :reader nic_tx_errors
    :initarg :nic_tx_errors
    :type cl:integer
    :initform 0)
   (nic_rx_errors
    :reader nic_rx_errors
    :initarg :nic_rx_errors
    :type cl:integer
    :initform 0)
   (nic_tx_dropped
    :reader nic_tx_dropped
    :initarg :nic_tx_dropped
    :type cl:integer
    :initform 0)
   (nic_rx_dropped
    :reader nic_rx_dropped
    :initarg :nic_rx_dropped
    :type cl:integer
    :initform 0))
)

(cl:defclass networkerrors (<networkerrors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <networkerrors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'networkerrors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name networkanalysis_msgs-msg:<networkerrors> is deprecated: use networkanalysis_msgs-msg:networkerrors instead.")))

(cl:ensure-generic-function 'retransmits-val :lambda-list '(m))
(cl:defmethod retransmits-val ((m <networkerrors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-msg:retransmits-val is deprecated.  Use networkanalysis_msgs-msg:retransmits instead.")
  (retransmits m))

(cl:ensure-generic-function 'badsegments-val :lambda-list '(m))
(cl:defmethod badsegments-val ((m <networkerrors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-msg:badsegments-val is deprecated.  Use networkanalysis_msgs-msg:badsegments instead.")
  (badsegments m))

(cl:ensure-generic-function 'udperrors-val :lambda-list '(m))
(cl:defmethod udperrors-val ((m <networkerrors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-msg:udperrors-val is deprecated.  Use networkanalysis_msgs-msg:udperrors instead.")
  (udperrors m))

(cl:ensure-generic-function 'tx_retires-val :lambda-list '(m))
(cl:defmethod tx_retires-val ((m <networkerrors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-msg:tx_retires-val is deprecated.  Use networkanalysis_msgs-msg:tx_retires instead.")
  (tx_retires m))

(cl:ensure-generic-function 'rx_dropped-val :lambda-list '(m))
(cl:defmethod rx_dropped-val ((m <networkerrors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-msg:rx_dropped-val is deprecated.  Use networkanalysis_msgs-msg:rx_dropped instead.")
  (rx_dropped m))

(cl:ensure-generic-function 'nic_tx_errors-val :lambda-list '(m))
(cl:defmethod nic_tx_errors-val ((m <networkerrors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-msg:nic_tx_errors-val is deprecated.  Use networkanalysis_msgs-msg:nic_tx_errors instead.")
  (nic_tx_errors m))

(cl:ensure-generic-function 'nic_rx_errors-val :lambda-list '(m))
(cl:defmethod nic_rx_errors-val ((m <networkerrors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-msg:nic_rx_errors-val is deprecated.  Use networkanalysis_msgs-msg:nic_rx_errors instead.")
  (nic_rx_errors m))

(cl:ensure-generic-function 'nic_tx_dropped-val :lambda-list '(m))
(cl:defmethod nic_tx_dropped-val ((m <networkerrors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-msg:nic_tx_dropped-val is deprecated.  Use networkanalysis_msgs-msg:nic_tx_dropped instead.")
  (nic_tx_dropped m))

(cl:ensure-generic-function 'nic_rx_dropped-val :lambda-list '(m))
(cl:defmethod nic_rx_dropped-val ((m <networkerrors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader networkanalysis_msgs-msg:nic_rx_dropped-val is deprecated.  Use networkanalysis_msgs-msg:nic_rx_dropped instead.")
  (nic_rx_dropped m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <networkerrors>) ostream)
  "Serializes a message object of type '<networkerrors>"
  (cl:let* ((signed (cl:slot-value msg 'retransmits)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'badsegments)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'udperrors)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tx_retires)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rx_dropped)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'nic_tx_errors)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'nic_rx_errors)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'nic_tx_dropped)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'nic_rx_dropped)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <networkerrors>) istream)
  "Deserializes a message object of type '<networkerrors>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'retransmits) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'badsegments) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'udperrors) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tx_retires) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rx_dropped) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nic_tx_errors) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nic_rx_errors) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nic_tx_dropped) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nic_rx_dropped) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<networkerrors>)))
  "Returns string type for a message object of type '<networkerrors>"
  "networkanalysis_msgs/networkerrors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'networkerrors)))
  "Returns string type for a message object of type 'networkerrors"
  "networkanalysis_msgs/networkerrors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<networkerrors>)))
  "Returns md5sum for a message object of type '<networkerrors>"
  "00505f88cd05dc9219c740b79985fc84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'networkerrors)))
  "Returns md5sum for a message object of type 'networkerrors"
  "00505f88cd05dc9219c740b79985fc84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<networkerrors>)))
  "Returns full string definition for message of type '<networkerrors>"
  (cl:format cl:nil "#segment errors at (tcp) protocol level~%int64 retransmits~%int64 badsegments~%~%#errors in udp transmission~%int64 udperrors~%~%#system level (MAC layer) errors~%int64 tx_retires~%int64 rx_dropped~%~%~%#interface level (NIC statistics) errors~%int64 nic_tx_errors~%int64 nic_rx_errors~%int64 nic_tx_dropped~%int64 nic_rx_dropped~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'networkerrors)))
  "Returns full string definition for message of type 'networkerrors"
  (cl:format cl:nil "#segment errors at (tcp) protocol level~%int64 retransmits~%int64 badsegments~%~%#errors in udp transmission~%int64 udperrors~%~%#system level (MAC layer) errors~%int64 tx_retires~%int64 rx_dropped~%~%~%#interface level (NIC statistics) errors~%int64 nic_tx_errors~%int64 nic_rx_errors~%int64 nic_tx_dropped~%int64 nic_rx_dropped~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <networkerrors>))
  (cl:+ 0
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <networkerrors>))
  "Converts a ROS message object to a list"
  (cl:list 'networkerrors
    (cl:cons ':retransmits (retransmits msg))
    (cl:cons ':badsegments (badsegments msg))
    (cl:cons ':udperrors (udperrors msg))
    (cl:cons ':tx_retires (tx_retires msg))
    (cl:cons ':rx_dropped (rx_dropped msg))
    (cl:cons ':nic_tx_errors (nic_tx_errors msg))
    (cl:cons ':nic_rx_errors (nic_rx_errors msg))
    (cl:cons ':nic_tx_dropped (nic_tx_dropped msg))
    (cl:cons ':nic_rx_dropped (nic_rx_dropped msg))
))
