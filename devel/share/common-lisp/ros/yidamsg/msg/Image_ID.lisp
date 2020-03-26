; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude Image_ID.msg.html

(cl:defclass <Image_ID> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass Image_ID (<Image_ID>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Image_ID>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Image_ID)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<Image_ID> is deprecated: use yidamsg-msg:Image_ID instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Image_ID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:id-val is deprecated.  Use yidamsg-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Image_ID>) ostream)
  "Serializes a message object of type '<Image_ID>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Image_ID>) istream)
  "Deserializes a message object of type '<Image_ID>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Image_ID>)))
  "Returns string type for a message object of type '<Image_ID>"
  "yidamsg/Image_ID")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Image_ID)))
  "Returns string type for a message object of type 'Image_ID"
  "yidamsg/Image_ID")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Image_ID>)))
  "Returns md5sum for a message object of type '<Image_ID>"
  "c5e4a7d59c68f74eabcec876a00216aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Image_ID)))
  "Returns md5sum for a message object of type 'Image_ID"
  "c5e4a7d59c68f74eabcec876a00216aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Image_ID>)))
  "Returns full string definition for message of type '<Image_ID>"
  (cl:format cl:nil "int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Image_ID)))
  "Returns full string definition for message of type 'Image_ID"
  (cl:format cl:nil "int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Image_ID>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Image_ID>))
  "Converts a ROS message object to a list"
  (cl:list 'Image_ID
    (cl:cons ':id (id msg))
))
