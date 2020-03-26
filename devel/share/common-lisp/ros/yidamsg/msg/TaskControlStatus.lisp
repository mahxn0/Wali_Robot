; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude TaskControlStatus.msg.html

(cl:defclass <TaskControlStatus> (roslisp-msg-protocol:ros-message)
  ((task_history_id
    :reader task_history_id
    :initarg :task_history_id
    :type cl:integer
    :initform 0)
   (task_status
    :reader task_status
    :initarg :task_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TaskControlStatus (<TaskControlStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskControlStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskControlStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<TaskControlStatus> is deprecated: use yidamsg-msg:TaskControlStatus instead.")))

(cl:ensure-generic-function 'task_history_id-val :lambda-list '(m))
(cl:defmethod task_history_id-val ((m <TaskControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:task_history_id-val is deprecated.  Use yidamsg-msg:task_history_id instead.")
  (task_history_id m))

(cl:ensure-generic-function 'task_status-val :lambda-list '(m))
(cl:defmethod task_status-val ((m <TaskControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:task_status-val is deprecated.  Use yidamsg-msg:task_status instead.")
  (task_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskControlStatus>) ostream)
  "Serializes a message object of type '<TaskControlStatus>"
  (cl:let* ((signed (cl:slot-value msg 'task_history_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskControlStatus>) istream)
  "Deserializes a message object of type '<TaskControlStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_history_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskControlStatus>)))
  "Returns string type for a message object of type '<TaskControlStatus>"
  "yidamsg/TaskControlStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskControlStatus)))
  "Returns string type for a message object of type 'TaskControlStatus"
  "yidamsg/TaskControlStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskControlStatus>)))
  "Returns md5sum for a message object of type '<TaskControlStatus>"
  "2293a62523ff50d550bd7b5b6f6302d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskControlStatus)))
  "Returns md5sum for a message object of type 'TaskControlStatus"
  "2293a62523ff50d550bd7b5b6f6302d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskControlStatus>)))
  "Returns full string definition for message of type '<TaskControlStatus>"
  (cl:format cl:nil "int32 task_history_id~%uint8 task_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskControlStatus)))
  "Returns full string definition for message of type 'TaskControlStatus"
  (cl:format cl:nil "int32 task_history_id~%uint8 task_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskControlStatus>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskControlStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskControlStatus
    (cl:cons ':task_history_id (task_history_id msg))
    (cl:cons ':task_status (task_status msg))
))
