
(cl:in-package :asdf)

(defsystem "wireless_network_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Levels_WiFi_2D" :depends-on ("_package_Levels_WiFi_2D"))
    (:file "_package_Levels_WiFi_2D" :depends-on ("_package"))
    (:file "WiFi_location" :depends-on ("_package_WiFi_location"))
    (:file "_package_WiFi_location" :depends-on ("_package"))
    (:file "linkutilization" :depends-on ("_package_linkutilization"))
    (:file "_package_linkutilization" :depends-on ("_package"))
    (:file "networkdelay" :depends-on ("_package_networkdelay"))
    (:file "_package_networkdelay" :depends-on ("_package"))
    (:file "networkerrors" :depends-on ("_package_networkerrors"))
    (:file "_package_networkerrors" :depends-on ("_package"))
    (:file "wirelesslink" :depends-on ("_package_wirelesslink"))
    (:file "_package_wirelesslink" :depends-on ("_package"))
  ))