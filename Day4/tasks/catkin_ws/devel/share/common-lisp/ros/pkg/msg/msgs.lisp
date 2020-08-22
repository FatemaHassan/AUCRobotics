; Auto-generated. Do not edit!


(cl:in-package pkg-msg)


;//! \htmlinclude msgs.msg.html

(cl:defclass <msgs> (roslisp-msg-protocol:ros-message)
  ((first
    :reader first
    :initarg :first
    :type cl:integer
    :initform 0)
   (second
    :reader second
    :initarg :second
    :type cl:integer
    :initform 0)
   (ouput
    :reader ouput
    :initarg :ouput
    :type cl:string
    :initform ""))
)

(cl:defclass msgs (<msgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg-msg:<msgs> is deprecated: use pkg-msg:msgs instead.")))

(cl:ensure-generic-function 'first-val :lambda-list '(m))
(cl:defmethod first-val ((m <msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg-msg:first-val is deprecated.  Use pkg-msg:first instead.")
  (first m))

(cl:ensure-generic-function 'second-val :lambda-list '(m))
(cl:defmethod second-val ((m <msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg-msg:second-val is deprecated.  Use pkg-msg:second instead.")
  (second m))

(cl:ensure-generic-function 'ouput-val :lambda-list '(m))
(cl:defmethod ouput-val ((m <msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg-msg:ouput-val is deprecated.  Use pkg-msg:ouput instead.")
  (ouput m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgs>) ostream)
  "Serializes a message object of type '<msgs>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'first)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'first)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'first)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'first)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'second)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'second)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'second)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'second)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ouput))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ouput))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgs>) istream)
  "Deserializes a message object of type '<msgs>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'first)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'first)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'first)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'first)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'second)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'second)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'second)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'second)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ouput) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ouput) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgs>)))
  "Returns string type for a message object of type '<msgs>"
  "pkg/msgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgs)))
  "Returns string type for a message object of type 'msgs"
  "pkg/msgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgs>)))
  "Returns md5sum for a message object of type '<msgs>"
  "f79bb8aaacd7d31ffc3bb63e0298610a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgs)))
  "Returns md5sum for a message object of type 'msgs"
  "f79bb8aaacd7d31ffc3bb63e0298610a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgs>)))
  "Returns full string definition for message of type '<msgs>"
  (cl:format cl:nil "uint32 first~%uint32 second~%string ouput~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgs)))
  "Returns full string definition for message of type 'msgs"
  (cl:format cl:nil "uint32 first~%uint32 second~%string ouput~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgs>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'ouput))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgs>))
  "Converts a ROS message object to a list"
  (cl:list 'msgs
    (cl:cons ':first (first msg))
    (cl:cons ':second (second msg))
    (cl:cons ':ouput (ouput msg))
))
