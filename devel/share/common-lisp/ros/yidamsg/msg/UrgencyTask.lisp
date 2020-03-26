; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude UrgencyTask.msg.html

(cl:defclass <UrgencyTask> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0)
   (task_type
    :reader task_type
    :initarg :task_type
    :type cl:integer
    :initform 0)
   (task_level
    :reader task_level
    :initarg :task_level
    :type cl:integer
    :initform 0))
)

(cl:defclass UrgencyTask (<UrgencyTask>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UrgencyTask>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UrgencyTask)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<UrgencyTask> is deprecated: use yidamsg-msg:UrgencyTask instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <UrgencyTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:task_id-val is deprecated.  Use yidamsg-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <UrgencyTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:robot_id-val is deprecated.  Use yidamsg-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'task_type-val :lambda-list '(m))
(cl:defmethod task_type-val ((m <UrgencyTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:task_type-val is deprecated.  Use yidamsg-msg:task_type instead.")
  (task_type m))

(cl:ensure-generic-function 'task_level-val :lambda-list '(m))
(cl:defmethod task_level-val ((m <UrgencyTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:task_level-val is deprecated.  Use yidamsg-msg:task_level instead.")
  (task_level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UrgencyTask>) ostream)
  "Serializes a message object of type '<UrgencyTask>"
  (cl:let* ((signed (cl:slot-value msg 'task_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let* ((signed (cl:slot-value msg 'task_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'task_level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UrgencyTask>) istream)
  "Deserializes a message object of type '<UrgencyTask>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
      (cl:setf (cl:slot-value msg 'task_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_level) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UrgencyTask>)))
  "Returns string type for a message object of type '<UrgencyTask>"
  "yidamsg/UrgencyTask")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UrgencyTask)))
  "Returns string type for a message object of type 'UrgencyTask"
  "yidamsg/UrgencyTask")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UrgencyTask>)))
  "Returns md5sum for a message object of type '<UrgencyTask>"
  "ec737a80ae182d535d86035a7ece0817")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UrgencyTask)))
  "Returns md5sum for a message object of type 'UrgencyTask"
  "ec737a80ae182d535d86035a7ece0817")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UrgencyTask>)))
  "Returns full string definition for message of type '<UrgencyTask>"
  (cl:format cl:nil "int32 task_id~%int32 robot_id~%int32 task_type~%int32 task_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UrgencyTask)))
  "Returns full string definition for message of type 'UrgencyTask"
  (cl:format cl:nil "int32 task_id~%int32 robot_id~%int32 task_type~%int32 task_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UrgencyTask>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UrgencyTask>))
  "Converts a ROS message object to a list"
  (cl:list 'UrgencyTask
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':task_type (task_type msg))
    (cl:cons ':task_level (task_level msg))
))
