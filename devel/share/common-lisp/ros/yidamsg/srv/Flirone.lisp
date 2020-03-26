; Auto-generated. Do not edit!


(cl:in-package yidamsg-srv)


;//! \htmlinclude Flirone-request.msg.html

(cl:defclass <Flirone-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass Flirone-request (<Flirone-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Flirone-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Flirone-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<Flirone-request> is deprecated: use yidamsg-srv:Flirone-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Flirone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:x-val is deprecated.  Use yidamsg-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Flirone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:y-val is deprecated.  Use yidamsg-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Flirone-request>) ostream)
  "Serializes a message object of type '<Flirone-request>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Flirone-request>) istream)
  "Deserializes a message object of type '<Flirone-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Flirone-request>)))
  "Returns string type for a service object of type '<Flirone-request>"
  "yidamsg/FlironeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Flirone-request)))
  "Returns string type for a service object of type 'Flirone-request"
  "yidamsg/FlironeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Flirone-request>)))
  "Returns md5sum for a message object of type '<Flirone-request>"
  "19d1e1bf3be80b2a10b17e554e52d372")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Flirone-request)))
  "Returns md5sum for a message object of type 'Flirone-request"
  "19d1e1bf3be80b2a10b17e554e52d372")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Flirone-request>)))
  "Returns full string definition for message of type '<Flirone-request>"
  (cl:format cl:nil "int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Flirone-request)))
  "Returns full string definition for message of type 'Flirone-request"
  (cl:format cl:nil "int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Flirone-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Flirone-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Flirone-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude Flirone-response.msg.html

(cl:defclass <Flirone-response> (roslisp-msg-protocol:ros-message)
  ((tem
    :reader tem
    :initarg :tem
    :type cl:float
    :initform 0.0))
)

(cl:defclass Flirone-response (<Flirone-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Flirone-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Flirone-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<Flirone-response> is deprecated: use yidamsg-srv:Flirone-response instead.")))

(cl:ensure-generic-function 'tem-val :lambda-list '(m))
(cl:defmethod tem-val ((m <Flirone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:tem-val is deprecated.  Use yidamsg-srv:tem instead.")
  (tem m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Flirone-response>) ostream)
  "Serializes a message object of type '<Flirone-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tem))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Flirone-response>) istream)
  "Deserializes a message object of type '<Flirone-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tem) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Flirone-response>)))
  "Returns string type for a service object of type '<Flirone-response>"
  "yidamsg/FlironeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Flirone-response)))
  "Returns string type for a service object of type 'Flirone-response"
  "yidamsg/FlironeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Flirone-response>)))
  "Returns md5sum for a message object of type '<Flirone-response>"
  "19d1e1bf3be80b2a10b17e554e52d372")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Flirone-response)))
  "Returns md5sum for a message object of type 'Flirone-response"
  "19d1e1bf3be80b2a10b17e554e52d372")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Flirone-response>)))
  "Returns full string definition for message of type '<Flirone-response>"
  (cl:format cl:nil "float32 tem~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Flirone-response)))
  "Returns full string definition for message of type 'Flirone-response"
  (cl:format cl:nil "float32 tem~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Flirone-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Flirone-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Flirone-response
    (cl:cons ':tem (tem msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Flirone)))
  'Flirone-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Flirone)))
  'Flirone-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Flirone)))
  "Returns string type for a service object of type '<Flirone>"
  "yidamsg/Flirone")