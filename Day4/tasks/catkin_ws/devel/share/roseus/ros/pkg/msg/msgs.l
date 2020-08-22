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
  :slots (_first _second _ouput ))

(defmethod pkg::msgs
  (:init
   (&key
    ((:first __first) 0)
    ((:second __second) 0)
    ((:ouput __ouput) "")
    )
   (send-super :init)
   (setq _first (round __first))
   (setq _second (round __second))
   (setq _ouput (string __ouput))
   self)
  (:first
   (&optional __first)
   (if __first (setq _first __first)) _first)
  (:second
   (&optional __second)
   (if __second (setq _second __second)) _second)
  (:ouput
   (&optional __ouput)
   (if __ouput (setq _ouput __ouput)) _ouput)
  (:serialization-length
   ()
   (+
    ;; uint32 _first
    4
    ;; uint32 _second
    4
    ;; string _ouput
    4 (length _ouput)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _first
       (write-long _first s)
     ;; uint32 _second
       (write-long _second s)
     ;; string _ouput
       (write-long (length _ouput) s) (princ _ouput s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _first
     (setq _first (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _second
     (setq _second (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _ouput
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ouput (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pkg::msgs :md5sum-) "f79bb8aaacd7d31ffc3bb63e0298610a")
(setf (get pkg::msgs :datatype-) "pkg/msgs")
(setf (get pkg::msgs :definition-)
      "uint32 first
uint32 second
string ouput

")



(provide :pkg/msgs "f79bb8aaacd7d31ffc3bb63e0298610a")


