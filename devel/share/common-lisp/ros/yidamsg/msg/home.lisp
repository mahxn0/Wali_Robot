; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude home.msg.html

(cl:defclass <home> (roslisp-msg-protocol:ros-message)
  ((order
    :reader order
    :initarg :order
    :type cl:string
    :initform ""))
)

(cl:defclass home (<home>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <home>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'home)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<home> is deprecated: use yidamsg-msg:home instead.")))

(cl:ensure-generic-function 'order-val :lambda-list '(m))
(cl:defmethod order-val ((m <home>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:order-val is deprecated.  Use yidamsg-msg:order instead.")
  (order m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <home>) ostream)
  "Serializes a message object of type '<home>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'order))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'order))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <home>) istream)
  "Deserializes a message object of type '<home>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'order) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<home>)))
  "Returns string type for a message object of type '<home>"
  "yidamsg/home")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'home)))
  "Returns string type for a message object of type 'home"
  "yidamsg/home")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<home>)))
  "Returns md5sum for a message object of type '<home>"
  "9db207449ae86824d9e60bd906ef30e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'home)))
  "Returns md5sum for a message object of type 'home"
  "9db207449ae86824d9e60bd906ef30e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<home>)))
  "Returns full string definition for message of type '<home>"
  (cl:format cl:nil "string order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'home)))
  "Returns full string definition for message of type 'home"
  (cl:format cl:nil "string order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <home>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'order))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <home>))
  "Converts a ROS message object to a list"
  (cl:list 'home
    (cl:cons ':order (order msg))
))
