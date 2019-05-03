;; Auto-generated. Do not edit!


(when (boundp 'networkanalysis_msgs::networkerrors)
  (if (not (find-package "NETWORKANALYSIS_MSGS"))
    (make-package "NETWORKANALYSIS_MSGS"))
  (shadow 'networkerrors (find-package "NETWORKANALYSIS_MSGS")))
(unless (find-package "NETWORKANALYSIS_MSGS::NETWORKERRORS")
  (make-package "NETWORKANALYSIS_MSGS::NETWORKERRORS"))

(in-package "ROS")
;;//! \htmlinclude networkerrors.msg.html


(defclass networkanalysis_msgs::networkerrors
  :super ros::object
  :slots (_retransmits _badsegments _udperrors _tx_retires _rx_dropped _nic_tx_errors _nic_rx_errors _nic_tx_dropped _nic_rx_dropped ))

(defmethod networkanalysis_msgs::networkerrors
  (:init
   (&key
    ((:retransmits __retransmits) 0)
    ((:badsegments __badsegments) 0)
    ((:udperrors __udperrors) 0)
    ((:tx_retires __tx_retires) 0)
    ((:rx_dropped __rx_dropped) 0)
    ((:nic_tx_errors __nic_tx_errors) 0)
    ((:nic_rx_errors __nic_rx_errors) 0)
    ((:nic_tx_dropped __nic_tx_dropped) 0)
    ((:nic_rx_dropped __nic_rx_dropped) 0)
    )
   (send-super :init)
   (setq _retransmits (round __retransmits))
   (setq _badsegments (round __badsegments))
   (setq _udperrors (round __udperrors))
   (setq _tx_retires (round __tx_retires))
   (setq _rx_dropped (round __rx_dropped))
   (setq _nic_tx_errors (round __nic_tx_errors))
   (setq _nic_rx_errors (round __nic_rx_errors))
   (setq _nic_tx_dropped (round __nic_tx_dropped))
   (setq _nic_rx_dropped (round __nic_rx_dropped))
   self)
  (:retransmits
   (&optional __retransmits)
   (if __retransmits (setq _retransmits __retransmits)) _retransmits)
  (:badsegments
   (&optional __badsegments)
   (if __badsegments (setq _badsegments __badsegments)) _badsegments)
  (:udperrors
   (&optional __udperrors)
   (if __udperrors (setq _udperrors __udperrors)) _udperrors)
  (:tx_retires
   (&optional __tx_retires)
   (if __tx_retires (setq _tx_retires __tx_retires)) _tx_retires)
  (:rx_dropped
   (&optional __rx_dropped)
   (if __rx_dropped (setq _rx_dropped __rx_dropped)) _rx_dropped)
  (:nic_tx_errors
   (&optional __nic_tx_errors)
   (if __nic_tx_errors (setq _nic_tx_errors __nic_tx_errors)) _nic_tx_errors)
  (:nic_rx_errors
   (&optional __nic_rx_errors)
   (if __nic_rx_errors (setq _nic_rx_errors __nic_rx_errors)) _nic_rx_errors)
  (:nic_tx_dropped
   (&optional __nic_tx_dropped)
   (if __nic_tx_dropped (setq _nic_tx_dropped __nic_tx_dropped)) _nic_tx_dropped)
  (:nic_rx_dropped
   (&optional __nic_rx_dropped)
   (if __nic_rx_dropped (setq _nic_rx_dropped __nic_rx_dropped)) _nic_rx_dropped)
  (:serialization-length
   ()
   (+
    ;; int64 _retransmits
    8
    ;; int64 _badsegments
    8
    ;; int64 _udperrors
    8
    ;; int64 _tx_retires
    8
    ;; int64 _rx_dropped
    8
    ;; int64 _nic_tx_errors
    8
    ;; int64 _nic_rx_errors
    8
    ;; int64 _nic_tx_dropped
    8
    ;; int64 _nic_rx_dropped
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _retransmits
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _retransmits (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _retransmits) (= (length (_retransmits . bv)) 2)) ;; bignum
              (write-long (ash (elt (_retransmits . bv) 0) 0) s)
              (write-long (ash (elt (_retransmits . bv) 1) -1) s))
             ((and (class _retransmits) (= (length (_retransmits . bv)) 1)) ;; big1
              (write-long (elt (_retransmits . bv) 0) s)
              (write-long (if (>= _retransmits 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _retransmits s)(write-long (if (>= _retransmits 0) 0 #xffffffff) s)))
     ;; int64 _badsegments
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _badsegments (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _badsegments) (= (length (_badsegments . bv)) 2)) ;; bignum
              (write-long (ash (elt (_badsegments . bv) 0) 0) s)
              (write-long (ash (elt (_badsegments . bv) 1) -1) s))
             ((and (class _badsegments) (= (length (_badsegments . bv)) 1)) ;; big1
              (write-long (elt (_badsegments . bv) 0) s)
              (write-long (if (>= _badsegments 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _badsegments s)(write-long (if (>= _badsegments 0) 0 #xffffffff) s)))
     ;; int64 _udperrors
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _udperrors (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _udperrors) (= (length (_udperrors . bv)) 2)) ;; bignum
              (write-long (ash (elt (_udperrors . bv) 0) 0) s)
              (write-long (ash (elt (_udperrors . bv) 1) -1) s))
             ((and (class _udperrors) (= (length (_udperrors . bv)) 1)) ;; big1
              (write-long (elt (_udperrors . bv) 0) s)
              (write-long (if (>= _udperrors 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _udperrors s)(write-long (if (>= _udperrors 0) 0 #xffffffff) s)))
     ;; int64 _tx_retires
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _tx_retires (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _tx_retires) (= (length (_tx_retires . bv)) 2)) ;; bignum
              (write-long (ash (elt (_tx_retires . bv) 0) 0) s)
              (write-long (ash (elt (_tx_retires . bv) 1) -1) s))
             ((and (class _tx_retires) (= (length (_tx_retires . bv)) 1)) ;; big1
              (write-long (elt (_tx_retires . bv) 0) s)
              (write-long (if (>= _tx_retires 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _tx_retires s)(write-long (if (>= _tx_retires 0) 0 #xffffffff) s)))
     ;; int64 _rx_dropped
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rx_dropped (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rx_dropped) (= (length (_rx_dropped . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rx_dropped . bv) 0) 0) s)
              (write-long (ash (elt (_rx_dropped . bv) 1) -1) s))
             ((and (class _rx_dropped) (= (length (_rx_dropped . bv)) 1)) ;; big1
              (write-long (elt (_rx_dropped . bv) 0) s)
              (write-long (if (>= _rx_dropped 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rx_dropped s)(write-long (if (>= _rx_dropped 0) 0 #xffffffff) s)))
     ;; int64 _nic_tx_errors
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _nic_tx_errors (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _nic_tx_errors) (= (length (_nic_tx_errors . bv)) 2)) ;; bignum
              (write-long (ash (elt (_nic_tx_errors . bv) 0) 0) s)
              (write-long (ash (elt (_nic_tx_errors . bv) 1) -1) s))
             ((and (class _nic_tx_errors) (= (length (_nic_tx_errors . bv)) 1)) ;; big1
              (write-long (elt (_nic_tx_errors . bv) 0) s)
              (write-long (if (>= _nic_tx_errors 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _nic_tx_errors s)(write-long (if (>= _nic_tx_errors 0) 0 #xffffffff) s)))
     ;; int64 _nic_rx_errors
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _nic_rx_errors (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _nic_rx_errors) (= (length (_nic_rx_errors . bv)) 2)) ;; bignum
              (write-long (ash (elt (_nic_rx_errors . bv) 0) 0) s)
              (write-long (ash (elt (_nic_rx_errors . bv) 1) -1) s))
             ((and (class _nic_rx_errors) (= (length (_nic_rx_errors . bv)) 1)) ;; big1
              (write-long (elt (_nic_rx_errors . bv) 0) s)
              (write-long (if (>= _nic_rx_errors 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _nic_rx_errors s)(write-long (if (>= _nic_rx_errors 0) 0 #xffffffff) s)))
     ;; int64 _nic_tx_dropped
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _nic_tx_dropped (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _nic_tx_dropped) (= (length (_nic_tx_dropped . bv)) 2)) ;; bignum
              (write-long (ash (elt (_nic_tx_dropped . bv) 0) 0) s)
              (write-long (ash (elt (_nic_tx_dropped . bv) 1) -1) s))
             ((and (class _nic_tx_dropped) (= (length (_nic_tx_dropped . bv)) 1)) ;; big1
              (write-long (elt (_nic_tx_dropped . bv) 0) s)
              (write-long (if (>= _nic_tx_dropped 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _nic_tx_dropped s)(write-long (if (>= _nic_tx_dropped 0) 0 #xffffffff) s)))
     ;; int64 _nic_rx_dropped
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _nic_rx_dropped (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _nic_rx_dropped) (= (length (_nic_rx_dropped . bv)) 2)) ;; bignum
              (write-long (ash (elt (_nic_rx_dropped . bv) 0) 0) s)
              (write-long (ash (elt (_nic_rx_dropped . bv) 1) -1) s))
             ((and (class _nic_rx_dropped) (= (length (_nic_rx_dropped . bv)) 1)) ;; big1
              (write-long (elt (_nic_rx_dropped . bv) 0) s)
              (write-long (if (>= _nic_rx_dropped 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _nic_rx_dropped s)(write-long (if (>= _nic_rx_dropped 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _retransmits
#+(or :alpha :irix6 :x86_64)
      (setf _retransmits (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _retransmits (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _badsegments
#+(or :alpha :irix6 :x86_64)
      (setf _badsegments (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _badsegments (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _udperrors
#+(or :alpha :irix6 :x86_64)
      (setf _udperrors (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _udperrors (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _tx_retires
#+(or :alpha :irix6 :x86_64)
      (setf _tx_retires (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _tx_retires (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rx_dropped
#+(or :alpha :irix6 :x86_64)
      (setf _rx_dropped (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rx_dropped (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _nic_tx_errors
#+(or :alpha :irix6 :x86_64)
      (setf _nic_tx_errors (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _nic_tx_errors (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _nic_rx_errors
#+(or :alpha :irix6 :x86_64)
      (setf _nic_rx_errors (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _nic_rx_errors (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _nic_tx_dropped
#+(or :alpha :irix6 :x86_64)
      (setf _nic_tx_dropped (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _nic_tx_dropped (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _nic_rx_dropped
#+(or :alpha :irix6 :x86_64)
      (setf _nic_rx_dropped (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _nic_rx_dropped (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get networkanalysis_msgs::networkerrors :md5sum-) "00505f88cd05dc9219c740b79985fc84")
(setf (get networkanalysis_msgs::networkerrors :datatype-) "networkanalysis_msgs/networkerrors")
(setf (get networkanalysis_msgs::networkerrors :definition-)
      "#segment errors at (tcp) protocol level
int64 retransmits
int64 badsegments

#errors in udp transmission
int64 udperrors

#system level (MAC layer) errors
int64 tx_retires
int64 rx_dropped


#interface level (NIC statistics) errors
int64 nic_tx_errors
int64 nic_rx_errors
int64 nic_tx_dropped
int64 nic_rx_dropped

")



(provide :networkanalysis_msgs/networkerrors "00505f88cd05dc9219c740b79985fc84")


