; Auto-generated. Do not edit!


(cl:in-package pkg-msg)


;//! \htmlinclude complexMsg.msg.html

(cl:defclass <complexMsg> (roslisp-msg-protocol:ros-message)
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
   (output
    :reader output
    :initarg :output
    :type cl:string
    :initform ""))
)

(cl:defclass complexMsg (<complexMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <complexMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'complexMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg-msg:<complexMsg> is deprecated: use pkg-msg:complexMsg instead.")))

(cl:ensure-generic-function 'first-val :lambda-list '(m))
(cl:defmethod first-val ((m <complexMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg-msg:first-val is deprecated.  Use pkg-msg:first instead.")
  (first m))

(cl:ensure-generic-function 'second-val :lambda-list '(m))
(cl:defmethod second-val ((m <complexMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg-msg:second-val is deprecated.  Use pkg-msg:second instead.")
  (second m))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <complexMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg-msg:output-val is deprecated.  Use pkg-msg:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <complexMsg>) ostream)
  "Serializes a message object of type '<complexMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'first)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'first)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'first)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'first)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'second)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'second)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'second)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'second)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'output))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <complexMsg>) istream)
  "Deserializes a message object of type '<complexMsg>"
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
      (cl:setf (cl:slot-value msg 'output) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'output) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<complexMsg>)))
  "Returns string type for a message object of type '<complexMsg>"
  "pkg/complexMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'complexMsg)))
  "Returns string type for a message object of type 'complexMsg"
  "pkg/complexMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<complexMsg>)))
  "Returns md5sum for a message object of type '<complexMsg>"
  "f32a42f2c7e66e689db49e99986c6e91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'complexMsg)))
  "Returns md5sum for a message object of type 'complexMsg"
  "f32a42f2c7e66e689db49e99986c6e91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<complexMsg>)))
  "Returns full string definition for message of type '<complexMsg>"
  (cl:format cl:nil "uint32 first~%uint32 second~%string output~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'complexMsg)))
  "Returns full string definition for message of type 'complexMsg"
  (cl:format cl:nil "uint32 first~%uint32 second~%string output~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <complexMsg>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <complexMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'complexMsg
    (cl:cons ':first (first msg))
    (cl:cons ':second (second msg))
    (cl:cons ':output (output msg))
))
