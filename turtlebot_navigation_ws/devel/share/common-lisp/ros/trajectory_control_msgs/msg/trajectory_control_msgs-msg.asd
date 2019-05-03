
(cl:in-package :asdf)

(defsystem "trajectory_control_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :nav_msgs-msg
               :nifti_robot_driver_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MultiRobotPath" :depends-on ("_package_MultiRobotPath"))
    (:file "_package_MultiRobotPath" :depends-on ("_package"))
    (:file "MultiRobotPose" :depends-on ("_package_MultiRobotPose"))
    (:file "_package_MultiRobotPose" :depends-on ("_package"))
    (:file "PlanningFeedback" :depends-on ("_package_PlanningFeedback"))
    (:file "_package_PlanningFeedback" :depends-on ("_package"))
    (:file "PlanningGlobalPath" :depends-on ("_package_PlanningGlobalPath"))
    (:file "_package_PlanningGlobalPath" :depends-on ("_package"))
    (:file "PlanningStatus" :depends-on ("_package_PlanningStatus"))
    (:file "_package_PlanningStatus" :depends-on ("_package"))
    (:file "PlanningTask" :depends-on ("_package_PlanningTask"))
    (:file "_package_PlanningTask" :depends-on ("_package"))
    (:file "TrajectoryControlAction" :depends-on ("_package_TrajectoryControlAction"))
    (:file "_package_TrajectoryControlAction" :depends-on ("_package"))
    (:file "TrajectoryControlActionFeedback" :depends-on ("_package_TrajectoryControlActionFeedback"))
    (:file "_package_TrajectoryControlActionFeedback" :depends-on ("_package"))
    (:file "TrajectoryControlActionGoal" :depends-on ("_package_TrajectoryControlActionGoal"))
    (:file "_package_TrajectoryControlActionGoal" :depends-on ("_package"))
    (:file "TrajectoryControlActionResult" :depends-on ("_package_TrajectoryControlActionResult"))
    (:file "_package_TrajectoryControlActionResult" :depends-on ("_package"))
    (:file "TrajectoryControlFeedback" :depends-on ("_package_TrajectoryControlFeedback"))
    (:file "_package_TrajectoryControlFeedback" :depends-on ("_package"))
    (:file "TrajectoryControlGoal" :depends-on ("_package_TrajectoryControlGoal"))
    (:file "_package_TrajectoryControlGoal" :depends-on ("_package"))
    (:file "TrajectoryControlResult" :depends-on ("_package_TrajectoryControlResult"))
    (:file "_package_TrajectoryControlResult" :depends-on ("_package"))
  ))