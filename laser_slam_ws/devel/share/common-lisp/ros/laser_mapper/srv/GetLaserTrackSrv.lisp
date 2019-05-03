; Auto-generated. Do not edit!


(cl:in-package laser_mapper-srv)


;//! \htmlinclude GetLaserTrackSrv-request.msg.html

(cl:defclass <GetLaserTrackSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetLaserTrackSrv-request (<GetLaserTrackSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLaserTrackSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLaserTrackSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_mapper-srv:<GetLaserTrackSrv-request> is deprecated: use laser_mapper-srv:GetLaserTrackSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLaserTrackSrv-request>) ostream)
  "Serializes a message object of type '<GetLaserTrackSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLaserTrackSrv-request>) istream)
  "Deserializes a message object of type '<GetLaserTrackSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLaserTrackSrv-request>)))
  "Returns string type for a service object of type '<GetLaserTrackSrv-request>"
  "laser_mapper/GetLaserTrackSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLaserTrackSrv-request)))
  "Returns string type for a service object of type 'GetLaserTrackSrv-request"
  "laser_mapper/GetLaserTrackSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLaserTrackSrv-request>)))
  "Returns md5sum for a message object of type '<GetLaserTrackSrv-request>"
  "f8c9b713ee42e20fb731eb3adffef133")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLaserTrackSrv-request)))
  "Returns md5sum for a message object of type 'GetLaserTrackSrv-request"
  "f8c9b713ee42e20fb731eb3adffef133")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLaserTrackSrv-request>)))
  "Returns full string definition for message of type '<GetLaserTrackSrv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLaserTrackSrv-request)))
  "Returns full string definition for message of type 'GetLaserTrackSrv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLaserTrackSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLaserTrackSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLaserTrackSrv-request
))
;//! \htmlinclude GetLaserTrackSrv-response.msg.html

(cl:defclass <GetLaserTrackSrv-response> (roslisp-msg-protocol:ros-message)
  ((laser_scans
    :reader laser_scans
    :initarg :laser_scans
    :type (cl:vector sensor_msgs-msg:PointCloud2)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:PointCloud2 :initial-element (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
   (transforms
    :reader transforms
    :initarg :transforms
    :type (cl:vector geometry_msgs-msg:TransformStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:TransformStamped :initial-element (cl:make-instance 'geometry_msgs-msg:TransformStamped))))
)

(cl:defclass GetLaserTrackSrv-response (<GetLaserTrackSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLaserTrackSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLaserTrackSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_mapper-srv:<GetLaserTrackSrv-response> is deprecated: use laser_mapper-srv:GetLaserTrackSrv-response instead.")))

(cl:ensure-generic-function 'laser_scans-val :lambda-list '(m))
(cl:defmethod laser_scans-val ((m <GetLaserTrackSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_mapper-srv:laser_scans-val is deprecated.  Use laser_mapper-srv:laser_scans instead.")
  (laser_scans m))

(cl:ensure-generic-function 'transforms-val :lambda-list '(m))
(cl:defmethod transforms-val ((m <GetLaserTrackSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_mapper-srv:transforms-val is deprecated.  Use laser_mapper-srv:transforms instead.")
  (transforms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLaserTrackSrv-response>) ostream)
  "Serializes a message object of type '<GetLaserTrackSrv-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'laser_scans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'laser_scans))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'transforms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'transforms))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLaserTrackSrv-response>) istream)
  "Deserializes a message object of type '<GetLaserTrackSrv-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'laser_scans) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'laser_scans)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:PointCloud2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'transforms) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'transforms)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:TransformStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLaserTrackSrv-response>)))
  "Returns string type for a service object of type '<GetLaserTrackSrv-response>"
  "laser_mapper/GetLaserTrackSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLaserTrackSrv-response)))
  "Returns string type for a service object of type 'GetLaserTrackSrv-response"
  "laser_mapper/GetLaserTrackSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLaserTrackSrv-response>)))
  "Returns md5sum for a message object of type '<GetLaserTrackSrv-response>"
  "f8c9b713ee42e20fb731eb3adffef133")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLaserTrackSrv-response)))
  "Returns md5sum for a message object of type 'GetLaserTrackSrv-response"
  "f8c9b713ee42e20fb731eb3adffef133")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLaserTrackSrv-response>)))
  "Returns full string definition for message of type '<GetLaserTrackSrv-response>"
  (cl:format cl:nil "~%sensor_msgs/PointCloud2[] laser_scans~%~%geometry_msgs/TransformStamped[] transforms~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLaserTrackSrv-response)))
  "Returns full string definition for message of type 'GetLaserTrackSrv-response"
  (cl:format cl:nil "~%sensor_msgs/PointCloud2[] laser_scans~%~%geometry_msgs/TransformStamped[] transforms~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLaserTrackSrv-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'laser_scans) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'transforms) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLaserTrackSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLaserTrackSrv-response
    (cl:cons ':laser_scans (laser_scans msg))
    (cl:cons ':transforms (transforms msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLaserTrackSrv)))
  'GetLaserTrackSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLaserTrackSrv)))
  'GetLaserTrackSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLaserTrackSrv)))
  "Returns string type for a service object of type '<GetLaserTrackSrv>"
  "laser_mapper/GetLaserTrackSrv")