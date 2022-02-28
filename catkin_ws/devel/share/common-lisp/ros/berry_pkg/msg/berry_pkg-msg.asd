
(cl:in-package :asdf)

(defsystem "berry_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BerryPos" :depends-on ("_package_BerryPos"))
    (:file "_package_BerryPos" :depends-on ("_package"))
    (:file "BerrySetAngle" :depends-on ("_package_BerrySetAngle"))
    (:file "_package_BerrySetAngle" :depends-on ("_package"))
    (:file "BerrySetPosition" :depends-on ("_package_BerrySetPosition"))
    (:file "_package_BerrySetPosition" :depends-on ("_package"))
    (:file "BulkSetItem" :depends-on ("_package_BulkSetItem"))
    (:file "_package_BulkSetItem" :depends-on ("_package"))
    (:file "SetPosition" :depends-on ("_package_SetPosition"))
    (:file "_package_SetPosition" :depends-on ("_package"))
    (:file "SyncSetPosition" :depends-on ("_package_SyncSetPosition"))
    (:file "_package_SyncSetPosition" :depends-on ("_package"))
  ))