; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude fly_ctl.msg.html

(cl:defclass <fly_ctl> (roslisp-msg-protocol:ros-message)
  ((channel
    :reader channel
    :initarg :channel
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:fixnum
    :initform 0))
)

(cl:defclass fly_ctl (<fly_ctl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fly_ctl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fly_ctl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<fly_ctl> is deprecated: use yidamsg-msg:fly_ctl instead.")))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <fly_ctl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:channel-val is deprecated.  Use yidamsg-msg:channel instead.")
  (channel m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <fly_ctl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:data-val is deprecated.  Use yidamsg-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fly_ctl>) ostream)
  "Serializes a message object of type '<fly_ctl>"
  (cl:let* ((signed (cl:slot-value msg 'channel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fly_ctl>) istream)
  "Deserializes a message object of type '<fly_ctl>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'channel) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fly_ctl>)))
  "Returns string type for a message object of type '<fly_ctl>"
  "yidamsg/fly_ctl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fly_ctl)))
  "Returns string type for a message object of type 'fly_ctl"
  "yidamsg/fly_ctl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fly_ctl>)))
  "Returns md5sum for a message object of type '<fly_ctl>"
  "5d986998f9a980ae4301ea3b5442b289")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fly_ctl)))
  "Returns md5sum for a message object of type 'fly_ctl"
  "5d986998f9a980ae4301ea3b5442b289")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fly_ctl>)))
  "Returns full string definition for message of type '<fly_ctl>"
  (cl:format cl:nil "int16 channel~%int16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fly_ctl)))
  "Returns full string definition for message of type 'fly_ctl"
  (cl:format cl:nil "int16 channel~%int16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fly_ctl>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fly_ctl>))
  "Converts a ROS message object to a list"
  (cl:list 'fly_ctl
    (cl:cons ':channel (channel msg))
    (cl:cons ':data (data msg))
))
