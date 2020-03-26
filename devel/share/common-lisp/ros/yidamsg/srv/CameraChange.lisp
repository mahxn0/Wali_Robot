; Auto-generated. Do not edit!


(cl:in-package yidamsg-srv)


;//! \htmlinclude CameraChange-request.msg.html

(cl:defclass <CameraChange-request> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraChange-request (<CameraChange-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraChange-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraChange-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<CameraChange-request> is deprecated: use yidamsg-srv:CameraChange-request instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <CameraChange-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:flag-val is deprecated.  Use yidamsg-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraChange-request>) ostream)
  "Serializes a message object of type '<CameraChange-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraChange-request>) istream)
  "Deserializes a message object of type '<CameraChange-request>"
    (cl:setf (cl:slot-value msg 'flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraChange-request>)))
  "Returns string type for a service object of type '<CameraChange-request>"
  "yidamsg/CameraChangeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraChange-request)))
  "Returns string type for a service object of type 'CameraChange-request"
  "yidamsg/CameraChangeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraChange-request>)))
  "Returns md5sum for a message object of type '<CameraChange-request>"
  "1ec93149d55d1527cff5331cb7a5fe0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraChange-request)))
  "Returns md5sum for a message object of type 'CameraChange-request"
  "1ec93149d55d1527cff5331cb7a5fe0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraChange-request>)))
  "Returns full string definition for message of type '<CameraChange-request>"
  (cl:format cl:nil "bool flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraChange-request)))
  "Returns full string definition for message of type 'CameraChange-request"
  (cl:format cl:nil "bool flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraChange-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraChange-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraChange-request
    (cl:cons ':flag (flag msg))
))
;//! \htmlinclude CameraChange-response.msg.html

(cl:defclass <CameraChange-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraChange-response (<CameraChange-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraChange-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraChange-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<CameraChange-response> is deprecated: use yidamsg-srv:CameraChange-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CameraChange-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:status-val is deprecated.  Use yidamsg-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraChange-response>) ostream)
  "Serializes a message object of type '<CameraChange-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraChange-response>) istream)
  "Deserializes a message object of type '<CameraChange-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraChange-response>)))
  "Returns string type for a service object of type '<CameraChange-response>"
  "yidamsg/CameraChangeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraChange-response)))
  "Returns string type for a service object of type 'CameraChange-response"
  "yidamsg/CameraChangeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraChange-response>)))
  "Returns md5sum for a message object of type '<CameraChange-response>"
  "1ec93149d55d1527cff5331cb7a5fe0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraChange-response)))
  "Returns md5sum for a message object of type 'CameraChange-response"
  "1ec93149d55d1527cff5331cb7a5fe0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraChange-response>)))
  "Returns full string definition for message of type '<CameraChange-response>"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraChange-response)))
  "Returns full string definition for message of type 'CameraChange-response"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraChange-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraChange-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraChange-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraChange)))
  'CameraChange-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraChange)))
  'CameraChange-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraChange)))
  "Returns string type for a service object of type '<CameraChange>"
  "yidamsg/CameraChange")