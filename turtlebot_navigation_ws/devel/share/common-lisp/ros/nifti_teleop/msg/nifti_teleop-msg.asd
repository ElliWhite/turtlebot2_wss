
(cl:in-package :asdf)

(defsystem "nifti_teleop-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ScanningAction" :depends-on ("_package_ScanningAction"))
    (:file "_package_ScanningAction" :depends-on ("_package"))
    (:file "ScanningActionFeedback" :depends-on ("_package_ScanningActionFeedback"))
    (:file "_package_ScanningActionFeedback" :depends-on ("_package"))
    (:file "ScanningActionGoal" :depends-on ("_package_ScanningActionGoal"))
    (:file "_package_ScanningActionGoal" :depends-on ("_package"))
    (:file "ScanningActionResult" :depends-on ("_package_ScanningActionResult"))
    (:file "_package_ScanningActionResult" :depends-on ("_package"))
    (:file "ScanningFeedback" :depends-on ("_package_ScanningFeedback"))
    (:file "_package_ScanningFeedback" :depends-on ("_package"))
    (:file "ScanningGoal" :depends-on ("_package_ScanningGoal"))
    (:file "_package_ScanningGoal" :depends-on ("_package"))
    (:file "ScanningResult" :depends-on ("_package_ScanningResult"))
    (:file "_package_ScanningResult" :depends-on ("_package"))
  ))