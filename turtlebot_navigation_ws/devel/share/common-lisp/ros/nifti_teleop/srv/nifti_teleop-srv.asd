
(cl:in-package :asdf)

(defsystem "nifti_teleop-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Acquire" :depends-on ("_package_Acquire"))
    (:file "_package_Acquire" :depends-on ("_package"))
    (:file "Release" :depends-on ("_package_Release"))
    (:file "_package_Release" :depends-on ("_package"))
  ))