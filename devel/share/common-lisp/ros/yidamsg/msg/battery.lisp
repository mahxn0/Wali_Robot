; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude battery.msg.html

(cl:defclass <battery> (roslisp-msg-protocol:ros-message)
  ((charge
    :reader charge
    :initarg :charge
    :type cl:float
    :initform 0.0))
)

(cl:defclass battery (<battery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <battery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'battery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<battery> is deprecated: use yidamsg-msg:battery instead.")))

(cl:ensure-generic-function 'charge-val :lambda-list '(m))
(cl:defmethod charge-val ((m <battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:charge-val is deprecated.  Use yidamsg-msg:charge instead.")
  (charge m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <battery>) ostream)
  "Serializes a message object of type '<battery>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'charge))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <battery>) istream)
  "Deserializes a message object of type '<battery>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'charge) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<battery>)))
  "Returns string type for a message object of type '<battery>"
  "yidamsg/battery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'battery)))
  "Returns string type for a message object of type 'battery"
  "yidamsg/battery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<battery>)))
  "Returns md5sum for a message object of type '<battery>"
  "f43634fd818f1f0b26dc3c72b9bab8a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'battery)))
  "Returns md5sum for a message object of type 'battery"
  "f43634fd818f1f0b26dc3c72b9bab8a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<battery>)))
  "Returns full string definition for message of type '<battery>"
  (cl:format cl:nil "float32 charge~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'battery)))
  "Returns full string definition for message of type 'battery"
  (cl:format cl:nil "float32 charge~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <battery>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <battery>))
  "Converts a ROS message object to a list"
  (cl:list 'battery
    (cl:cons ':charge (charge msg))
))
