
(cl:in-package :asdf)

(defsystem "trajectory_control_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "PathPlanning" :depends-on ("_package_PathPlanning"))
    (:file "_package_PathPlanning" :depends-on ("_package"))
  ))