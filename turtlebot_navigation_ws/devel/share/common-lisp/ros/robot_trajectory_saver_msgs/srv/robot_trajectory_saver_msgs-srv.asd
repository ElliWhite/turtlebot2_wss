
(cl:in-package :asdf)

(defsystem "robot_trajectory_saver_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "CheckPath" :depends-on ("_package_CheckPath"))
    (:file "_package_CheckPath" :depends-on ("_package"))
    (:file "GetRobotTrajectories" :depends-on ("_package_GetRobotTrajectories"))
    (:file "_package_GetRobotTrajectories" :depends-on ("_package"))
    (:file "LoadRobotTrajectories" :depends-on ("_package_LoadRobotTrajectories"))
    (:file "_package_LoadRobotTrajectories" :depends-on ("_package"))
    (:file "SaveRobotTrajectories" :depends-on ("_package_SaveRobotTrajectories"))
    (:file "_package_SaveRobotTrajectories" :depends-on ("_package"))
  ))