; Auto-generated. Do not edit!


(cl:in-package yidamsg-srv)


;//! \htmlinclude TaskList-request.msg.html

(cl:defclass <TaskList-request> (roslisp-msg-protocol:ros-message)
  ((plan
    :reader plan
    :initarg :plan
    :type cl:string
    :initform ""))
)

(cl:defclass TaskList-request (<TaskList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<TaskList-request> is deprecated: use yidamsg-srv:TaskList-request instead.")))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <TaskList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:plan-val is deprecated.  Use yidamsg-srv:plan instead.")
  (plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskList-request>) ostream)
  "Serializes a message object of type '<TaskList-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'plan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'plan))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskList-request>) istream)
  "Deserializes a message object of type '<TaskList-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'plan) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'plan) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskList-request>)))
  "Returns string type for a service object of type '<TaskList-request>"
  "yidamsg/TaskListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskList-request)))
  "Returns string type for a service object of type 'TaskList-request"
  "yidamsg/TaskListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskList-request>)))
  "Returns md5sum for a message object of type '<TaskList-request>"
  "e36025b6db500abb1fa437aa748984cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskList-request)))
  "Returns md5sum for a message object of type 'TaskList-request"
  "e36025b6db500abb1fa437aa748984cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskList-request>)))
  "Returns full string definition for message of type '<TaskList-request>"
  (cl:format cl:nil "string plan~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskList-request)))
  "Returns full string definition for message of type 'TaskList-request"
  (cl:format cl:nil "string plan~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskList-request
    (cl:cons ':plan (plan msg))
))
;//! \htmlinclude TaskList-response.msg.html

(cl:defclass <TaskList-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TaskList-response (<TaskList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<TaskList-response> is deprecated: use yidamsg-srv:TaskList-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TaskList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:status-val is deprecated.  Use yidamsg-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskList-response>) ostream)
  "Serializes a message object of type '<TaskList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskList-response>) istream)
  "Deserializes a message object of type '<TaskList-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskList-response>)))
  "Returns string type for a service object of type '<TaskList-response>"
  "yidamsg/TaskListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskList-response)))
  "Returns string type for a service object of type 'TaskList-response"
  "yidamsg/TaskListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskList-response>)))
  "Returns md5sum for a message object of type '<TaskList-response>"
  "e36025b6db500abb1fa437aa748984cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskList-response)))
  "Returns md5sum for a message object of type 'TaskList-response"
  "e36025b6db500abb1fa437aa748984cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskList-response>)))
  "Returns full string definition for message of type '<TaskList-response>"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskList-response)))
  "Returns full string definition for message of type 'TaskList-response"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskList-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskList-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TaskList)))
  'TaskList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TaskList)))
  'TaskList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskList)))
  "Returns string type for a service object of type '<TaskList>"
  "yidamsg/TaskList")