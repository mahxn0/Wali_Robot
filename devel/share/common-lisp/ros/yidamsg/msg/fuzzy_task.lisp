; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude fuzzy_task.msg.html

(cl:defclass <fuzzy_task> (roslisp-msg-protocol:ros-message)
  ((control_flag
    :reader control_flag
    :initarg :control_flag
    :type cl:integer
    :initform 0)
   (dis_left
    :reader dis_left
    :initarg :dis_left
    :type cl:float
    :initform 0.0)
   (dis_right
    :reader dis_right
    :initarg :dis_right
    :type cl:float
    :initform 0.0)
   (included_angle
    :reader included_angle
    :initarg :included_angle
    :type cl:float
    :initform 0.0)
   (turn_angle
    :reader turn_angle
    :initarg :turn_angle
    :type cl:float
    :initform 0.0)
   (dis_cur_pos
    :reader dis_cur_pos
    :initarg :dis_cur_pos
    :type cl:float
    :initform 0.0)
   (cur_speed
    :reader cur_speed
    :initarg :cur_speed
    :type cl:float
    :initform 0.0)
   (obstacle_pos
    :reader obstacle_pos
    :initarg :obstacle_pos
    :type cl:float
    :initform 0.0)
   (allow_width
    :reader allow_width
    :initarg :allow_width
    :type cl:float
    :initform 0.0)
   (next_width
    :reader next_width
    :initarg :next_width
    :type cl:float
    :initform 0.0)
   (msg_type
    :reader msg_type
    :initarg :msg_type
    :type cl:string
    :initform "")
   (align
    :reader align
    :initarg :align
    :type cl:integer
    :initform 0))
)

(cl:defclass fuzzy_task (<fuzzy_task>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fuzzy_task>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fuzzy_task)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<fuzzy_task> is deprecated: use yidamsg-msg:fuzzy_task instead.")))

(cl:ensure-generic-function 'control_flag-val :lambda-list '(m))
(cl:defmethod control_flag-val ((m <fuzzy_task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:control_flag-val is deprecated.  Use yidamsg-msg:control_flag instead.")
  (control_flag m))

(cl:ensure-generic-function 'dis_left-val :lambda-list '(m))
(cl:defmethod dis_left-val ((m <fuzzy_task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:dis_left-val is deprecated.  Use yidamsg-msg:dis_left instead.")
  (dis_left m))

(cl:ensure-generic-function 'dis_right-val :lambda-list '(m))
(cl:defmethod dis_right-val ((m <fuzzy_task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:dis_right-val is deprecated.  Use yidamsg-msg:dis_right instead.")
  (dis_right m))

(cl:ensure-generic-function 'included_angle-val :lambda-list '(m))
(cl:defmethod included_angle-val ((m <fuzzy_task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:included_angle-val is deprecated.  Use yidamsg-msg:included_angle instead.")
  (included_angle m))

(cl:ensure-generic-function 'turn_angle-val :lambda-list '(m))
(cl:defmethod turn_angle-val ((m <fuzzy_task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:turn_angle-val is deprecated.  Use yidamsg-msg:turn_angle instead.")
  (turn_angle m))

(cl:ensure-generic-function 'dis_cur_pos-val :lambda-list '(m))
(cl:defmethod dis_cur_pos-val ((m <fuzzy_task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:dis_cur_pos-val is deprecated.  Use yidamsg-msg:dis_cur_pos instead.")
  (dis_cur_pos m))

(cl:ensure-generic-function 'cur_speed-val :lambda-list '(m))
(cl:defmethod cur_speed-val ((m <fuzzy_task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:cur_speed-val is deprecated.  Use yidamsg-msg:cur_speed instead.")
  (cur_speed m))

(cl:ensure-generic-function 'obstacle_pos-val :lambda-list '(m))
(cl:defmethod obstacle_pos-val ((m <fuzzy_task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:obstacle_pos-val is deprecated.  Use yidamsg-msg:obstacle_pos instead.")
  (obstacle_pos m))

(cl:ensure-generic-function 'allow_width-val :lambda-list '(m))
(cl:defmethod allow_width-val ((m <fuzzy_task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:allow_width-val is deprecated.  Use yidamsg-msg:allow_width instead.")
  (allow_width m))

(cl:ensure-generic-function 'next_width-val :lambda-list '(m))
(cl:defmethod next_width-val ((m <fuzzy_task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:next_width-val is deprecated.  Use yidamsg-msg:next_width instead.")
  (next_width m))

(cl:ensure-generic-function 'msg_type-val :lambda-list '(m))
(cl:defmethod msg_type-val ((m <fuzzy_task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:msg_type-val is deprecated.  Use yidamsg-msg:msg_type instead.")
  (msg_type m))

(cl:ensure-generic-function 'align-val :lambda-list '(m))
(cl:defmethod align-val ((m <fuzzy_task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:align-val is deprecated.  Use yidamsg-msg:align instead.")
  (align m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fuzzy_task>) ostream)
  "Serializes a message object of type '<fuzzy_task>"
  (cl:let* ((signed (cl:slot-value msg 'control_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'included_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'turn_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis_cur_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cur_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'obstacle_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'allow_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'next_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg_type))
  (cl:let* ((signed (cl:slot-value msg 'align)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fuzzy_task>) istream)
  "Deserializes a message object of type '<fuzzy_task>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis_left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis_right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'included_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'turn_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis_cur_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cur_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'obstacle_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'allow_width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'next_width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'align) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fuzzy_task>)))
  "Returns string type for a message object of type '<fuzzy_task>"
  "yidamsg/fuzzy_task")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fuzzy_task)))
  "Returns string type for a message object of type 'fuzzy_task"
  "yidamsg/fuzzy_task")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fuzzy_task>)))
  "Returns md5sum for a message object of type '<fuzzy_task>"
  "438c1dac4f2a4a69b46ae226145532f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fuzzy_task)))
  "Returns md5sum for a message object of type 'fuzzy_task"
  "438c1dac4f2a4a69b46ae226145532f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fuzzy_task>)))
  "Returns full string definition for message of type '<fuzzy_task>"
  (cl:format cl:nil "int32 control_flag~%float32 dis_left~%float32 dis_right~%float32 included_angle~%float32 turn_angle~%float32 dis_cur_pos~%float32 cur_speed~%float32 obstacle_pos~%float32 allow_width~%float32 next_width~%string msg_type~%int32 align~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fuzzy_task)))
  "Returns full string definition for message of type 'fuzzy_task"
  (cl:format cl:nil "int32 control_flag~%float32 dis_left~%float32 dis_right~%float32 included_angle~%float32 turn_angle~%float32 dis_cur_pos~%float32 cur_speed~%float32 obstacle_pos~%float32 allow_width~%float32 next_width~%string msg_type~%int32 align~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fuzzy_task>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'msg_type))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fuzzy_task>))
  "Converts a ROS message object to a list"
  (cl:list 'fuzzy_task
    (cl:cons ':control_flag (control_flag msg))
    (cl:cons ':dis_left (dis_left msg))
    (cl:cons ':dis_right (dis_right msg))
    (cl:cons ':included_angle (included_angle msg))
    (cl:cons ':turn_angle (turn_angle msg))
    (cl:cons ':dis_cur_pos (dis_cur_pos msg))
    (cl:cons ':cur_speed (cur_speed msg))
    (cl:cons ':obstacle_pos (obstacle_pos msg))
    (cl:cons ':allow_width (allow_width msg))
    (cl:cons ':next_width (next_width msg))
    (cl:cons ':msg_type (msg_type msg))
    (cl:cons ':align (align msg))
))
