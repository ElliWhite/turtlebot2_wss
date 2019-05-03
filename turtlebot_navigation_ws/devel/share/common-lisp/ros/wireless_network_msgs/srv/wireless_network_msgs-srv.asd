
(cl:in-package :asdf)

(defsystem "wireless_network_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RequestRSS" :depends-on ("_package_RequestRSS"))
    (:file "_package_RequestRSS" :depends-on ("_package"))
    (:file "RequestRSS_Load_PC" :depends-on ("_package_RequestRSS_Load_PC"))
    (:file "_package_RequestRSS_Load_PC" :depends-on ("_package"))
    (:file "RequestRSS_PC" :depends-on ("_package_RequestRSS_PC"))
    (:file "_package_RequestRSS_PC" :depends-on ("_package"))
    (:file "RequestRSS_PC_Point" :depends-on ("_package_RequestRSS_PC_Point"))
    (:file "_package_RequestRSS_PC_Point" :depends-on ("_package"))
    (:file "RequestRSS_PC_sim" :depends-on ("_package_RequestRSS_PC_sim"))
    (:file "_package_RequestRSS_PC_sim" :depends-on ("_package"))
    (:file "RequestRSS_Publish_PC" :depends-on ("_package_RequestRSS_Publish_PC"))
    (:file "_package_RequestRSS_Publish_PC" :depends-on ("_package"))
    (:file "RequestRSS_Save_PC" :depends-on ("_package_RequestRSS_Save_PC"))
    (:file "_package_RequestRSS_Save_PC" :depends-on ("_package"))
    (:file "Request_GPR_reset" :depends-on ("_package_Request_GPR_reset"))
    (:file "_package_Request_GPR_reset" :depends-on ("_package"))
  ))