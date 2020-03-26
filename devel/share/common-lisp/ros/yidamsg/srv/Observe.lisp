; Auto-generated. Do not edit!


(cl:in-package yidamsg-srv)


;//! \htmlinclude Observe-request.msg.html

(cl:defclass <Observe-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass Observe-request (<Observe-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Observe-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Observe-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<Observe-request> is deprecated: use yidamsg-srv:Observe-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Observe-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:x-val is deprecated.  Use yidamsg-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Observe-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:y-val is deprecated.  Use yidamsg-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Observe-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:z-val is deprecated.  Use yidamsg-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Observe-request>) ostream)
  "Serializes a message object of type '<Observe-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Observe-request>) istream)
  "Deserializes a message object of type '<Observe-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Observe-request>)))
  "Returns string type for a service object of type '<Observe-request>"
  "yidamsg/ObserveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Observe-request)))
  "Returns string type for a service object of type 'Observe-request"
  "yidamsg/ObserveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Observe-request>)))
  "Returns md5sum for a message object of type '<Observe-request>"
  "c4427e54c9720d51c72d87bfd85f52ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Observe-request)))
  "Returns md5sum for a message object of type 'Observe-request"
  "c4427e54c9720d51c72d87bfd85f52ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Observe-request>)))
  "Returns full string definition for message of type '<Observe-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Observe-request)))
  "Returns full string definition for message of type 'Observe-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Observe-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Observe-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Observe-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
;//! \htmlinclude Observe-response.msg.html

(cl:defclass <Observe-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Observe-response (<Observe-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Observe-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Observe-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<Observe-response> is deprecated: use yidamsg-srv:Observe-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Observe-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:status-val is deprecated.  Use yidamsg-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Observe-response>) ostream)
  "Serializes a message object of type '<Observe-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Observe-response>) istream)
  "Deserializes a message object of type '<Observe-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Observe-response>)))
  "Returns string type for a service object of type '<Observe-response>"
  "yidamsg/ObserveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Observe-response)))
  "Returns string type for a service object of type 'Observe-response"
  "yidamsg/ObserveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Observe-response>)))
  "Returns md5sum for a message object of type '<Observe-response>"
  "c4427e54c9720d51c72d87bfd85f52ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Observe-response)))
  "Returns md5sum for a message object of type 'Observe-response"
  "c4427e54c9720d51c72d87bfd85f52ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Observe-response>)))
  "Returns full string definition for message of type '<Observe-response>"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Observe-response)))
  "Returns full string definition for message of type 'Observe-response"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Observe-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Observe-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Observe-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Observe)))
  'Observe-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Observe)))
  'Observe-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Observe)))
  "Returns string type for a service object of type '<Observe>"
  "yidamsg/Observe")