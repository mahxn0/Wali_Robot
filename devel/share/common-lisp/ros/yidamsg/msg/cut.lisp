; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude cut.msg.html

(cl:defclass <cut> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass cut (<cut>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cut>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cut)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<cut> is deprecated: use yidamsg-msg:cut instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <cut>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:data-val is deprecated.  Use yidamsg-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cut>) ostream)
  "Serializes a message object of type '<cut>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cut>) istream)
  "Deserializes a message object of type '<cut>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cut>)))
  "Returns string type for a message object of type '<cut>"
  "yidamsg/cut")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cut)))
  "Returns string type for a message object of type 'cut"
  "yidamsg/cut")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cut>)))
  "Returns md5sum for a message object of type '<cut>"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cut)))
  "Returns md5sum for a message object of type 'cut"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cut>)))
  "Returns full string definition for message of type '<cut>"
  (cl:format cl:nil "int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cut)))
  "Returns full string definition for message of type 'cut"
  (cl:format cl:nil "int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cut>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cut>))
  "Converts a ROS message object to a list"
  (cl:list 'cut
    (cl:cons ':data (data msg))
))
