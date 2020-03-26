; Auto-generated. Do not edit!


(cl:in-package yidamsg-srv)


;//! \htmlinclude isInAutoCharger-request.msg.html

(cl:defclass <isInAutoCharger-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass isInAutoCharger-request (<isInAutoCharger-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <isInAutoCharger-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'isInAutoCharger-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<isInAutoCharger-request> is deprecated: use yidamsg-srv:isInAutoCharger-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <isInAutoCharger-request>) ostream)
  "Serializes a message object of type '<isInAutoCharger-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <isInAutoCharger-request>) istream)
  "Deserializes a message object of type '<isInAutoCharger-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<isInAutoCharger-request>)))
  "Returns string type for a service object of type '<isInAutoCharger-request>"
  "yidamsg/isInAutoChargerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'isInAutoCharger-request)))
  "Returns string type for a service object of type 'isInAutoCharger-request"
  "yidamsg/isInAutoChargerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<isInAutoCharger-request>)))
  "Returns md5sum for a message object of type '<isInAutoCharger-request>"
  "aec8fd091cfc40eae9abfae81e035982")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'isInAutoCharger-request)))
  "Returns md5sum for a message object of type 'isInAutoCharger-request"
  "aec8fd091cfc40eae9abfae81e035982")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<isInAutoCharger-request>)))
  "Returns full string definition for message of type '<isInAutoCharger-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'isInAutoCharger-request)))
  "Returns full string definition for message of type 'isInAutoCharger-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <isInAutoCharger-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <isInAutoCharger-request>))
  "Converts a ROS message object to a list"
  (cl:list 'isInAutoCharger-request
))
;//! \htmlinclude isInAutoCharger-response.msg.html

(cl:defclass <isInAutoCharger-response> (roslisp-msg-protocol:ros-message)
  ((isCharging
    :reader isCharging
    :initarg :isCharging
    :type cl:integer
    :initform 0))
)

(cl:defclass isInAutoCharger-response (<isInAutoCharger-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <isInAutoCharger-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'isInAutoCharger-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<isInAutoCharger-response> is deprecated: use yidamsg-srv:isInAutoCharger-response instead.")))

(cl:ensure-generic-function 'isCharging-val :lambda-list '(m))
(cl:defmethod isCharging-val ((m <isInAutoCharger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:isCharging-val is deprecated.  Use yidamsg-srv:isCharging instead.")
  (isCharging m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <isInAutoCharger-response>) ostream)
  "Serializes a message object of type '<isInAutoCharger-response>"
  (cl:let* ((signed (cl:slot-value msg 'isCharging)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <isInAutoCharger-response>) istream)
  "Deserializes a message object of type '<isInAutoCharger-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'isCharging) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<isInAutoCharger-response>)))
  "Returns string type for a service object of type '<isInAutoCharger-response>"
  "yidamsg/isInAutoChargerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'isInAutoCharger-response)))
  "Returns string type for a service object of type 'isInAutoCharger-response"
  "yidamsg/isInAutoChargerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<isInAutoCharger-response>)))
  "Returns md5sum for a message object of type '<isInAutoCharger-response>"
  "aec8fd091cfc40eae9abfae81e035982")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'isInAutoCharger-response)))
  "Returns md5sum for a message object of type 'isInAutoCharger-response"
  "aec8fd091cfc40eae9abfae81e035982")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<isInAutoCharger-response>)))
  "Returns full string definition for message of type '<isInAutoCharger-response>"
  (cl:format cl:nil "int32 isCharging~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'isInAutoCharger-response)))
  "Returns full string definition for message of type 'isInAutoCharger-response"
  (cl:format cl:nil "int32 isCharging~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <isInAutoCharger-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <isInAutoCharger-response>))
  "Converts a ROS message object to a list"
  (cl:list 'isInAutoCharger-response
    (cl:cons ':isCharging (isCharging msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'isInAutoCharger)))
  'isInAutoCharger-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'isInAutoCharger)))
  'isInAutoCharger-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'isInAutoCharger)))
  "Returns string type for a service object of type '<isInAutoCharger>"
  "yidamsg/isInAutoCharger")