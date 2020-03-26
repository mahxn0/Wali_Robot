; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude task_list.msg.html

(cl:defclass <task_list> (roslisp-msg-protocol:ros-message)
  ((plan
    :reader plan
    :initarg :plan
    :type cl:string
    :initform ""))
)

(cl:defclass task_list (<task_list>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <task_list>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'task_list)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<task_list> is deprecated: use yidamsg-msg:task_list instead.")))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <task_list>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:plan-val is deprecated.  Use yidamsg-msg:plan instead.")
  (plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <task_list>) ostream)
  "Serializes a message object of type '<task_list>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'plan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'plan))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <task_list>) istream)
  "Deserializes a message object of type '<task_list>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<task_list>)))
  "Returns string type for a message object of type '<task_list>"
  "yidamsg/task_list")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'task_list)))
  "Returns string type for a message object of type 'task_list"
  "yidamsg/task_list")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<task_list>)))
  "Returns md5sum for a message object of type '<task_list>"
  "cc50643e78ec83e6cd11adcd6225ad09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'task_list)))
  "Returns md5sum for a message object of type 'task_list"
  "cc50643e78ec83e6cd11adcd6225ad09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<task_list>)))
  "Returns full string definition for message of type '<task_list>"
  (cl:format cl:nil "string plan~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'task_list)))
  "Returns full string definition for message of type 'task_list"
  (cl:format cl:nil "string plan~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <task_list>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <task_list>))
  "Converts a ROS message object to a list"
  (cl:list 'task_list
    (cl:cons ':plan (plan msg))
))
