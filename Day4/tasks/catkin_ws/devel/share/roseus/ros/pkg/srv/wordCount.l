;; Auto-generated. Do not edit!


(when (boundp 'pkg::wordCount)
  (if (not (find-package "PKG"))
    (make-package "PKG"))
  (shadow 'wordCount (find-package "PKG")))
(unless (find-package "PKG::WORDCOUNT")
  (make-package "PKG::WORDCOUNT"))
(unless (find-package "PKG::WORDCOUNTREQUEST")
  (make-package "PKG::WORDCOUNTREQUEST"))
(unless (find-package "PKG::WORDCOUNTRESPONSE")
  (make-package "PKG::WORDCOUNTRESPONSE"))

(in-package "ROS")





(defclass pkg::wordCountRequest
  :super ros::object
  :slots (_words ))

(defmethod pkg::wordCountRequest
  (:init
   (&key
    ((:words __words) "")
    )
   (send-super :init)
   (setq _words (string __words))
   self)
  (:words
   (&optional __words)
   (if __words (setq _words __words)) _words)
  (:serialization-length
   ()
   (+
    ;; string _words
    4 (length _words)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _words
       (write-long (length _words) s) (princ _words s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _words
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _words (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pkg::wordCountResponse
  :super ros::object
  :slots (_count ))

(defmethod pkg::wordCountResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; uint32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pkg::wordCount
  :super ros::object
  :slots ())

(setf (get pkg::wordCount :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get pkg::wordCount :datatype-) "pkg/wordCount")
(setf (get pkg::wordCount :request) pkg::wordCountRequest)
(setf (get pkg::wordCount :response) pkg::wordCountResponse)

(defmethod pkg::wordCountRequest
  (:response () (instance pkg::wordCountResponse :init)))

(setf (get pkg::wordCountRequest :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get pkg::wordCountRequest :datatype-) "pkg/wordCountRequest")
(setf (get pkg::wordCountRequest :definition-)
      "string words
---
uint32 count

")

(setf (get pkg::wordCountResponse :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get pkg::wordCountResponse :datatype-) "pkg/wordCountResponse")
(setf (get pkg::wordCountResponse :definition-)
      "string words
---
uint32 count

")



(provide :pkg/wordCount "58903d21a3264f3408d79ba79e9f7c7e")


