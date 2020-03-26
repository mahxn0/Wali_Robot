; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude walle_speech_recognition.msg.html

(cl:defclass <walle_speech_recognition> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:float
    :initform 0.0)
   (cmd_id
    :reader cmd_id
    :initarg :cmd_id
    :type cl:integer
    :initform 0)
   (txt
    :reader txt
    :initarg :txt
    :type cl:string
    :initform ""))
)

(cl:defclass walle_speech_recognition (<walle_speech_recognition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <walle_speech_recognition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'walle_speech_recognition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<walle_speech_recognition> is deprecated: use yidamsg-msg:walle_speech_recognition instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <walle_speech_recognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:direction-val is deprecated.  Use yidamsg-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <walle_speech_recognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:cmd_id-val is deprecated.  Use yidamsg-msg:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'txt-val :lambda-list '(m))
(cl:defmethod txt-val ((m <walle_speech_recognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:txt-val is deprecated.  Use yidamsg-msg:txt instead.")
  (txt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <walle_speech_recognition>) ostream)
  "Serializes a message object of type '<walle_speech_recognition>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'cmd_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'txt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'txt))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <walle_speech_recognition>) istream)
  "Deserializes a message object of type '<walle_speech_recognition>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'direction) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'txt) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'txt) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<walle_speech_recognition>)))
  "Returns string type for a message object of type '<walle_speech_recognition>"
  "yidamsg/walle_speech_recognition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'walle_speech_recognition)))
  "Returns string type for a message object of type 'walle_speech_recognition"
  "yidamsg/walle_speech_recognition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<walle_speech_recognition>)))
  "Returns md5sum for a message object of type '<walle_speech_recognition>"
  "0c1479f10a37544af7437fcac2573154")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'walle_speech_recognition)))
  "Returns md5sum for a message object of type 'walle_speech_recognition"
  "0c1479f10a37544af7437fcac2573154")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<walle_speech_recognition>)))
  "Returns full string definition for message of type '<walle_speech_recognition>"
  (cl:format cl:nil "float32 direction~%int32 cmd_id~%string txt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'walle_speech_recognition)))
  "Returns full string definition for message of type 'walle_speech_recognition"
  (cl:format cl:nil "float32 direction~%int32 cmd_id~%string txt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <walle_speech_recognition>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'txt))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <walle_speech_recognition>))
  "Converts a ROS message object to a list"
  (cl:list 'walle_speech_recognition
    (cl:cons ':direction (direction msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':txt (txt msg))
))
