;; Auto-generated. Do not edit!


(when (boundp 'pkg::msgs)
  (if (not (find-package "PKG"))
    (make-package "PKG"))
  (shadow 'msgs (find-package "PKG")))
(unless (find-package "PKG::MSGS")
  (make-package "PKG::MSGS"))

(in-package "ROS")
;;//! \htmlinclude msgs.msg.html


(defclass pkg::msgs
  :super ros::object
  :slots ())

(defmethod pkg::msgs
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

(setf (get pkg::msgs :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get pkg::msgs :datatype-) "pkg/msgs")
(setf (get pkg::msgs :definition-)
      "
")



(provide :pkg/msgs "d41d8cd98f00b204e9800998ecf8427e")


