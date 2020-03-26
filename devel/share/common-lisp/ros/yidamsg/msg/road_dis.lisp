; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude road_dis.msg.html

(cl:defclass <road_dis> (roslisp-msg-protocol:ros-message)
  ((left
    :reader left
    :initarg :left
    :type cl:integer
    :initform 0)
   (right
    :reader right
    :initarg :right
    :type cl:integer
    :initform 0))
)

(cl:defclass road_dis (<road_dis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <road_dis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'road_dis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<road_dis> is deprecated: use yidamsg-msg:road_dis instead.")))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <road_dis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:left-val is deprecated.  Use yidamsg-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <road_dis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:right-val is deprecated.  Use yidamsg-msg:right instead.")
  (right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <road_dis>) ostream)
  "Serializes a message object of type '<road_dis>"
  (cl:let* ((signed (cl:slot-value msg 'left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <road_dis>) istream)
  "Deserializes a message object of type '<road_dis>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<road_dis>)))
  "Returns string type for a message object of type '<road_dis>"
  "yidamsg/road_dis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'road_dis)))
  "Returns string type for a message object of type 'road_dis"
  "yidamsg/road_dis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<road_dis>)))
  "Returns md5sum for a message object of type '<road_dis>"
  "febc810ab9cc360ca3f47fcee4f2ba71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'road_dis)))
  "Returns md5sum for a message object of type 'road_dis"
  "febc810ab9cc360ca3f47fcee4f2ba71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<road_dis>)))
  "Returns full string definition for message of type '<road_dis>"
  (cl:format cl:nil "int32 left~%int32 right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'road_dis)))
  "Returns full string definition for message of type 'road_dis"
  (cl:format cl:nil "int32 left~%int32 right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <road_dis>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <road_dis>))
  "Converts a ROS message object to a list"
  (cl:list 'road_dis
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
))
