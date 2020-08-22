
(cl:in-package :asdf)

(defsystem "pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "servs" :depends-on ("_package_servs"))
    (:file "_package_servs" :depends-on ("_package"))
  ))