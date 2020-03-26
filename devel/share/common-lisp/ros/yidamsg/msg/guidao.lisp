; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude guidao.msg.html

(cl:defclass <guidao> (roslisp-msg-protocol:ros-message)
  ((rec_method
    :reader rec_method
    :initarg :rec_method
    :type cl:string
    :initform "")
   (rec_name
    :reader rec_name
    :initarg :rec_name
    :type cl:string
    :initform "")
   (dec_hat
    :reader dec_hat
    :initarg :dec_hat
    :type cl:integer
    :initform 0)
   (dec_glove
    :reader dec_glove
    :initarg :dec_glove
    :type cl:integer
    :initform 0)
   (dec_shoe
    :reader dec_shoe
    :initarg :dec_shoe
    :type cl:integer
    :initform 0)
   (rail
    :reader rail
    :initarg :rail
    :type cl:integer
    :initform 0)
   (safety_belt
    :reader safety_belt
    :initarg :safety_belt
    :type cl:integer
    :initform 0)
   (alam
    :reader alam
    :initarg :alam
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type cl:string
    :initform ""))
)

(cl:defclass guidao (<guidao>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <guidao>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'guidao)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<guidao> is deprecated: use yidamsg-msg:guidao instead.")))

(cl:ensure-generic-function 'rec_method-val :lambda-list '(m))
(cl:defmethod rec_method-val ((m <guidao>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:rec_method-val is deprecated.  Use yidamsg-msg:rec_method instead.")
  (rec_method m))

(cl:ensure-generic-function 'rec_name-val :lambda-list '(m))
(cl:defmethod rec_name-val ((m <guidao>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:rec_name-val is deprecated.  Use yidamsg-msg:rec_name instead.")
  (rec_name m))

(cl:ensure-generic-function 'dec_hat-val :lambda-list '(m))
(cl:defmethod dec_hat-val ((m <guidao>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:dec_hat-val is deprecated.  Use yidamsg-msg:dec_hat instead.")
  (dec_hat m))

(cl:ensure-generic-function 'dec_glove-val :lambda-list '(m))
(cl:defmethod dec_glove-val ((m <guidao>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:dec_glove-val is deprecated.  Use yidamsg-msg:dec_glove instead.")
  (dec_glove m))

(cl:ensure-generic-function 'dec_shoe-val :lambda-list '(m))
(cl:defmethod dec_shoe-val ((m <guidao>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:dec_shoe-val is deprecated.  Use yidamsg-msg:dec_shoe instead.")
  (dec_shoe m))

(cl:ensure-generic-function 'rail-val :lambda-list '(m))
(cl:defmethod rail-val ((m <guidao>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:rail-val is deprecated.  Use yidamsg-msg:rail instead.")
  (rail m))

(cl:ensure-generic-function 'safety_belt-val :lambda-list '(m))
(cl:defmethod safety_belt-val ((m <guidao>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:safety_belt-val is deprecated.  Use yidamsg-msg:safety_belt instead.")
  (safety_belt m))

(cl:ensure-generic-function 'alam-val :lambda-list '(m))
(cl:defmethod alam-val ((m <guidao>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:alam-val is deprecated.  Use yidamsg-msg:alam instead.")
  (alam m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <guidao>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:action-val is deprecated.  Use yidamsg-msg:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <guidao>) ostream)
  "Serializes a message object of type '<guidao>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rec_method))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rec_method))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rec_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rec_name))
  (cl:let* ((signed (cl:slot-value msg 'dec_hat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dec_glove)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dec_shoe)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rail)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'safety_belt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alam))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alam))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <guidao>) istream)
  "Deserializes a message object of type '<guidao>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rec_method) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rec_method) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rec_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rec_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dec_hat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dec_glove) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dec_shoe) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rail) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'safety_belt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alam) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alam) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<guidao>)))
  "Returns string type for a message object of type '<guidao>"
  "yidamsg/guidao")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'guidao)))
  "Returns string type for a message object of type 'guidao"
  "yidamsg/guidao")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<guidao>)))
  "Returns md5sum for a message object of type '<guidao>"
  "5f7b72245dfc6166afb75ac5cae3a673")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'guidao)))
  "Returns md5sum for a message object of type 'guidao"
  "5f7b72245dfc6166afb75ac5cae3a673")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<guidao>)))
  "Returns full string definition for message of type '<guidao>"
  (cl:format cl:nil "string rec_method~%string rec_name~%int32 dec_hat~%int32 dec_glove~%int32 dec_shoe~%int32 rail~%int32 safety_belt~%string alam~%string action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'guidao)))
  "Returns full string definition for message of type 'guidao"
  (cl:format cl:nil "string rec_method~%string rec_name~%int32 dec_hat~%int32 dec_glove~%int32 dec_shoe~%int32 rail~%int32 safety_belt~%string alam~%string action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <guidao>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'rec_method))
     4 (cl:length (cl:slot-value msg 'rec_name))
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'alam))
     4 (cl:length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <guidao>))
  "Converts a ROS message object to a list"
  (cl:list 'guidao
    (cl:cons ':rec_method (rec_method msg))
    (cl:cons ':rec_name (rec_name msg))
    (cl:cons ':dec_hat (dec_hat msg))
    (cl:cons ':dec_glove (dec_glove msg))
    (cl:cons ':dec_shoe (dec_shoe msg))
    (cl:cons ':rail (rail msg))
    (cl:cons ':safety_belt (safety_belt msg))
    (cl:cons ':alam (alam msg))
    (cl:cons ':action (action msg))
))
