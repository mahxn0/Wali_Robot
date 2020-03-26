; Auto-generated. Do not edit!


(cl:in-package yidamsg-srv)


;//! \htmlinclude GoHouse-request.msg.html

(cl:defclass <GoHouse-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GoHouse-request (<GoHouse-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoHouse-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoHouse-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<GoHouse-request> is deprecated: use yidamsg-srv:GoHouse-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoHouse-request>) ostream)
  "Serializes a message object of type '<GoHouse-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoHouse-request>) istream)
  "Deserializes a message object of type '<GoHouse-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoHouse-request>)))
  "Returns string type for a service object of type '<GoHouse-request>"
  "yidamsg/GoHouseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoHouse-request)))
  "Returns string type for a service object of type 'GoHouse-request"
  "yidamsg/GoHouseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoHouse-request>)))
  "Returns md5sum for a message object of type '<GoHouse-request>"
  "155f126039916cf5358a013a0efc2beb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoHouse-request)))
  "Returns md5sum for a message object of type 'GoHouse-request"
  "155f126039916cf5358a013a0efc2beb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoHouse-request>)))
  "Returns full string definition for message of type '<GoHouse-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoHouse-request)))
  "Returns full string definition for message of type 'GoHouse-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoHouse-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoHouse-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoHouse-request
))
;//! \htmlinclude GoHouse-response.msg.html

(cl:defclass <GoHouse-response> (roslisp-msg-protocol:ros-message)
  ((isdone
    :reader isdone
    :initarg :isdone
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GoHouse-response (<GoHouse-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoHouse-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoHouse-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<GoHouse-response> is deprecated: use yidamsg-srv:GoHouse-response instead.")))

(cl:ensure-generic-function 'isdone-val :lambda-list '(m))
(cl:defmethod isdone-val ((m <GoHouse-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:isdone-val is deprecated.  Use yidamsg-srv:isdone instead.")
  (isdone m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoHouse-response>) ostream)
  "Serializes a message object of type '<GoHouse-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isdone) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoHouse-response>) istream)
  "Deserializes a message object of type '<GoHouse-response>"
    (cl:setf (cl:slot-value msg 'isdone) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoHouse-response>)))
  "Returns string type for a service object of type '<GoHouse-response>"
  "yidamsg/GoHouseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoHouse-response)))
  "Returns string type for a service object of type 'GoHouse-response"
  "yidamsg/GoHouseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoHouse-response>)))
  "Returns md5sum for a message object of type '<GoHouse-response>"
  "155f126039916cf5358a013a0efc2beb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoHouse-response)))
  "Returns md5sum for a message object of type 'GoHouse-response"
  "155f126039916cf5358a013a0efc2beb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoHouse-response>)))
  "Returns full string definition for message of type '<GoHouse-response>"
  (cl:format cl:nil "bool isdone~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoHouse-response)))
  "Returns full string definition for message of type 'GoHouse-response"
  (cl:format cl:nil "bool isdone~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoHouse-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoHouse-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoHouse-response
    (cl:cons ':isdone (isdone msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoHouse)))
  'GoHouse-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoHouse)))
  'GoHouse-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoHouse)))
  "Returns string type for a service object of type '<GoHouse>"
  "yidamsg/GoHouse")