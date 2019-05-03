
(cl:in-package :asdf)

(defsystem "ethzasl_icp_mapper-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CorrectPose" :depends-on ("_package_CorrectPose"))
    (:file "_package_CorrectPose" :depends-on ("_package"))
    (:file "GetBoundedMap" :depends-on ("_package_GetBoundedMap"))
    (:file "_package_GetBoundedMap" :depends-on ("_package"))
    (:file "GetMode" :depends-on ("_package_GetMode"))
    (:file "_package_GetMode" :depends-on ("_package"))
    (:file "LoadMap" :depends-on ("_package_LoadMap"))
    (:file "_package_LoadMap" :depends-on ("_package"))
    (:file "MatchClouds" :depends-on ("_package_MatchClouds"))
    (:file "_package_MatchClouds" :depends-on ("_package"))
    (:file "SetMode" :depends-on ("_package_SetMode"))
    (:file "_package_SetMode" :depends-on ("_package"))
  ))