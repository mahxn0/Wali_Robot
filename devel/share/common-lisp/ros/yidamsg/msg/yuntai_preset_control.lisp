; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude yuntai_preset_control.msg.html

(cl:defclass <yuntai_preset_control> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (horizontal
    :reader horizontal
    :initarg :horizontal
    :type cl:integer
    :initform 0)
   (vertical
    :reader vertical
    :initarg :vertical
    :type cl:integer
    :initform 0)
   (focus
    :reader focus
    :initarg :focus
    :type cl:integer
    :initform 0))
)

(cl:defclass yuntai_preset_control (<yuntai_preset_control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <yuntai_preset_control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'yuntai_preset_control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<yuntai_preset_control> is deprecated: use yidamsg-msg:yuntai_preset_control instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <yuntai_preset_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:id-val is deprecated.  Use yidamsg-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'horizontal-val :lambda-list '(m))
(cl:defmethod horizontal-val ((m <yuntai_preset_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:horizontal-val is deprecated.  Use yidamsg-msg:horizontal instead.")
  (horizontal m))

(cl:ensure-generic-function 'vertical-val :lambda-list '(m))
(cl:defmethod vertical-val ((m <yuntai_preset_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:vertical-val is deprecated.  Use yidamsg-msg:vertical instead.")
  (vertical m))

(cl:ensure-generic-function 'focus-val :lambda-list '(m))
(cl:defmethod focus-val ((m <yuntai_preset_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:focus-val is deprecated.  Use yidamsg-msg:focus instead.")
  (focus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <yuntai_preset_control>) ostream)
  "Serializes a message object of type '<yuntai_preset_control>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'horizontal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vertical)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'focus)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <yuntai_preset_control>) istream)
  "Deserializes a message object of type '<yuntai_preset_control>"
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
      (cl:setf (cl:slot-value msg 'horizontal) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vertical) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'focus) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<yuntai_preset_control>)))
  "Returns string type for a message object of type '<yuntai_preset_control>"
  "yidamsg/yuntai_preset_control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'yuntai_preset_control)))
  "Returns string type for a message object of type 'yuntai_preset_control"
  "yidamsg/yuntai_preset_control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<yuntai_preset_control>)))
  "Returns md5sum for a message object of type '<yuntai_preset_control>"
  "7c1b995bdb29e4b1c0fa2508de065fb9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'yuntai_preset_control)))
  "Returns md5sum for a message object of type 'yuntai_preset_control"
  "7c1b995bdb29e4b1c0fa2508de065fb9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<yuntai_preset_control>)))
  "Returns full string definition for message of type '<yuntai_preset_control>"
  (cl:format cl:nil "int32 id~%int32 horizontal~%int32 vertical~%int32 focus~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'yuntai_preset_control)))
  "Returns full string definition for message of type 'yuntai_preset_control"
  (cl:format cl:nil "int32 id~%int32 horizontal~%int32 vertical~%int32 focus~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <yuntai_preset_control>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <yuntai_preset_control>))
  "Converts a ROS message object to a list"
  (cl:list 'yuntai_preset_control
    (cl:cons ':id (id msg))
    (cl:cons ':horizontal (horizontal msg))
    (cl:cons ':vertical (vertical msg))
    (cl:cons ':focus (focus msg))
))
