; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude take_photo.msg.html

(cl:defclass <take_photo> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:integer
    :initform 0))
)

(cl:defclass take_photo (<take_photo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <take_photo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'take_photo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<take_photo> is deprecated: use yidamsg-msg:take_photo instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <take_photo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:flag-val is deprecated.  Use yidamsg-msg:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <take_photo>) ostream)
  "Serializes a message object of type '<take_photo>"
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <take_photo>) istream)
  "Deserializes a message object of type '<take_photo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<take_photo>)))
  "Returns string type for a message object of type '<take_photo>"
  "yidamsg/take_photo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'take_photo)))
  "Returns string type for a message object of type 'take_photo"
  "yidamsg/take_photo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<take_photo>)))
  "Returns md5sum for a message object of type '<take_photo>"
  "aa0dbc5596ec12974ea3a17a045b36e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'take_photo)))
  "Returns md5sum for a message object of type 'take_photo"
  "aa0dbc5596ec12974ea3a17a045b36e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<take_photo>)))
  "Returns full string definition for message of type '<take_photo>"
  (cl:format cl:nil "int32 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'take_photo)))
  "Returns full string definition for message of type 'take_photo"
  (cl:format cl:nil "int32 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <take_photo>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <take_photo>))
  "Converts a ROS message object to a list"
  (cl:list 'take_photo
    (cl:cons ':flag (flag msg))
))
