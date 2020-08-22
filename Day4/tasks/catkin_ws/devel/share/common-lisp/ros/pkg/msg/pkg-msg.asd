
(cl:in-package :asdf)

(defsystem "pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "complexMsg" :depends-on ("_package_complexMsg"))
    (:file "_package_complexMsg" :depends-on ("_package"))
    (:file "msgs" :depends-on ("_package_msgs"))
    (:file "_package_msgs" :depends-on ("_package"))
  ))