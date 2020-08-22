; Auto-generated. Do not edit!


(cl:in-package pkg-msg)


;//! \htmlinclude msgs.msg.html

(cl:defclass <msgs> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass msgs (<msgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg-msg:<msgs> is deprecated: use pkg-msg:msgs instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgs>) ostream)
  "Serializes a message object of type '<msgs>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgs>) istream)
  "Deserializes a message object of type '<msgs>"
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
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgs)))
  "Returns md5sum for a message object of type 'msgs"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgs>)))
  "Returns full string definition for message of type '<msgs>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgs)))
  "Returns full string definition for message of type 'msgs"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgs>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgs>))
  "Converts a ROS message object to a list"
  (cl:list 'msgs
))
