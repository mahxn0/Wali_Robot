; Auto-generated. Do not edit!


(cl:in-package yidamsg-srv)


;//! \htmlinclude CameraControl-request.msg.html

(cl:defclass <CameraControl-request> (roslisp-msg-protocol:ros-message)
  ((angle1
    :reader angle1
    :initarg :angle1
    :type cl:float
    :initform 0.0)
   (angle2
    :reader angle2
    :initarg :angle2
    :type cl:float
    :initform 0.0))
)

(cl:defclass CameraControl-request (<CameraControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<CameraControl-request> is deprecated: use yidamsg-srv:CameraControl-request instead.")))

(cl:ensure-generic-function 'angle1-val :lambda-list '(m))
(cl:defmethod angle1-val ((m <CameraControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:angle1-val is deprecated.  Use yidamsg-srv:angle1 instead.")
  (angle1 m))

(cl:ensure-generic-function 'angle2-val :lambda-list '(m))
(cl:defmethod angle2-val ((m <CameraControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:angle2-val is deprecated.  Use yidamsg-srv:angle2 instead.")
  (angle2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraControl-request>) ostream)
  "Serializes a message object of type '<CameraControl-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraControl-request>) istream)
  "Deserializes a message object of type '<CameraControl-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraControl-request>)))
  "Returns string type for a service object of type '<CameraControl-request>"
  "yidamsg/CameraControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraControl-request)))
  "Returns string type for a service object of type 'CameraControl-request"
  "yidamsg/CameraControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraControl-request>)))
  "Returns md5sum for a message object of type '<CameraControl-request>"
  "291785b183a47905a91e359c078b67b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraControl-request)))
  "Returns md5sum for a message object of type 'CameraControl-request"
  "291785b183a47905a91e359c078b67b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraControl-request>)))
  "Returns full string definition for message of type '<CameraControl-request>"
  (cl:format cl:nil "float32 angle1~%float32 angle2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraControl-request)))
  "Returns full string definition for message of type 'CameraControl-request"
  (cl:format cl:nil "float32 angle1~%float32 angle2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraControl-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraControl-request
    (cl:cons ':angle1 (angle1 msg))
    (cl:cons ':angle2 (angle2 msg))
))
;//! \htmlinclude CameraControl-response.msg.html

(cl:defclass <CameraControl-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraControl-response (<CameraControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<CameraControl-response> is deprecated: use yidamsg-srv:CameraControl-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CameraControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:status-val is deprecated.  Use yidamsg-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraControl-response>) ostream)
  "Serializes a message object of type '<CameraControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraControl-response>) istream)
  "Deserializes a message object of type '<CameraControl-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraControl-response>)))
  "Returns string type for a service object of type '<CameraControl-response>"
  "yidamsg/CameraControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraControl-response)))
  "Returns string type for a service object of type 'CameraControl-response"
  "yidamsg/CameraControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraControl-response>)))
  "Returns md5sum for a message object of type '<CameraControl-response>"
  "291785b183a47905a91e359c078b67b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraControl-response)))
  "Returns md5sum for a message object of type 'CameraControl-response"
  "291785b183a47905a91e359c078b67b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraControl-response>)))
  "Returns full string definition for message of type '<CameraControl-response>"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraControl-response)))
  "Returns full string definition for message of type 'CameraControl-response"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraControl-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraControl)))
  'CameraControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraControl)))
  'CameraControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraControl)))
  "Returns string type for a service object of type '<CameraControl>"
  "yidamsg/CameraControl")