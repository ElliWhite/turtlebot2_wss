;; Auto-generated. Do not edit!


(when (boundp 'laser_mapper::LoopClosure)
  (if (not (find-package "LASER_MAPPER"))
    (make-package "LASER_MAPPER"))
  (shadow 'LoopClosure (find-package "LASER_MAPPER")))
(unless (find-package "LASER_MAPPER::LOOPCLOSURE")
  (make-package "LASER_MAPPER::LOOPCLOSURE"))
(unless (find-package "LASER_MAPPER::LOOPCLOSUREREQUEST")
  (make-package "LASER_MAPPER::LOOPCLOSUREREQUEST"))
(unless (find-package "LASER_MAPPER::LOOPCLOSURERESPONSE")
  (make-package "LASER_MAPPER::LOOPCLOSURERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass laser_mapper::LoopClosureRequest
  :super ros::object
  :slots (_time_a _time_b _transform_a_b _collector_times ))

(defmethod laser_mapper::LoopClosureRequest
  (:init
   (&key
    ((:time_a __time_a) 0)
    ((:time_b __time_b) 0)
    ((:transform_a_b __transform_a_b) (instance geometry_msgs::Transform :init))
    ((:collector_times __collector_times) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _time_a (round __time_a))
   (setq _time_b (round __time_b))
   (setq _transform_a_b __transform_a_b)
   (setq _collector_times __collector_times)
   self)
  (:time_a
   (&optional __time_a)
   (if __time_a (setq _time_a __time_a)) _time_a)
  (:time_b
   (&optional __time_b)
   (if __time_b (setq _time_b __time_b)) _time_b)
  (:transform_a_b
   (&rest __transform_a_b)
   (if (keywordp (car __transform_a_b))
       (send* _transform_a_b __transform_a_b)
     (progn
       (if __transform_a_b (setq _transform_a_b (car __transform_a_b)))
       _transform_a_b)))
  (:collector_times
   (&optional __collector_times)
   (if __collector_times (setq _collector_times __collector_times)) _collector_times)
  (:serialization-length
   ()
   (+
    ;; int64 _time_a
    8
    ;; int64 _time_b
    8
    ;; geometry_msgs/Transform _transform_a_b
    (send _transform_a_b :serialization-length)
    ;; int64[] _collector_times
    (* 8    (length _collector_times)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _time_a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time_a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time_a) (= (length (_time_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time_a . bv) 0) 0) s)
              (write-long (ash (elt (_time_a . bv) 1) -1) s))
             ((and (class _time_a) (= (length (_time_a . bv)) 1)) ;; big1
              (write-long (elt (_time_a . bv) 0) s)
              (write-long (if (>= _time_a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time_a s)(write-long (if (>= _time_a 0) 0 #xffffffff) s)))
     ;; int64 _time_b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time_b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time_b) (= (length (_time_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time_b . bv) 0) 0) s)
              (write-long (ash (elt (_time_b . bv) 1) -1) s))
             ((and (class _time_b) (= (length (_time_b . bv)) 1)) ;; big1
              (write-long (elt (_time_b . bv) 0) s)
              (write-long (if (>= _time_b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time_b s)(write-long (if (>= _time_b 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Transform _transform_a_b
       (send _transform_a_b :serialize s)
     ;; int64[] _collector_times
     (write-long (length _collector_times) s)
     (dotimes (i (length _collector_times))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _collector_times i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _collector_times i)) (= (length ((elt _collector_times i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _collector_times i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _collector_times i) . bv) 1) -1) s))
             ((and (class (elt _collector_times i)) (= (length ((elt _collector_times i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _collector_times i) . bv) 0) s)
              (write-long (if (>= (elt _collector_times i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _collector_times i) s)(write-long (if (>= (elt _collector_times i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _time_a
#+(or :alpha :irix6 :x86_64)
      (setf _time_a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time_a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _time_b
#+(or :alpha :irix6 :x86_64)
      (setf _time_b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time_b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Transform _transform_a_b
     (send _transform_a_b :deserialize buf ptr-) (incf ptr- (send _transform_a_b :serialization-length))
   ;; int64[] _collector_times
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _collector_times (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _collector_times i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _collector_times i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(defclass laser_mapper::LoopClosureResponse
  :super ros::object
  :slots (_transforms ))

(defmethod laser_mapper::LoopClosureResponse
  (:init
   (&key
    ((:transforms __transforms) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Transform :init) r)) r))
    )
   (send-super :init)
   (setq _transforms __transforms)
   self)
  (:transforms
   (&rest __transforms)
   (if (keywordp (car __transforms))
       (send* _transforms __transforms)
     (progn
       (if __transforms (setq _transforms (car __transforms)))
       _transforms)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Transform[] _transforms
    (apply #'+ (send-all _transforms :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Transform[] _transforms
     (write-long (length _transforms) s)
     (dolist (elem _transforms)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Transform[] _transforms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transforms (let (r) (dotimes (i n) (push (instance geometry_msgs::Transform :init) r)) r))
     (dolist (elem- _transforms)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass laser_mapper::LoopClosure
  :super ros::object
  :slots ())

(setf (get laser_mapper::LoopClosure :md5sum-) "2bfd8abab66078a46d6c266f42293b3d")
(setf (get laser_mapper::LoopClosure :datatype-) "laser_mapper/LoopClosure")
(setf (get laser_mapper::LoopClosure :request) laser_mapper::LoopClosureRequest)
(setf (get laser_mapper::LoopClosure :response) laser_mapper::LoopClosureResponse)

(defmethod laser_mapper::LoopClosureRequest
  (:response () (instance laser_mapper::LoopClosureResponse :init)))

(setf (get laser_mapper::LoopClosureRequest :md5sum-) "2bfd8abab66078a46d6c266f42293b3d")
(setf (get laser_mapper::LoopClosureRequest :datatype-) "laser_mapper/LoopClosureRequest")
(setf (get laser_mapper::LoopClosureRequest :definition-)
      "
int64 time_a
int64 time_b
geometry_msgs/Transform transform_a_b
int64[] collector_times

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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

geometry_msgs/Transform[] transforms


================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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
")

(setf (get laser_mapper::LoopClosureResponse :md5sum-) "2bfd8abab66078a46d6c266f42293b3d")
(setf (get laser_mapper::LoopClosureResponse :datatype-) "laser_mapper/LoopClosureResponse")
(setf (get laser_mapper::LoopClosureResponse :definition-)
      "
int64 time_a
int64 time_b
geometry_msgs/Transform transform_a_b
int64[] collector_times

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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

geometry_msgs/Transform[] transforms


================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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
")



(provide :laser_mapper/LoopClosure "2bfd8abab66078a46d6c266f42293b3d")


