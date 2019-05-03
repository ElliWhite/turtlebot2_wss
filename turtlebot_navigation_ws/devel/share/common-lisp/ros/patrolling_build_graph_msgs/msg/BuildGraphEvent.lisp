; Auto-generated. Do not edit!


(cl:in-package patrolling_build_graph_msgs-msg)


;//! \htmlinclude BuildGraphEvent.msg.html

(cl:defclass <BuildGraphEvent> (roslisp-msg-protocol:ros-message)
  ((event
    :reader event
    :initarg :event
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BuildGraphEvent (<BuildGraphEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BuildGraphEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BuildGraphEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name patrolling_build_graph_msgs-msg:<BuildGraphEvent> is deprecated: use patrolling_build_graph_msgs-msg:BuildGraphEvent instead.")))

(cl:ensure-generic-function 'event-val :lambda-list '(m))
(cl:defmethod event-val ((m <BuildGraphEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader patrolling_build_graph_msgs-msg:event-val is deprecated.  Use patrolling_build_graph_msgs-msg:event instead.")
  (event m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BuildGraphEvent>)))
    "Constants for message type '<BuildGraphEvent>"
  '((:START_PATROLLING . 0)
    (:GRAPH_BUILT . 1)
    (:STOP_PATROLLING . 2)
    (:GRAPH_RECEIVED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BuildGraphEvent)))
    "Constants for message type 'BuildGraphEvent"
  '((:START_PATROLLING . 0)
    (:GRAPH_BUILT . 1)
    (:STOP_PATROLLING . 2)
    (:GRAPH_RECEIVED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BuildGraphEvent>) ostream)
  "Serializes a message object of type '<BuildGraphEvent>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BuildGraphEvent>) istream)
  "Deserializes a message object of type '<BuildGraphEvent>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BuildGraphEvent>)))
  "Returns string type for a message object of type '<BuildGraphEvent>"
  "patrolling_build_graph_msgs/BuildGraphEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuildGraphEvent)))
  "Returns string type for a message object of type 'BuildGraphEvent"
  "patrolling_build_graph_msgs/BuildGraphEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BuildGraphEvent>)))
  "Returns md5sum for a message object of type '<BuildGraphEvent>"
  "3da7b66974d2acb49f04c8e9d05dd91f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BuildGraphEvent)))
  "Returns md5sum for a message object of type 'BuildGraphEvent"
  "3da7b66974d2acb49f04c8e9d05dd91f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BuildGraphEvent>)))
  "Returns full string definition for message of type '<BuildGraphEvent>"
  (cl:format cl:nil "uint8 START_PATROLLING=0  # waiting for graph ~%uint8 GRAPH_BUILT=1       # graph built on the same computer ~%uint8 STOP_PATROLLING=2    ~%uint8 GRAPH_RECEIVED=3    # graph received through message ~%uint8 event~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BuildGraphEvent)))
  "Returns full string definition for message of type 'BuildGraphEvent"
  (cl:format cl:nil "uint8 START_PATROLLING=0  # waiting for graph ~%uint8 GRAPH_BUILT=1       # graph built on the same computer ~%uint8 STOP_PATROLLING=2    ~%uint8 GRAPH_RECEIVED=3    # graph received through message ~%uint8 event~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BuildGraphEvent>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BuildGraphEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'BuildGraphEvent
    (cl:cons ':event (event msg))
))
