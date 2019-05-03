;; Auto-generated. Do not edit!


(when (boundp 'robot_trajectory_saver_msgs::CheckPath)
  (if (not (find-package "ROBOT_TRAJECTORY_SAVER_MSGS"))
    (make-package "ROBOT_TRAJECTORY_SAVER_MSGS"))
  (shadow 'CheckPath (find-package "ROBOT_TRAJECTORY_SAVER_MSGS")))
(unless (find-package "ROBOT_TRAJECTORY_SAVER_MSGS::CHECKPATH")
  (make-package "ROBOT_TRAJECTORY_SAVER_MSGS::CHECKPATH"))
(unless (find-package "ROBOT_TRAJECTORY_SAVER_MSGS::CHECKPATHREQUEST")
  (make-package "ROBOT_TRAJECTORY_SAVER_MSGS::CHECKPATHREQUEST"))
(unless (find-package "ROBOT_TRAJECTORY_SAVER_MSGS::CHECKPATHRESPONSE")
  (make-package "ROBOT_TRAJECTORY_SAVER_MSGS::CHECKPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))




(defclass robot_trajectory_saver_msgs::CheckPathRequest
  :super ros::object
  :slots (_point_of_interest _source_node_id _destination_node_id ))

(defmethod robot_trajectory_saver_msgs::CheckPathRequest
  (:init
   (&key
    ((:point_of_interest __point_of_interest) (instance nav_msgs::Path :init))
    ((:source_node_id __source_node_id) 0)
    ((:destination_node_id __destination_node_id) 0)
    )
   (send-super :init)
   (setq _point_of_interest __point_of_interest)
   (setq _source_node_id (round __source_node_id))
   (setq _destination_node_id (round __destination_node_id))
   self)
  (:point_of_interest
   (&rest __point_of_interest)
   (if (keywordp (car __point_of_interest))
       (send* _point_of_interest __point_of_interest)
     (progn
       (if __point_of_interest (setq _point_of_interest (car __point_of_interest)))
       _point_of_interest)))
  (:source_node_id
   (&optional __source_node_id)
   (if __source_node_id (setq _source_node_id __source_node_id)) _source_node_id)
  (:destination_node_id
   (&optional __destination_node_id)
   (if __destination_node_id (setq _destination_node_id __destination_node_id)) _destination_node_id)
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _point_of_interest
    (send _point_of_interest :serialization-length)
    ;; uint64 _source_node_id
    8
    ;; uint64 _destination_node_id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _point_of_interest
       (send _point_of_interest :serialize s)
     ;; uint64 _source_node_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _source_node_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _source_node_id) (= (length (_source_node_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_source_node_id . bv) 0) 0) s)
              (write-long (ash (elt (_source_node_id . bv) 1) -1) s))
             ((and (class _source_node_id) (= (length (_source_node_id . bv)) 1)) ;; big1
              (write-long (elt (_source_node_id . bv) 0) s)
              (write-long (if (>= _source_node_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _source_node_id s)(write-long (if (>= _source_node_id 0) 0 #xffffffff) s)))
     ;; uint64 _destination_node_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _destination_node_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _destination_node_id) (= (length (_destination_node_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_destination_node_id . bv) 0) 0) s)
              (write-long (ash (elt (_destination_node_id . bv) 1) -1) s))
             ((and (class _destination_node_id) (= (length (_destination_node_id . bv)) 1)) ;; big1
              (write-long (elt (_destination_node_id . bv) 0) s)
              (write-long (if (>= _destination_node_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _destination_node_id s)(write-long (if (>= _destination_node_id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _point_of_interest
     (send _point_of_interest :deserialize buf ptr-) (incf ptr- (send _point_of_interest :serialization-length))
   ;; uint64 _source_node_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _source_node_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _source_node_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _destination_node_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _destination_node_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _destination_node_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass robot_trajectory_saver_msgs::CheckPathResponse
  :super ros::object
  :slots (_result _path_cost ))

(defmethod robot_trajectory_saver_msgs::CheckPathResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:path_cost __path_cost) 0)
    )
   (send-super :init)
   (setq _result __result)
   (setq _path_cost (round __path_cost))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:path_cost
   (&optional __path_cost)
   (if __path_cost (setq _path_cost __path_cost)) _path_cost)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; uint64 _path_cost
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; uint64 _path_cost
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _path_cost (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _path_cost) (= (length (_path_cost . bv)) 2)) ;; bignum
              (write-long (ash (elt (_path_cost . bv) 0) 0) s)
              (write-long (ash (elt (_path_cost . bv) 1) -1) s))
             ((and (class _path_cost) (= (length (_path_cost . bv)) 1)) ;; big1
              (write-long (elt (_path_cost . bv) 0) s)
              (write-long (if (>= _path_cost 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _path_cost s)(write-long (if (>= _path_cost 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint64 _path_cost
     
#+(or :alpha :irix6 :x86_64)
      (setf _path_cost (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _path_cost (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass robot_trajectory_saver_msgs::CheckPath
  :super ros::object
  :slots ())

(setf (get robot_trajectory_saver_msgs::CheckPath :md5sum-) "df614bdf15b72df4d907293da55a23e0")
(setf (get robot_trajectory_saver_msgs::CheckPath :datatype-) "robot_trajectory_saver_msgs/CheckPath")
(setf (get robot_trajectory_saver_msgs::CheckPath :request) robot_trajectory_saver_msgs::CheckPathRequest)
(setf (get robot_trajectory_saver_msgs::CheckPath :response) robot_trajectory_saver_msgs::CheckPathResponse)

(defmethod robot_trajectory_saver_msgs::CheckPathRequest
  (:response () (instance robot_trajectory_saver_msgs::CheckPathResponse :init)))

(setf (get robot_trajectory_saver_msgs::CheckPathRequest :md5sum-) "df614bdf15b72df4d907293da55a23e0")
(setf (get robot_trajectory_saver_msgs::CheckPathRequest :datatype-) "robot_trajectory_saver_msgs/CheckPathRequest")
(setf (get robot_trajectory_saver_msgs::CheckPathRequest :definition-)
      "nav_msgs/Path point_of_interest
uint64 source_node_id
uint64 destination_node_id

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool result
uint64 path_cost

")

(setf (get robot_trajectory_saver_msgs::CheckPathResponse :md5sum-) "df614bdf15b72df4d907293da55a23e0")
(setf (get robot_trajectory_saver_msgs::CheckPathResponse :datatype-) "robot_trajectory_saver_msgs/CheckPathResponse")
(setf (get robot_trajectory_saver_msgs::CheckPathResponse :definition-)
      "nav_msgs/Path point_of_interest
uint64 source_node_id
uint64 destination_node_id

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool result
uint64 path_cost

")



(provide :robot_trajectory_saver_msgs/CheckPath "df614bdf15b72df4d907293da55a23e0")


