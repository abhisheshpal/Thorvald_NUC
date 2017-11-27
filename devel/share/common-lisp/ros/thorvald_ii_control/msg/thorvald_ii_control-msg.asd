
(cl:in-package :asdf)

(defsystem "thorvald_ii_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BaseState" :depends-on ("_package_BaseState"))
    (:file "_package_BaseState" :depends-on ("_package"))
    (:file "JointTolerance" :depends-on ("_package_JointTolerance"))
    (:file "_package_JointTolerance" :depends-on ("_package"))
    (:file "ThorvaldTwist" :depends-on ("_package_ThorvaldTwist"))
    (:file "_package_ThorvaldTwist" :depends-on ("_package"))
  ))