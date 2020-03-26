; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude yuntai_control.msg.html

(cl:defclass <yuntai_control> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform "")
   (number
    :reader number
    :initarg :number
    :type cl:integer
    :initform 0)
   (step
    :reader step
    :initarg :step
    :type cl:integer
    :initform 0))
)

(cl:defclass yuntai_control (<yuntai_control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <yuntai_control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'yuntai_control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<yuntai_control> is deprecated: use yidamsg-msg:yuntai_control instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <yuntai_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:direction-val is deprecated.  Use yidamsg-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <yuntai_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:number-val is deprecated.  Use yidamsg-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'step-val :lambda-list '(m))
(cl:defmethod step-val ((m <yuntai_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:step-val is deprecated.  Use yidamsg-msg:step instead.")
  (step m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <yuntai_control>) ostream)
  "Serializes a message object of type '<yuntai_control>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
  (cl:let* ((signed (cl:slot-value msg 'number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'step)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <yuntai_control>) istream)
  "Deserializes a message object of type '<yuntai_control>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'step) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<yuntai_control>)))
  "Returns string type for a message object of type '<yuntai_control>"
  "yidamsg/yuntai_control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'yuntai_control)))
  "Returns string type for a message object of type 'yuntai_control"
  "yidamsg/yuntai_control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<yuntai_control>)))
  "Returns md5sum for a message object of type '<yuntai_control>"
  "156cafb639634b7b2cda09c35c8b845f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'yuntai_control)))
  "Returns md5sum for a message object of type 'yuntai_control"
  "156cafb639634b7b2cda09c35c8b845f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<yuntai_control>)))
  "Returns full string definition for message of type '<yuntai_control>"
  (cl:format cl:nil "string direction~%int32 number~%int32 step~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'yuntai_control)))
  "Returns full string definition for message of type 'yuntai_control"
  (cl:format cl:nil "string direction~%int32 number~%int32 step~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <yuntai_control>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'direction))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <yuntai_control>))
  "Converts a ROS message object to a list"
  (cl:list 'yuntai_control
    (cl:cons ':direction (direction msg))
    (cl:cons ':number (number msg))
    (cl:cons ':step (step msg))
))
