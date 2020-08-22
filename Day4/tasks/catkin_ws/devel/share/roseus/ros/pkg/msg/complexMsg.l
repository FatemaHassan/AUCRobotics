;; Auto-generated. Do not edit!


(when (boundp 'pkg::complexMsg)
  (if (not (find-package "PKG"))
    (make-package "PKG"))
  (shadow 'complexMsg (find-package "PKG")))
(unless (find-package "PKG::COMPLEXMSG")
  (make-package "PKG::COMPLEXMSG"))

(in-package "ROS")
;;//! \htmlinclude complexMsg.msg.html


(defclass pkg::complexMsg
  :super ros::object
  :slots (_first _second _output ))

(defmethod pkg::complexMsg
  (:init
   (&key
    ((:first __first) 0)
    ((:second __second) 0)
    ((:output __output) "")
    )
   (send-super :init)
   (setq _first (round __first))
   (setq _second (round __second))
   (setq _output (string __output))
   self)
  (:first
   (&optional __first)
   (if __first (setq _first __first)) _first)
  (:second
   (&optional __second)
   (if __second (setq _second __second)) _second)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:serialization-length
   ()
   (+
    ;; uint32 _first
    4
    ;; uint32 _second
    4
    ;; string _output
    4 (length _output)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _first
       (write-long _first s)
     ;; uint32 _second
       (write-long _second s)
     ;; string _output
       (write-long (length _output) s) (princ _output s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _first
     (setq _first (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _second
     (setq _second (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _output
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _output (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pkg::complexMsg :md5sum-) "f32a42f2c7e66e689db49e99986c6e91")
(setf (get pkg::complexMsg :datatype-) "pkg/complexMsg")
(setf (get pkg::complexMsg :definition-)
      "uint32 first
uint32 second
string output

")



(provide :pkg/complexMsg "f32a42f2c7e66e689db49e99986c6e91")


