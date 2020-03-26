; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude ultrasound.msg.html

(cl:defclass <ultrasound> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ultrasound (<ultrasound>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ultrasound>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ultrasound)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<ultrasound> is deprecated: use yidamsg-msg:ultrasound instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ultrasound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:name-val is deprecated.  Use yidamsg-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <ultrasound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:flag-val is deprecated.  Use yidamsg-msg:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ultrasound>) ostream)
  "Serializes a message object of type '<ultrasound>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ultrasound>) istream)
  "Deserializes a message object of type '<ultrasound>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ultrasound>)))
  "Returns string type for a message object of type '<ultrasound>"
  "yidamsg/ultrasound")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultrasound)))
  "Returns string type for a message object of type 'ultrasound"
  "yidamsg/ultrasound")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ultrasound>)))
  "Returns md5sum for a message object of type '<ultrasound>"
  "fa8685813b62f3b6086d58d33320cb55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultrasound)))
  "Returns md5sum for a message object of type 'ultrasound"
  "fa8685813b62f3b6086d58d33320cb55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ultrasound>)))
  "Returns full string definition for message of type '<ultrasound>"
  (cl:format cl:nil "string name~%int16 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ultrasound)))
  "Returns full string definition for message of type 'ultrasound"
  (cl:format cl:nil "string name~%int16 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ultrasound>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ultrasound>))
  "Converts a ROS message object to a list"
  (cl:list 'ultrasound
    (cl:cons ':name (name msg))
    (cl:cons ':flag (flag msg))
))
