; Auto-generated. Do not edit!


(cl:in-package yidamsg-srv)


;//! \htmlinclude walle_play_audio-request.msg.html

(cl:defclass <walle_play_audio-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
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

(cl:defclass walle_play_audio-request (<walle_play_audio-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <walle_play_audio-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'walle_play_audio-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<walle_play_audio-request> is deprecated: use yidamsg-srv:walle_play_audio-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <walle_play_audio-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:file_path-val is deprecated.  Use yidamsg-srv:file_path instead.")
  (file_path m))

(cl:ensure-generic-function 'file_type-val :lambda-list '(m))
(cl:defmethod file_type-val ((m <walle_play_audio-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:file_type-val is deprecated.  Use yidamsg-srv:file_type instead.")
  (file_type m))

(cl:ensure-generic-function 'audio_file_id-val :lambda-list '(m))
(cl:defmethod audio_file_id-val ((m <walle_play_audio-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:audio_file_id-val is deprecated.  Use yidamsg-srv:audio_file_id instead.")
  (audio_file_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <walle_play_audio-request>) ostream)
  "Serializes a message object of type '<walle_play_audio-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <walle_play_audio-request>) istream)
  "Deserializes a message object of type '<walle_play_audio-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<walle_play_audio-request>)))
  "Returns string type for a service object of type '<walle_play_audio-request>"
  "yidamsg/walle_play_audioRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'walle_play_audio-request)))
  "Returns string type for a service object of type 'walle_play_audio-request"
  "yidamsg/walle_play_audioRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<walle_play_audio-request>)))
  "Returns md5sum for a message object of type '<walle_play_audio-request>"
  "1b4b6be30129215f962c2b865c54cf1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'walle_play_audio-request)))
  "Returns md5sum for a message object of type 'walle_play_audio-request"
  "1b4b6be30129215f962c2b865c54cf1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<walle_play_audio-request>)))
  "Returns full string definition for message of type '<walle_play_audio-request>"
  (cl:format cl:nil "string file_path~%int32 file_type~%int32 audio_file_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'walle_play_audio-request)))
  "Returns full string definition for message of type 'walle_play_audio-request"
  (cl:format cl:nil "string file_path~%int32 file_type~%int32 audio_file_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <walle_play_audio-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <walle_play_audio-request>))
  "Converts a ROS message object to a list"
  (cl:list 'walle_play_audio-request
    (cl:cons ':file_path (file_path msg))
    (cl:cons ':file_type (file_type msg))
    (cl:cons ':audio_file_id (audio_file_id msg))
))
;//! \htmlinclude walle_play_audio-response.msg.html

(cl:defclass <walle_play_audio-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass walle_play_audio-response (<walle_play_audio-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <walle_play_audio-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'walle_play_audio-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<walle_play_audio-response> is deprecated: use yidamsg-srv:walle_play_audio-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <walle_play_audio-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:message-val is deprecated.  Use yidamsg-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <walle_play_audio-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:status-val is deprecated.  Use yidamsg-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <walle_play_audio-response>) ostream)
  "Serializes a message object of type '<walle_play_audio-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <walle_play_audio-response>) istream)
  "Deserializes a message object of type '<walle_play_audio-response>"
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
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<walle_play_audio-response>)))
  "Returns string type for a service object of type '<walle_play_audio-response>"
  "yidamsg/walle_play_audioResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'walle_play_audio-response)))
  "Returns string type for a service object of type 'walle_play_audio-response"
  "yidamsg/walle_play_audioResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<walle_play_audio-response>)))
  "Returns md5sum for a message object of type '<walle_play_audio-response>"
  "1b4b6be30129215f962c2b865c54cf1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'walle_play_audio-response)))
  "Returns md5sum for a message object of type 'walle_play_audio-response"
  "1b4b6be30129215f962c2b865c54cf1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<walle_play_audio-response>)))
  "Returns full string definition for message of type '<walle_play_audio-response>"
  (cl:format cl:nil "string message~%int8 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'walle_play_audio-response)))
  "Returns full string definition for message of type 'walle_play_audio-response"
  (cl:format cl:nil "string message~%int8 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <walle_play_audio-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <walle_play_audio-response>))
  "Converts a ROS message object to a list"
  (cl:list 'walle_play_audio-response
    (cl:cons ':message (message msg))
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'walle_play_audio)))
  'walle_play_audio-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'walle_play_audio)))
  'walle_play_audio-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'walle_play_audio)))
  "Returns string type for a service object of type '<walle_play_audio>"
  "yidamsg/walle_play_audio")