; Auto-generated. Do not edit!


(cl:in-package yidamsg-srv)


;//! \htmlinclude walle_audio_broadcase-request.msg.html

(cl:defclass <walle_audio_broadcase-request> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (file_type
    :reader file_type
    :initarg :file_type
    :type cl:integer
    :initform 0)
   (audio_file_id
    :reader audio_file_id
    :initarg :audio_file_id
    :type cl:integer
    :initform 0))
)

(cl:defclass walle_audio_broadcase-request (<walle_audio_broadcase-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <walle_audio_broadcase-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'walle_audio_broadcase-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<walle_audio_broadcase-request> is deprecated: use yidamsg-srv:walle_audio_broadcase-request instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <walle_audio_broadcase-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:text-val is deprecated.  Use yidamsg-srv:text instead.")
  (text m))

(cl:ensure-generic-function 'file_type-val :lambda-list '(m))
(cl:defmethod file_type-val ((m <walle_audio_broadcase-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:file_type-val is deprecated.  Use yidamsg-srv:file_type instead.")
  (file_type m))

(cl:ensure-generic-function 'audio_file_id-val :lambda-list '(m))
(cl:defmethod audio_file_id-val ((m <walle_audio_broadcase-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:audio_file_id-val is deprecated.  Use yidamsg-srv:audio_file_id instead.")
  (audio_file_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <walle_audio_broadcase-request>) ostream)
  "Serializes a message object of type '<walle_audio_broadcase-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:let* ((signed (cl:slot-value msg 'file_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'audio_file_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <walle_audio_broadcase-request>) istream)
  "Deserializes a message object of type '<walle_audio_broadcase-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'audio_file_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<walle_audio_broadcase-request>)))
  "Returns string type for a service object of type '<walle_audio_broadcase-request>"
  "yidamsg/walle_audio_broadcaseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'walle_audio_broadcase-request)))
  "Returns string type for a service object of type 'walle_audio_broadcase-request"
  "yidamsg/walle_audio_broadcaseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<walle_audio_broadcase-request>)))
  "Returns md5sum for a message object of type '<walle_audio_broadcase-request>"
  "c70e73c81cb721a8bec49fb714a48e28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'walle_audio_broadcase-request)))
  "Returns md5sum for a message object of type 'walle_audio_broadcase-request"
  "c70e73c81cb721a8bec49fb714a48e28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<walle_audio_broadcase-request>)))
  "Returns full string definition for message of type '<walle_audio_broadcase-request>"
  (cl:format cl:nil "string text~%int32 file_type~%int32 audio_file_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'walle_audio_broadcase-request)))
  "Returns full string definition for message of type 'walle_audio_broadcase-request"
  (cl:format cl:nil "string text~%int32 file_type~%int32 audio_file_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <walle_audio_broadcase-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <walle_audio_broadcase-request>))
  "Converts a ROS message object to a list"
  (cl:list 'walle_audio_broadcase-request
    (cl:cons ':text (text msg))
    (cl:cons ':file_type (file_type msg))
    (cl:cons ':audio_file_id (audio_file_id msg))
))
;//! \htmlinclude walle_audio_broadcase-response.msg.html

(cl:defclass <walle_audio_broadcase-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (status_code
    :reader status_code
    :initarg :status_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass walle_audio_broadcase-response (<walle_audio_broadcase-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <walle_audio_broadcase-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'walle_audio_broadcase-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<walle_audio_broadcase-response> is deprecated: use yidamsg-srv:walle_audio_broadcase-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <walle_audio_broadcase-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:message-val is deprecated.  Use yidamsg-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'status_code-val :lambda-list '(m))
(cl:defmethod status_code-val ((m <walle_audio_broadcase-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:status_code-val is deprecated.  Use yidamsg-srv:status_code instead.")
  (status_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <walle_audio_broadcase-response>) ostream)
  "Serializes a message object of type '<walle_audio_broadcase-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let* ((signed (cl:slot-value msg 'status_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <walle_audio_broadcase-response>) istream)
  "Deserializes a message object of type '<walle_audio_broadcase-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_code) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<walle_audio_broadcase-response>)))
  "Returns string type for a service object of type '<walle_audio_broadcase-response>"
  "yidamsg/walle_audio_broadcaseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'walle_audio_broadcase-response)))
  "Returns string type for a service object of type 'walle_audio_broadcase-response"
  "yidamsg/walle_audio_broadcaseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<walle_audio_broadcase-response>)))
  "Returns md5sum for a message object of type '<walle_audio_broadcase-response>"
  "c70e73c81cb721a8bec49fb714a48e28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'walle_audio_broadcase-response)))
  "Returns md5sum for a message object of type 'walle_audio_broadcase-response"
  "c70e73c81cb721a8bec49fb714a48e28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<walle_audio_broadcase-response>)))
  "Returns full string definition for message of type '<walle_audio_broadcase-response>"
  (cl:format cl:nil "string message~%int8 status_code~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'walle_audio_broadcase-response)))
  "Returns full string definition for message of type 'walle_audio_broadcase-response"
  (cl:format cl:nil "string message~%int8 status_code~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <walle_audio_broadcase-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <walle_audio_broadcase-response>))
  "Converts a ROS message object to a list"
  (cl:list 'walle_audio_broadcase-response
    (cl:cons ':message (message msg))
    (cl:cons ':status_code (status_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'walle_audio_broadcase)))
  'walle_audio_broadcase-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'walle_audio_broadcase)))
  'walle_audio_broadcase-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'walle_audio_broadcase)))
  "Returns string type for a service object of type '<walle_audio_broadcase>"
  "yidamsg/walle_audio_broadcase")