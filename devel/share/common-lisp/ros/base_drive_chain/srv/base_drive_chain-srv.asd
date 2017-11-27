
(cl:in-package :asdf)

(defsystem "base_drive_chain-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MotorControllerSetup" :depends-on ("_package_MotorControllerSetup"))
    (:file "_package_MotorControllerSetup" :depends-on ("_package"))
    (:file "RoboteqMode" :depends-on ("_package_RoboteqMode"))
    (:file "_package_RoboteqMode" :depends-on ("_package"))
  ))