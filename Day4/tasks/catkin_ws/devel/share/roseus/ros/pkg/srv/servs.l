;; Auto-generated. Do not edit!


(when (boundp 'pkg::servs)
  (if (not (find-package "PKG"))
    (make-package "PKG"))
  (shadow 'servs (find-package "PKG")))
(unless (find-package "PKG::SERVS")
  (make-package "PKG::SERVS"))
(unless (find-package "PKG::SERVSREQUEST")
  (make-package "PKG::SERVSREQUEST"))
(unless (find-package "PKG::SERVSRESPONSE")
  (make-package "PKG::SERVSRESPONSE"))

(in-package "ROS")





(defclass pkg::servsRequest
  :super ros::object
  :slots ())

(defmethod pkg::servsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pkg::servsResponse
  :super ros::object
  :slots ())

(defmethod pkg::servsResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pkg::servs
  :super ros::object
  :slots ())

(setf (get pkg::servs :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get pkg::servs :datatype-) "pkg/servs")
(setf (get pkg::servs :request) pkg::servsRequest)
(setf (get pkg::servs :response) pkg::servsResponse)

(defmethod pkg::servsRequest
  (:response () (instance pkg::servsResponse :init)))

(setf (get pkg::servsRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get pkg::servsRequest :datatype-) "pkg/servsRequest")
(setf (get pkg::servsRequest :definition-)
      "
---
")

(setf (get pkg::servsResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get pkg::servsResponse :datatype-) "pkg/servsResponse")
(setf (get pkg::servsResponse :definition-)
      "
---
")



(provide :pkg/servs "d41d8cd98f00b204e9800998ecf8427e")


