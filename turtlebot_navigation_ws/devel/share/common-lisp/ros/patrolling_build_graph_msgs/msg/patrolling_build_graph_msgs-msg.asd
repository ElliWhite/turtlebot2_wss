
(cl:in-package :asdf)

(defsystem "patrolling_build_graph_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BuildGraphEvent" :depends-on ("_package_BuildGraphEvent"))
    (:file "_package_BuildGraphEvent" :depends-on ("_package"))
    (:file "Graph" :depends-on ("_package_Graph"))
    (:file "_package_Graph" :depends-on ("_package"))
    (:file "PatrollingPoints" :depends-on ("_package_PatrollingPoints"))
    (:file "_package_PatrollingPoints" :depends-on ("_package"))
    (:file "PriorityPoint" :depends-on ("_package_PriorityPoint"))
    (:file "_package_PriorityPoint" :depends-on ("_package"))
  ))