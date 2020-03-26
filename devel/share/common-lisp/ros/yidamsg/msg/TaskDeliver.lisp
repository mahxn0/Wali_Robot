; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude TaskDeliver.msg.html

(cl:defclass <TaskDeliver> (roslisp-msg-protocol:ros-message)
  ((task_history_id
    :reader task_history_id
    :initarg :task_history_id
    :type cl:integer
    :initform 0)
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0))
)

(cl:defclass TaskDeliver (<TaskDeliver>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskDeliver>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskDeliver)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<TaskDeliver> is deprecated: use yidamsg-msg:TaskDeliver instead.")))

(cl:ensure-generic-function 'task_history_id-val :lambda-list '(m))
(cl:defmethod task_history_id-val ((m <TaskDeliver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:task_history_id-val is deprecated.  Use yidamsg-msg:task_history_id instead.")
  (task_history_id m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <TaskDeliver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:robot_id-val is deprecated.  Use yidamsg-msg:robot_id instead.")
  (robot_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskDeliver>) ostream)
  "Serializes a message object of type '<TaskDeliver>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskDeliver>) istream)
  "Deserializes a message object of type '<TaskDeliver>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskDeliver>)))
  "Returns string type for a message object of type '<TaskDeliver>"
  "yidamsg/TaskDeliver")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskDeliver)))
  "Returns string type for a message object of type 'TaskDeliver"
  "yidamsg/TaskDeliver")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskDeliver>)))
  "Returns md5sum for a message object of type '<TaskDeliver>"
  "92ff1021f832a89e5a8dee53b996e8de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskDeliver)))
  "Returns md5sum for a message object of type 'TaskDeliver"
  "92ff1021f832a89e5a8dee53b996e8de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskDeliver>)))
  "Returns full string definition for message of type '<TaskDeliver>"
  (cl:format cl:nil "int32 task_history_id~%int32 robot_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskDeliver)))
  "Returns full string definition for message of type 'TaskDeliver"
  (cl:format cl:nil "int32 task_history_id~%int32 robot_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskDeliver>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskDeliver>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskDeliver
    (cl:cons ':task_history_id (task_history_id msg))
    (cl:cons ':robot_id (robot_id msg))
))
