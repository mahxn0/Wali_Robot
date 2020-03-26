; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude walle_wakeup.msg.html

(cl:defclass <walle_wakeup> (roslisp-msg-protocol:ros-message)
  ((wakeup
    :reader wakeup
    :initarg :wakeup
    :type cl:integer
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:integer
    :initform 0)
   (key_word
    :reader key_word
    :initarg :key_word
    :type cl:string
    :initform ""))
)

(cl:defclass walle_wakeup (<walle_wakeup>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <walle_wakeup>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'walle_wakeup)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<walle_wakeup> is deprecated: use yidamsg-msg:walle_wakeup instead.")))

(cl:ensure-generic-function 'wakeup-val :lambda-list '(m))
(cl:defmethod wakeup-val ((m <walle_wakeup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:wakeup-val is deprecated.  Use yidamsg-msg:wakeup instead.")
  (wakeup m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <walle_wakeup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:score-val is deprecated.  Use yidamsg-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'key_word-val :lambda-list '(m))
(cl:defmethod key_word-val ((m <walle_wakeup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:key_word-val is deprecated.  Use yidamsg-msg:key_word instead.")
  (key_word m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <walle_wakeup>) ostream)
  "Serializes a message object of type '<walle_wakeup>"
  (cl:let* ((signed (cl:slot-value msg 'wakeup)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'score)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key_word))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key_word))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <walle_wakeup>) istream)
  "Deserializes a message object of type '<walle_wakeup>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wakeup) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'score) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key_word) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key_word) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<walle_wakeup>)))
  "Returns string type for a message object of type '<walle_wakeup>"
  "yidamsg/walle_wakeup")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'walle_wakeup)))
  "Returns string type for a message object of type 'walle_wakeup"
  "yidamsg/walle_wakeup")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<walle_wakeup>)))
  "Returns md5sum for a message object of type '<walle_wakeup>"
  "0b832037d6e61fd58c7aa70efb2709b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'walle_wakeup)))
  "Returns md5sum for a message object of type 'walle_wakeup"
  "0b832037d6e61fd58c7aa70efb2709b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<walle_wakeup>)))
  "Returns full string definition for message of type '<walle_wakeup>"
  (cl:format cl:nil "int32 wakeup~%int32 score~%string key_word~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'walle_wakeup)))
  "Returns full string definition for message of type 'walle_wakeup"
  (cl:format cl:nil "int32 wakeup~%int32 score~%string key_word~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <walle_wakeup>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'key_word))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <walle_wakeup>))
  "Converts a ROS message object to a list"
  (cl:list 'walle_wakeup
    (cl:cons ':wakeup (wakeup msg))
    (cl:cons ':score (score msg))
    (cl:cons ':key_word (key_word msg))
))
