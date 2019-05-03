;; Auto-generated. Do not edit!


(when (boundp 'networkanalysis_msgs::linkutilization)
  (if (not (find-package "NETWORKANALYSIS_MSGS"))
    (make-package "NETWORKANALYSIS_MSGS"))
  (shadow 'linkutilization (find-package "NETWORKANALYSIS_MSGS")))
(unless (find-package "NETWORKANALYSIS_MSGS::LINKUTILIZATION")
  (make-package "NETWORKANALYSIS_MSGS::LINKUTILIZATION"))

(in-package "ROS")
;;//! \htmlinclude linkutilization.msg.html


(defclass networkanalysis_msgs::linkutilization
  :super ros::object
  :slots (_tcp_tx_segments _tcp_rx_segments _tcp_tx_segmentrate _tcp_rx_segmentrate _udp_tx_datagrams _udp_rx_datagrams _udp_tx_datagramrate _udp_rx_datagramrate _total_tx_packets _total_tx_bytes _total_rx_packets _total_rx_bytes _total_tx_mbps _total_rx_mbps ))

(defmethod networkanalysis_msgs::linkutilization
  (:init
   (&key
    ((:tcp_tx_segments __tcp_tx_segments) 0)
    ((:tcp_rx_segments __tcp_rx_segments) 0)
    ((:tcp_tx_segmentrate __tcp_tx_segmentrate) 0.0)
    ((:tcp_rx_segmentrate __tcp_rx_segmentrate) 0.0)
    ((:udp_tx_datagrams __udp_tx_datagrams) 0)
    ((:udp_rx_datagrams __udp_rx_datagrams) 0)
    ((:udp_tx_datagramrate __udp_tx_datagramrate) 0.0)
    ((:udp_rx_datagramrate __udp_rx_datagramrate) 0.0)
    ((:total_tx_packets __total_tx_packets) 0)
    ((:total_tx_bytes __total_tx_bytes) 0)
    ((:total_rx_packets __total_rx_packets) 0)
    ((:total_rx_bytes __total_rx_bytes) 0)
    ((:total_tx_mbps __total_tx_mbps) 0.0)
    ((:total_rx_mbps __total_rx_mbps) 0.0)
    )
   (send-super :init)
   (setq _tcp_tx_segments (round __tcp_tx_segments))
   (setq _tcp_rx_segments (round __tcp_rx_segments))
   (setq _tcp_tx_segmentrate (float __tcp_tx_segmentrate))
   (setq _tcp_rx_segmentrate (float __tcp_rx_segmentrate))
   (setq _udp_tx_datagrams (round __udp_tx_datagrams))
   (setq _udp_rx_datagrams (round __udp_rx_datagrams))
   (setq _udp_tx_datagramrate (float __udp_tx_datagramrate))
   (setq _udp_rx_datagramrate (float __udp_rx_datagramrate))
   (setq _total_tx_packets (round __total_tx_packets))
   (setq _total_tx_bytes (round __total_tx_bytes))
   (setq _total_rx_packets (round __total_rx_packets))
   (setq _total_rx_bytes (round __total_rx_bytes))
   (setq _total_tx_mbps (float __total_tx_mbps))
   (setq _total_rx_mbps (float __total_rx_mbps))
   self)
  (:tcp_tx_segments
   (&optional __tcp_tx_segments)
   (if __tcp_tx_segments (setq _tcp_tx_segments __tcp_tx_segments)) _tcp_tx_segments)
  (:tcp_rx_segments
   (&optional __tcp_rx_segments)
   (if __tcp_rx_segments (setq _tcp_rx_segments __tcp_rx_segments)) _tcp_rx_segments)
  (:tcp_tx_segmentrate
   (&optional __tcp_tx_segmentrate)
   (if __tcp_tx_segmentrate (setq _tcp_tx_segmentrate __tcp_tx_segmentrate)) _tcp_tx_segmentrate)
  (:tcp_rx_segmentrate
   (&optional __tcp_rx_segmentrate)
   (if __tcp_rx_segmentrate (setq _tcp_rx_segmentrate __tcp_rx_segmentrate)) _tcp_rx_segmentrate)
  (:udp_tx_datagrams
   (&optional __udp_tx_datagrams)
   (if __udp_tx_datagrams (setq _udp_tx_datagrams __udp_tx_datagrams)) _udp_tx_datagrams)
  (:udp_rx_datagrams
   (&optional __udp_rx_datagrams)
   (if __udp_rx_datagrams (setq _udp_rx_datagrams __udp_rx_datagrams)) _udp_rx_datagrams)
  (:udp_tx_datagramrate
   (&optional __udp_tx_datagramrate)
   (if __udp_tx_datagramrate (setq _udp_tx_datagramrate __udp_tx_datagramrate)) _udp_tx_datagramrate)
  (:udp_rx_datagramrate
   (&optional __udp_rx_datagramrate)
   (if __udp_rx_datagramrate (setq _udp_rx_datagramrate __udp_rx_datagramrate)) _udp_rx_datagramrate)
  (:total_tx_packets
   (&optional __total_tx_packets)
   (if __total_tx_packets (setq _total_tx_packets __total_tx_packets)) _total_tx_packets)
  (:total_tx_bytes
   (&optional __total_tx_bytes)
   (if __total_tx_bytes (setq _total_tx_bytes __total_tx_bytes)) _total_tx_bytes)
  (:total_rx_packets
   (&optional __total_rx_packets)
   (if __total_rx_packets (setq _total_rx_packets __total_rx_packets)) _total_rx_packets)
  (:total_rx_bytes
   (&optional __total_rx_bytes)
   (if __total_rx_bytes (setq _total_rx_bytes __total_rx_bytes)) _total_rx_bytes)
  (:total_tx_mbps
   (&optional __total_tx_mbps)
   (if __total_tx_mbps (setq _total_tx_mbps __total_tx_mbps)) _total_tx_mbps)
  (:total_rx_mbps
   (&optional __total_rx_mbps)
   (if __total_rx_mbps (setq _total_rx_mbps __total_rx_mbps)) _total_rx_mbps)
  (:serialization-length
   ()
   (+
    ;; int64 _tcp_tx_segments
    8
    ;; int64 _tcp_rx_segments
    8
    ;; float64 _tcp_tx_segmentrate
    8
    ;; float64 _tcp_rx_segmentrate
    8
    ;; int64 _udp_tx_datagrams
    8
    ;; int64 _udp_rx_datagrams
    8
    ;; float64 _udp_tx_datagramrate
    8
    ;; float64 _udp_rx_datagramrate
    8
    ;; int64 _total_tx_packets
    8
    ;; int64 _total_tx_bytes
    8
    ;; int64 _total_rx_packets
    8
    ;; int64 _total_rx_bytes
    8
    ;; float64 _total_tx_mbps
    8
    ;; float64 _total_rx_mbps
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _tcp_tx_segments
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _tcp_tx_segments (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _tcp_tx_segments) (= (length (_tcp_tx_segments . bv)) 2)) ;; bignum
              (write-long (ash (elt (_tcp_tx_segments . bv) 0) 0) s)
              (write-long (ash (elt (_tcp_tx_segments . bv) 1) -1) s))
             ((and (class _tcp_tx_segments) (= (length (_tcp_tx_segments . bv)) 1)) ;; big1
              (write-long (elt (_tcp_tx_segments . bv) 0) s)
              (write-long (if (>= _tcp_tx_segments 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _tcp_tx_segments s)(write-long (if (>= _tcp_tx_segments 0) 0 #xffffffff) s)))
     ;; int64 _tcp_rx_segments
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _tcp_rx_segments (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _tcp_rx_segments) (= (length (_tcp_rx_segments . bv)) 2)) ;; bignum
              (write-long (ash (elt (_tcp_rx_segments . bv) 0) 0) s)
              (write-long (ash (elt (_tcp_rx_segments . bv) 1) -1) s))
             ((and (class _tcp_rx_segments) (= (length (_tcp_rx_segments . bv)) 1)) ;; big1
              (write-long (elt (_tcp_rx_segments . bv) 0) s)
              (write-long (if (>= _tcp_rx_segments 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _tcp_rx_segments s)(write-long (if (>= _tcp_rx_segments 0) 0 #xffffffff) s)))
     ;; float64 _tcp_tx_segmentrate
       (sys::poke _tcp_tx_segmentrate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tcp_rx_segmentrate
       (sys::poke _tcp_rx_segmentrate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _udp_tx_datagrams
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _udp_tx_datagrams (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _udp_tx_datagrams) (= (length (_udp_tx_datagrams . bv)) 2)) ;; bignum
              (write-long (ash (elt (_udp_tx_datagrams . bv) 0) 0) s)
              (write-long (ash (elt (_udp_tx_datagrams . bv) 1) -1) s))
             ((and (class _udp_tx_datagrams) (= (length (_udp_tx_datagrams . bv)) 1)) ;; big1
              (write-long (elt (_udp_tx_datagrams . bv) 0) s)
              (write-long (if (>= _udp_tx_datagrams 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _udp_tx_datagrams s)(write-long (if (>= _udp_tx_datagrams 0) 0 #xffffffff) s)))
     ;; int64 _udp_rx_datagrams
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _udp_rx_datagrams (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _udp_rx_datagrams) (= (length (_udp_rx_datagrams . bv)) 2)) ;; bignum
              (write-long (ash (elt (_udp_rx_datagrams . bv) 0) 0) s)
              (write-long (ash (elt (_udp_rx_datagrams . bv) 1) -1) s))
             ((and (class _udp_rx_datagrams) (= (length (_udp_rx_datagrams . bv)) 1)) ;; big1
              (write-long (elt (_udp_rx_datagrams . bv) 0) s)
              (write-long (if (>= _udp_rx_datagrams 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _udp_rx_datagrams s)(write-long (if (>= _udp_rx_datagrams 0) 0 #xffffffff) s)))
     ;; float64 _udp_tx_datagramrate
       (sys::poke _udp_tx_datagramrate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _udp_rx_datagramrate
       (sys::poke _udp_rx_datagramrate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _total_tx_packets
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _total_tx_packets (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _total_tx_packets) (= (length (_total_tx_packets . bv)) 2)) ;; bignum
              (write-long (ash (elt (_total_tx_packets . bv) 0) 0) s)
              (write-long (ash (elt (_total_tx_packets . bv) 1) -1) s))
             ((and (class _total_tx_packets) (= (length (_total_tx_packets . bv)) 1)) ;; big1
              (write-long (elt (_total_tx_packets . bv) 0) s)
              (write-long (if (>= _total_tx_packets 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _total_tx_packets s)(write-long (if (>= _total_tx_packets 0) 0 #xffffffff) s)))
     ;; int64 _total_tx_bytes
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _total_tx_bytes (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _total_tx_bytes) (= (length (_total_tx_bytes . bv)) 2)) ;; bignum
              (write-long (ash (elt (_total_tx_bytes . bv) 0) 0) s)
              (write-long (ash (elt (_total_tx_bytes . bv) 1) -1) s))
             ((and (class _total_tx_bytes) (= (length (_total_tx_bytes . bv)) 1)) ;; big1
              (write-long (elt (_total_tx_bytes . bv) 0) s)
              (write-long (if (>= _total_tx_bytes 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _total_tx_bytes s)(write-long (if (>= _total_tx_bytes 0) 0 #xffffffff) s)))
     ;; int64 _total_rx_packets
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _total_rx_packets (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _total_rx_packets) (= (length (_total_rx_packets . bv)) 2)) ;; bignum
              (write-long (ash (elt (_total_rx_packets . bv) 0) 0) s)
              (write-long (ash (elt (_total_rx_packets . bv) 1) -1) s))
             ((and (class _total_rx_packets) (= (length (_total_rx_packets . bv)) 1)) ;; big1
              (write-long (elt (_total_rx_packets . bv) 0) s)
              (write-long (if (>= _total_rx_packets 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _total_rx_packets s)(write-long (if (>= _total_rx_packets 0) 0 #xffffffff) s)))
     ;; int64 _total_rx_bytes
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _total_rx_bytes (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _total_rx_bytes) (= (length (_total_rx_bytes . bv)) 2)) ;; bignum
              (write-long (ash (elt (_total_rx_bytes . bv) 0) 0) s)
              (write-long (ash (elt (_total_rx_bytes . bv) 1) -1) s))
             ((and (class _total_rx_bytes) (= (length (_total_rx_bytes . bv)) 1)) ;; big1
              (write-long (elt (_total_rx_bytes . bv) 0) s)
              (write-long (if (>= _total_rx_bytes 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _total_rx_bytes s)(write-long (if (>= _total_rx_bytes 0) 0 #xffffffff) s)))
     ;; float64 _total_tx_mbps
       (sys::poke _total_tx_mbps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _total_rx_mbps
       (sys::poke _total_rx_mbps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _tcp_tx_segments
#+(or :alpha :irix6 :x86_64)
      (setf _tcp_tx_segments (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _tcp_tx_segments (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _tcp_rx_segments
#+(or :alpha :irix6 :x86_64)
      (setf _tcp_rx_segments (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _tcp_rx_segments (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _tcp_tx_segmentrate
     (setq _tcp_tx_segmentrate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tcp_rx_segmentrate
     (setq _tcp_rx_segmentrate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _udp_tx_datagrams
#+(or :alpha :irix6 :x86_64)
      (setf _udp_tx_datagrams (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _udp_tx_datagrams (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _udp_rx_datagrams
#+(or :alpha :irix6 :x86_64)
      (setf _udp_rx_datagrams (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _udp_rx_datagrams (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _udp_tx_datagramrate
     (setq _udp_tx_datagramrate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _udp_rx_datagramrate
     (setq _udp_rx_datagramrate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _total_tx_packets
#+(or :alpha :irix6 :x86_64)
      (setf _total_tx_packets (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _total_tx_packets (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _total_tx_bytes
#+(or :alpha :irix6 :x86_64)
      (setf _total_tx_bytes (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _total_tx_bytes (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _total_rx_packets
#+(or :alpha :irix6 :x86_64)
      (setf _total_rx_packets (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _total_rx_packets (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _total_rx_bytes
#+(or :alpha :irix6 :x86_64)
      (setf _total_rx_bytes (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _total_rx_bytes (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _total_tx_mbps
     (setq _total_tx_mbps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _total_rx_mbps
     (setq _total_rx_mbps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get networkanalysis_msgs::linkutilization :md5sum-) "68677103f00920dc284ac20df3aa3180")
(setf (get networkanalysis_msgs::linkutilization :datatype-) "networkanalysis_msgs/linkutilization")
(setf (get networkanalysis_msgs::linkutilization :definition-)
      "#TCP related information on link utilization for a given (NIC) interface
int64 tcp_tx_segments
int64 tcp_rx_segments
float64 tcp_tx_segmentrate
float64 tcp_rx_segmentrate

#UDP related information on link utilization for a given (NIC) interface
int64 udp_tx_datagrams
int64 udp_rx_datagrams
float64 udp_tx_datagramrate
float64 udp_rx_datagramrate

#Total (IP: TCP + UDP) link utilization for a given (NIC) interface
int64 total_tx_packets
int64 total_tx_bytes
int64 total_rx_packets
int64 total_rx_bytes
float64 total_tx_mbps
float64 total_rx_mbps

")



(provide :networkanalysis_msgs/linkutilization "68677103f00920dc284ac20df3aa3180")


