;; Auto-generated. Do not edit!


(when (boundp 'patrolling_build_graph_msgs::BuildGraphEvent)
  (if (not (find-package "PATROLLING_BUILD_GRAPH_MSGS"))
    (make-package "PATROLLING_BUILD_GRAPH_MSGS"))
  (shadow 'BuildGraphEvent (find-package "PATROLLING_BUILD_GRAPH_MSGS")))
(unless (find-package "PATROLLING_BUILD_GRAPH_MSGS::BUILDGRAPHEVENT")
  (make-package "PATROLLING_BUILD_GRAPH_MSGS::BUILDGRAPHEVENT"))

(in-package "ROS")
;;//! \htmlinclude BuildGraphEvent.msg.html


(intern "*START_PATROLLING*" (find-package "PATROLLING_BUILD_GRAPH_MSGS::BUILDGRAPHEVENT"))
(shadow '*START_PATROLLING* (find-package "PATROLLING_BUILD_GRAPH_MSGS::BUILDGRAPHEVENT"))
(defconstant patrolling_build_graph_msgs::BuildGraphEvent::*START_PATROLLING* 0)
(intern "*GRAPH_BUILT*" (find-package "PATROLLING_BUILD_GRAPH_MSGS::BUILDGRAPHEVENT"))
(shadow '*GRAPH_BUILT* (find-package "PATROLLING_BUILD_GRAPH_MSGS::BUILDGRAPHEVENT"))
(defconstant patrolling_build_graph_msgs::BuildGraphEvent::*GRAPH_BUILT* 1)
(intern "*STOP_PATROLLING*" (find-package "PATROLLING_BUILD_GRAPH_MSGS::BUILDGRAPHEVENT"))
(shadow '*STOP_PATROLLING* (find-package "PATROLLING_BUILD_GRAPH_MSGS::BUILDGRAPHEVENT"))
(defconstant patrolling_build_graph_msgs::BuildGraphEvent::*STOP_PATROLLING* 2)
(intern "*GRAPH_RECEIVED*" (find-package "PATROLLING_BUILD_GRAPH_MSGS::BUILDGRAPHEVENT"))
(shadow '*GRAPH_RECEIVED* (find-package "PATROLLING_BUILD_GRAPH_MSGS::BUILDGRAPHEVENT"))
(defconstant patrolling_build_graph_msgs::BuildGraphEvent::*GRAPH_RECEIVED* 3)
(defclass patrolling_build_graph_msgs::BuildGraphEvent
  :super ros::object
  :slots (_event ))

(defmethod patrolling_build_graph_msgs::BuildGraphEvent
  (:init
   (&key
    ((:event __event) 0)
    )
   (send-super :init)
   (setq _event (round __event))
   self)
  (:event
   (&optional __event)
   (if __event (setq _event __event)) _event)
  (:serialization-length
   ()
   (+
    ;; uint8 _event
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _event
       (write-byte _event s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _event
     (setq _event (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get patrolling_build_graph_msgs::BuildGraphEvent :md5sum-) "3da7b66974d2acb49f04c8e9d05dd91f")
(setf (get patrolling_build_graph_msgs::BuildGraphEvent :datatype-) "patrolling_build_graph_msgs/BuildGraphEvent")
(setf (get patrolling_build_graph_msgs::BuildGraphEvent :definition-)
      "uint8 START_PATROLLING=0  # waiting for graph 
uint8 GRAPH_BUILT=1       # graph built on the same computer 
uint8 STOP_PATROLLING=2    
uint8 GRAPH_RECEIVED=3    # graph received through message 
uint8 event


")



(provide :patrolling_build_graph_msgs/BuildGraphEvent "3da7b66974d2acb49f04c8e9d05dd91f")


