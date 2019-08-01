
(cl:in-package :asdf)

(defsystem "ros_service_assignment-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RectangleArea" :depends-on ("_package_RectangleArea"))
    (:file "_package_RectangleArea" :depends-on ("_package"))
  ))