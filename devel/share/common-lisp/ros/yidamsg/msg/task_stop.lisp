; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude task_stop.msg.html

(cl:defclass <task_stop> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass task_stop (<task_stop>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <task_stop>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'task_stop)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<task_stop> is deprecated: use yidamsg-msg:task_stop instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <task_stop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:type-val is deprecated.  Use yidamsg-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <task_stop>) ostream)
  "Serializes a message object of type '<task_stop>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'type) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <task_stop>) istream)
  "Deserializes a message object of type '<task_stop>"
    (cl:setf (cl:slot-value msg 'type) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<task_stop>)))
  "Returns string type for a message object of type '<task_stop>"
  "yidamsg/task_stop")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'task_stop)))
  "Returns string type for a message object of type 'task_stop"
  "yidamsg/task_stop")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<task_stop>)))
  "Returns md5sum for a message object of type '<task_stop>"
  "1b83a985e6f5da6bbdf48067ed3927fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'task_stop)))
  "Returns md5sum for a message object of type 'task_stop"
  "1b83a985e6f5da6bbdf48067ed3927fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<task_stop>)))
  "Returns full string definition for message of type '<task_stop>"
  (cl:format cl:nil "bool type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'task_stop)))
  "Returns full string definition for message of type 'task_stop"
  (cl:format cl:nil "bool type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <task_stop>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <task_stop>))
  "Converts a ROS message object to a list"
  (cl:list 'task_stop
    (cl:cons ':type (type msg))
))
