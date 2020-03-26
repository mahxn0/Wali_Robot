; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude yuntai_reset_control.msg.html

(cl:defclass <yuntai_reset_control> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass yuntai_reset_control (<yuntai_reset_control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <yuntai_reset_control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'yuntai_reset_control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<yuntai_reset_control> is deprecated: use yidamsg-msg:yuntai_reset_control instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <yuntai_reset_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:id-val is deprecated.  Use yidamsg-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <yuntai_reset_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:data-val is deprecated.  Use yidamsg-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <yuntai_reset_control>) ostream)
  "Serializes a message object of type '<yuntai_reset_control>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <yuntai_reset_control>) istream)
  "Deserializes a message object of type '<yuntai_reset_control>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<yuntai_reset_control>)))
  "Returns string type for a message object of type '<yuntai_reset_control>"
  "yidamsg/yuntai_reset_control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'yuntai_reset_control)))
  "Returns string type for a message object of type 'yuntai_reset_control"
  "yidamsg/yuntai_reset_control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<yuntai_reset_control>)))
  "Returns md5sum for a message object of type '<yuntai_reset_control>"
  "4058467a01f926ba3bf7b0d5498ea1a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'yuntai_reset_control)))
  "Returns md5sum for a message object of type 'yuntai_reset_control"
  "4058467a01f926ba3bf7b0d5498ea1a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<yuntai_reset_control>)))
  "Returns full string definition for message of type '<yuntai_reset_control>"
  (cl:format cl:nil "int32 id~%int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'yuntai_reset_control)))
  "Returns full string definition for message of type 'yuntai_reset_control"
  (cl:format cl:nil "int32 id~%int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <yuntai_reset_control>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <yuntai_reset_control>))
  "Converts a ROS message object to a list"
  (cl:list 'yuntai_reset_control
    (cl:cons ':id (id msg))
    (cl:cons ':data (data msg))
))
