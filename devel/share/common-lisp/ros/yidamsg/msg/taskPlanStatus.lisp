; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude taskPlanStatus.msg.html

(cl:defclass <taskPlanStatus> (roslisp-msg-protocol:ros-message)
  ((taskId
    :reader taskId
    :initarg :taskId
    :type cl:integer
    :initform 0)
   (robotId
    :reader robotId
    :initarg :robotId
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass taskPlanStatus (<taskPlanStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <taskPlanStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'taskPlanStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<taskPlanStatus> is deprecated: use yidamsg-msg:taskPlanStatus instead.")))

(cl:ensure-generic-function 'taskId-val :lambda-list '(m))
(cl:defmethod taskId-val ((m <taskPlanStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:taskId-val is deprecated.  Use yidamsg-msg:taskId instead.")
  (taskId m))

(cl:ensure-generic-function 'robotId-val :lambda-list '(m))
(cl:defmethod robotId-val ((m <taskPlanStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:robotId-val is deprecated.  Use yidamsg-msg:robotId instead.")
  (robotId m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <taskPlanStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:status-val is deprecated.  Use yidamsg-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <taskPlanStatus>) ostream)
  "Serializes a message object of type '<taskPlanStatus>"
  (cl:let* ((signed (cl:slot-value msg 'taskId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robotId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robotId))
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <taskPlanStatus>) istream)
  "Deserializes a message object of type '<taskPlanStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'taskId) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robotId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robotId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<taskPlanStatus>)))
  "Returns string type for a message object of type '<taskPlanStatus>"
  "yidamsg/taskPlanStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'taskPlanStatus)))
  "Returns string type for a message object of type 'taskPlanStatus"
  "yidamsg/taskPlanStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<taskPlanStatus>)))
  "Returns md5sum for a message object of type '<taskPlanStatus>"
  "592a22bb6712716461dc6dd5022389ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'taskPlanStatus)))
  "Returns md5sum for a message object of type 'taskPlanStatus"
  "592a22bb6712716461dc6dd5022389ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<taskPlanStatus>)))
  "Returns full string definition for message of type '<taskPlanStatus>"
  (cl:format cl:nil "int32 taskId~%string robotId~%int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'taskPlanStatus)))
  "Returns full string definition for message of type 'taskPlanStatus"
  (cl:format cl:nil "int32 taskId~%string robotId~%int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <taskPlanStatus>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'robotId))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <taskPlanStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'taskPlanStatus
    (cl:cons ':taskId (taskId msg))
    (cl:cons ':robotId (robotId msg))
    (cl:cons ':status (status msg))
))
