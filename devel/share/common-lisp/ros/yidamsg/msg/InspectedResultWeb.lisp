; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude InspectedResultWeb.msg.html

(cl:defclass <InspectedResultWeb> (roslisp-msg-protocol:ros-message)
  ((task_history_id
    :reader task_history_id
    :initarg :task_history_id
    :type cl:integer
    :initform 0)
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0)
   (point_id
    :reader point_id
    :initarg :point_id
    :type cl:integer
    :initform 0)
   (task_name
    :reader task_name
    :initarg :task_name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (alarm_type_id
    :reader alarm_type_id
    :initarg :alarm_type_id
    :type cl:fixnum
    :initform 0)
   (alarm_level
    :reader alarm_level
    :initarg :alarm_level
    :type cl:fixnum
    :initform 0)
   (recon_time
    :reader recon_time
    :initarg :recon_time
    :type cl:string
    :initform "")
   (recon_type_name
    :reader recon_type_name
    :initarg :recon_type_name
    :type cl:string
    :initform ""))
)

(cl:defclass InspectedResultWeb (<InspectedResultWeb>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InspectedResultWeb>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InspectedResultWeb)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<InspectedResultWeb> is deprecated: use yidamsg-msg:InspectedResultWeb instead.")))

(cl:ensure-generic-function 'task_history_id-val :lambda-list '(m))
(cl:defmethod task_history_id-val ((m <InspectedResultWeb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:task_history_id-val is deprecated.  Use yidamsg-msg:task_history_id instead.")
  (task_history_id m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <InspectedResultWeb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:robot_id-val is deprecated.  Use yidamsg-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'point_id-val :lambda-list '(m))
(cl:defmethod point_id-val ((m <InspectedResultWeb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:point_id-val is deprecated.  Use yidamsg-msg:point_id instead.")
  (point_id m))

(cl:ensure-generic-function 'task_name-val :lambda-list '(m))
(cl:defmethod task_name-val ((m <InspectedResultWeb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:task_name-val is deprecated.  Use yidamsg-msg:task_name instead.")
  (task_name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <InspectedResultWeb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:value-val is deprecated.  Use yidamsg-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <InspectedResultWeb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:name-val is deprecated.  Use yidamsg-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'alarm_type_id-val :lambda-list '(m))
(cl:defmethod alarm_type_id-val ((m <InspectedResultWeb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:alarm_type_id-val is deprecated.  Use yidamsg-msg:alarm_type_id instead.")
  (alarm_type_id m))

(cl:ensure-generic-function 'alarm_level-val :lambda-list '(m))
(cl:defmethod alarm_level-val ((m <InspectedResultWeb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:alarm_level-val is deprecated.  Use yidamsg-msg:alarm_level instead.")
  (alarm_level m))

(cl:ensure-generic-function 'recon_time-val :lambda-list '(m))
(cl:defmethod recon_time-val ((m <InspectedResultWeb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:recon_time-val is deprecated.  Use yidamsg-msg:recon_time instead.")
  (recon_time m))

(cl:ensure-generic-function 'recon_type_name-val :lambda-list '(m))
(cl:defmethod recon_type_name-val ((m <InspectedResultWeb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:recon_type_name-val is deprecated.  Use yidamsg-msg:recon_type_name instead.")
  (recon_type_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InspectedResultWeb>) ostream)
  "Serializes a message object of type '<InspectedResultWeb>"
  (cl:let* ((signed (cl:slot-value msg 'task_history_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'robot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'point_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarm_type_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarm_level)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'recon_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'recon_time))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'recon_type_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'recon_type_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InspectedResultWeb>) istream)
  "Deserializes a message object of type '<InspectedResultWeb>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_history_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'point_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarm_type_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarm_level)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recon_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'recon_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recon_type_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'recon_type_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InspectedResultWeb>)))
  "Returns string type for a message object of type '<InspectedResultWeb>"
  "yidamsg/InspectedResultWeb")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InspectedResultWeb)))
  "Returns string type for a message object of type 'InspectedResultWeb"
  "yidamsg/InspectedResultWeb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InspectedResultWeb>)))
  "Returns md5sum for a message object of type '<InspectedResultWeb>"
  "7ad3da122c73ba2e57670c36124d35d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InspectedResultWeb)))
  "Returns md5sum for a message object of type 'InspectedResultWeb"
  "7ad3da122c73ba2e57670c36124d35d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InspectedResultWeb>)))
  "Returns full string definition for message of type '<InspectedResultWeb>"
  (cl:format cl:nil "int32 task_history_id~%int32 robot_id~%int32 point_id~%string task_name~%float32 value~%string name~%uint8 alarm_type_id~%uint8 alarm_level~%string recon_time~%string recon_type_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InspectedResultWeb)))
  "Returns full string definition for message of type 'InspectedResultWeb"
  (cl:format cl:nil "int32 task_history_id~%int32 robot_id~%int32 point_id~%string task_name~%float32 value~%string name~%uint8 alarm_type_id~%uint8 alarm_level~%string recon_time~%string recon_type_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InspectedResultWeb>))
  (cl:+ 0
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'task_name))
     4
     4 (cl:length (cl:slot-value msg 'name))
     1
     1
     4 (cl:length (cl:slot-value msg 'recon_time))
     4 (cl:length (cl:slot-value msg 'recon_type_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InspectedResultWeb>))
  "Converts a ROS message object to a list"
  (cl:list 'InspectedResultWeb
    (cl:cons ':task_history_id (task_history_id msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':point_id (point_id msg))
    (cl:cons ':task_name (task_name msg))
    (cl:cons ':value (value msg))
    (cl:cons ':name (name msg))
    (cl:cons ':alarm_type_id (alarm_type_id msg))
    (cl:cons ':alarm_level (alarm_level msg))
    (cl:cons ':recon_time (recon_time msg))
    (cl:cons ':recon_type_name (recon_type_name msg))
))
