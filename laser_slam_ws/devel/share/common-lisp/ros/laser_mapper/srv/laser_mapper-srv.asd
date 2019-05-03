
(cl:in-package :asdf)

(defsystem "laser_mapper-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GetLaserTrackSrv" :depends-on ("_package_GetLaserTrackSrv"))
    (:file "_package_GetLaserTrackSrv" :depends-on ("_package"))
    (:file "InitialTransform" :depends-on ("_package_InitialTransform"))
    (:file "_package_InitialTransform" :depends-on ("_package"))
    (:file "LoadTrajectory" :depends-on ("_package_LoadTrajectory"))
    (:file "_package_LoadTrajectory" :depends-on ("_package"))
    (:file "LoadVTKMap" :depends-on ("_package_LoadVTKMap"))
    (:file "_package_LoadVTKMap" :depends-on ("_package"))
    (:file "LoopClosure" :depends-on ("_package_LoopClosure"))
    (:file "_package_LoopClosure" :depends-on ("_package"))
    (:file "SaveMap" :depends-on ("_package_SaveMap"))
    (:file "_package_SaveMap" :depends-on ("_package"))
    (:file "SaveTrajectory" :depends-on ("_package_SaveTrajectory"))
    (:file "_package_SaveTrajectory" :depends-on ("_package"))
  ))