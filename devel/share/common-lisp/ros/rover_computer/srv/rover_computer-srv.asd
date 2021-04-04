
(cl:in-package :asdf)

(defsystem "rover_computer-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "angle_to_rot" :depends-on ("_package_angle_to_rot"))
    (:file "_package_angle_to_rot" :depends-on ("_package"))
  ))