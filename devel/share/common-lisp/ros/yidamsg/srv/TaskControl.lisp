; Auto-generated. Do not edit!


(cl:in-package yidamsg-srv)


;//! \htmlinclude TaskControl-request.msg.html

(cl:defclass <TaskControl-request> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TaskControl-request (<TaskControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<TaskControl-request> is deprecated: use yidamsg-srv:TaskControl-request instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <TaskControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:flag-val is deprecated.  Use yidamsg-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskControl-request>) ostream)
  "Serializes a message object of type '<TaskControl-request>"
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskControl-request>) istream)
  "Deserializes a message object of type '<TaskControl-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskControl-request>)))
  "Returns string type for a service object of type '<TaskControl-request>"
  "yidamsg/TaskControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskControl-request)))
  "Returns string type for a service object of type 'TaskControl-request"
  "yidamsg/TaskControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskControl-request>)))
  "Returns md5sum for a message object of type '<TaskControl-request>"
  "703f20323013a67a9ef8aed4c09680ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskControl-request)))
  "Returns md5sum for a message object of type 'TaskControl-request"
  "703f20323013a67a9ef8aed4c09680ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskControl-request>)))
  "Returns full string definition for message of type '<TaskControl-request>"
  (cl:format cl:nil "int16 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskControl-request)))
  "Returns full string definition for message of type 'TaskControl-request"
  (cl:format cl:nil "int16 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskControl-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskControl-request
    (cl:cons ':flag (flag msg))
))
;//! \htmlinclude TaskControl-response.msg.html

(cl:defclass <TaskControl-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TaskControl-response (<TaskControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<TaskControl-response> is deprecated: use yidamsg-srv:TaskControl-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskControl-response>) ostream)
  "Serializes a message object of type '<TaskControl-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskControl-response>) istream)
  "Deserializes a message object of type '<TaskControl-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskControl-response>)))
  "Returns string type for a service object of type '<TaskControl-response>"
  "yidamsg/TaskControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskControl-response)))
  "Returns string type for a service object of type 'TaskControl-response"
  "yidamsg/TaskControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskControl-response>)))
  "Returns md5sum for a message object of type '<TaskControl-response>"
  "703f20323013a67a9ef8aed4c09680ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskControl-response)))
  "Returns md5sum for a message object of type 'TaskControl-response"
  "703f20323013a67a9ef8aed4c09680ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskControl-response>)))
  "Returns full string definition for message of type '<TaskControl-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskControl-response)))
  "Returns full string definition for message of type 'TaskControl-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskControl-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskControl-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TaskControl)))
  'TaskControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TaskControl)))
  'TaskControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskControl)))
  "Returns string type for a service object of type '<TaskControl>"
  "yidamsg/TaskControl")