
(cl:in-package :asdf)

(defsystem "volumetric_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "LoadMap" :depends-on ("_package_LoadMap"))
    (:file "_package_LoadMap" :depends-on ("_package"))
    (:file "LoadMapInFrame" :depends-on ("_package_LoadMapInFrame"))
    (:file "_package_LoadMapInFrame" :depends-on ("_package"))
    (:file "SaveMap" :depends-on ("_package_SaveMap"))
    (:file "_package_SaveMap" :depends-on ("_package"))
    (:file "SetBoxOccupancy" :depends-on ("_package_SetBoxOccupancy"))
    (:file "_package_SetBoxOccupancy" :depends-on ("_package"))
    (:file "SetDisplayBounds" :depends-on ("_package_SetDisplayBounds"))
    (:file "_package_SetDisplayBounds" :depends-on ("_package"))
  ))