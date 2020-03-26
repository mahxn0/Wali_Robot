; Auto-generated. Do not edit!


(cl:in-package yidamsg-srv)


;//! \htmlinclude OutHouse-request.msg.html

(cl:defclass <OutHouse-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass OutHouse-request (<OutHouse-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OutHouse-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OutHouse-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<OutHouse-request> is deprecated: use yidamsg-srv:OutHouse-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OutHouse-request>) ostream)
  "Serializes a message object of type '<OutHouse-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OutHouse-request>) istream)
  "Deserializes a message object of type '<OutHouse-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OutHouse-request>)))
  "Returns string type for a service object of type '<OutHouse-request>"
  "yidamsg/OutHouseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OutHouse-request)))
  "Returns string type for a service object of type 'OutHouse-request"
  "yidamsg/OutHouseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OutHouse-request>)))
  "Returns md5sum for a message object of type '<OutHouse-request>"
  "155f126039916cf5358a013a0efc2beb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OutHouse-request)))
  "Returns md5sum for a message object of type 'OutHouse-request"
  "155f126039916cf5358a013a0efc2beb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OutHouse-request>)))
  "Returns full string definition for message of type '<OutHouse-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OutHouse-request)))
  "Returns full string definition for message of type 'OutHouse-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OutHouse-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OutHouse-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OutHouse-request
))
;//! \htmlinclude OutHouse-response.msg.html

(cl:defclass <OutHouse-response> (roslisp-msg-protocol:ros-message)
  ((isdone
    :reader isdone
    :initarg :isdone
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass OutHouse-response (<OutHouse-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OutHouse-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OutHouse-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<OutHouse-response> is deprecated: use yidamsg-srv:OutHouse-response instead.")))

(cl:ensure-generic-function 'isdone-val :lambda-list '(m))
(cl:defmethod isdone-val ((m <OutHouse-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:isdone-val is deprecated.  Use yidamsg-srv:isdone instead.")
  (isdone m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OutHouse-response>) ostream)
  "Serializes a message object of type '<OutHouse-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isdone) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OutHouse-response>) istream)
  "Deserializes a message object of type '<OutHouse-response>"
    (cl:setf (cl:slot-value msg 'isdone) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OutHouse-response>)))
  "Returns string type for a service object of type '<OutHouse-response>"
  "yidamsg/OutHouseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OutHouse-response)))
  "Returns string type for a service object of type 'OutHouse-response"
  "yidamsg/OutHouseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OutHouse-response>)))
  "Returns md5sum for a message object of type '<OutHouse-response>"
  "155f126039916cf5358a013a0efc2beb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OutHouse-response)))
  "Returns md5sum for a message object of type 'OutHouse-response"
  "155f126039916cf5358a013a0efc2beb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OutHouse-response>)))
  "Returns full string definition for message of type '<OutHouse-response>"
  (cl:format cl:nil "bool isdone~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OutHouse-response)))
  "Returns full string definition for message of type 'OutHouse-response"
  (cl:format cl:nil "bool isdone~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OutHouse-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OutHouse-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OutHouse-response
    (cl:cons ':isdone (isdone msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OutHouse)))
  'OutHouse-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OutHouse)))
  'OutHouse-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OutHouse)))
  "Returns string type for a service object of type '<OutHouse>"
  "yidamsg/OutHouse")