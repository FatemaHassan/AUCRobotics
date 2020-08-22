; Auto-generated. Do not edit!


(cl:in-package pkg-srv)


;//! \htmlinclude servs-request.msg.html

(cl:defclass <servs-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass servs-request (<servs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <servs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'servs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg-srv:<servs-request> is deprecated: use pkg-srv:servs-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <servs-request>) ostream)
  "Serializes a message object of type '<servs-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <servs-request>) istream)
  "Deserializes a message object of type '<servs-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<servs-request>)))
  "Returns string type for a service object of type '<servs-request>"
  "pkg/servsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'servs-request)))
  "Returns string type for a service object of type 'servs-request"
  "pkg/servsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<servs-request>)))
  "Returns md5sum for a message object of type '<servs-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'servs-request)))
  "Returns md5sum for a message object of type 'servs-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<servs-request>)))
  "Returns full string definition for message of type '<servs-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'servs-request)))
  "Returns full string definition for message of type 'servs-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <servs-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <servs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'servs-request
))
;//! \htmlinclude servs-response.msg.html

(cl:defclass <servs-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass servs-response (<servs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <servs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'servs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg-srv:<servs-response> is deprecated: use pkg-srv:servs-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <servs-response>) ostream)
  "Serializes a message object of type '<servs-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <servs-response>) istream)
  "Deserializes a message object of type '<servs-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<servs-response>)))
  "Returns string type for a service object of type '<servs-response>"
  "pkg/servsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'servs-response)))
  "Returns string type for a service object of type 'servs-response"
  "pkg/servsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<servs-response>)))
  "Returns md5sum for a message object of type '<servs-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'servs-response)))
  "Returns md5sum for a message object of type 'servs-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<servs-response>)))
  "Returns full string definition for message of type '<servs-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'servs-response)))
  "Returns full string definition for message of type 'servs-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <servs-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <servs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'servs-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'servs)))
  'servs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'servs)))
  'servs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'servs)))
  "Returns string type for a service object of type '<servs>"
  "pkg/servs")