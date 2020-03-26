; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude transfer.msg.html

(cl:defclass <transfer> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass transfer (<transfer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <transfer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'transfer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<transfer> is deprecated: use yidamsg-msg:transfer instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <transfer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:flag-val is deprecated.  Use yidamsg-msg:flag instead.")
  (flag m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <transfer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:data-val is deprecated.  Use yidamsg-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <transfer>) ostream)
  "Serializes a message object of type '<transfer>"
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <transfer>) istream)
  "Deserializes a message object of type '<transfer>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<transfer>)))
  "Returns string type for a message object of type '<transfer>"
  "yidamsg/transfer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'transfer)))
  "Returns string type for a message object of type 'transfer"
  "yidamsg/transfer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<transfer>)))
  "Returns md5sum for a message object of type '<transfer>"
  "f2150b2855ffbc6ac5af4fa33423a328")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'transfer)))
  "Returns md5sum for a message object of type 'transfer"
  "f2150b2855ffbc6ac5af4fa33423a328")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<transfer>)))
  "Returns full string definition for message of type '<transfer>"
  (cl:format cl:nil "int32 flag~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'transfer)))
  "Returns full string definition for message of type 'transfer"
  (cl:format cl:nil "int32 flag~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <transfer>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <transfer>))
  "Converts a ROS message object to a list"
  (cl:list 'transfer
    (cl:cons ':flag (flag msg))
    (cl:cons ':data (data msg))
))
