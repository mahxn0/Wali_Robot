; Auto-generated. Do not edit!


(cl:in-package yidamsg-srv)


;//! \htmlinclude ControlDoor-request.msg.html

(cl:defclass <ControlDoor-request> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass ControlDoor-request (<ControlDoor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlDoor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlDoor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<ControlDoor-request> is deprecated: use yidamsg-srv:ControlDoor-request instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <ControlDoor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:flag-val is deprecated.  Use yidamsg-srv:flag instead.")
  (flag m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ControlDoor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:name-val is deprecated.  Use yidamsg-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlDoor-request>) ostream)
  "Serializes a message object of type '<ControlDoor-request>"
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlDoor-request>) istream)
  "Deserializes a message object of type '<ControlDoor-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlDoor-request>)))
  "Returns string type for a service object of type '<ControlDoor-request>"
  "yidamsg/ControlDoorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlDoor-request)))
  "Returns string type for a service object of type 'ControlDoor-request"
  "yidamsg/ControlDoorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlDoor-request>)))
  "Returns md5sum for a message object of type '<ControlDoor-request>"
  "a0a40dfc84ba309f827118ccd5e5ca07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlDoor-request)))
  "Returns md5sum for a message object of type 'ControlDoor-request"
  "a0a40dfc84ba309f827118ccd5e5ca07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlDoor-request>)))
  "Returns full string definition for message of type '<ControlDoor-request>"
  (cl:format cl:nil "int16 flag~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlDoor-request)))
  "Returns full string definition for message of type 'ControlDoor-request"
  (cl:format cl:nil "int16 flag~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlDoor-request>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlDoor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlDoor-request
    (cl:cons ':flag (flag msg))
    (cl:cons ':name (name msg))
))
;//! \htmlinclude ControlDoor-response.msg.html

(cl:defclass <ControlDoor-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ControlDoor-response (<ControlDoor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlDoor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlDoor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<ControlDoor-response> is deprecated: use yidamsg-srv:ControlDoor-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ControlDoor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:success-val is deprecated.  Use yidamsg-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlDoor-response>) ostream)
  "Serializes a message object of type '<ControlDoor-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlDoor-response>) istream)
  "Deserializes a message object of type '<ControlDoor-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlDoor-response>)))
  "Returns string type for a service object of type '<ControlDoor-response>"
  "yidamsg/ControlDoorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlDoor-response)))
  "Returns string type for a service object of type 'ControlDoor-response"
  "yidamsg/ControlDoorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlDoor-response>)))
  "Returns md5sum for a message object of type '<ControlDoor-response>"
  "a0a40dfc84ba309f827118ccd5e5ca07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlDoor-response)))
  "Returns md5sum for a message object of type 'ControlDoor-response"
  "a0a40dfc84ba309f827118ccd5e5ca07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlDoor-response>)))
  "Returns full string definition for message of type '<ControlDoor-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlDoor-response)))
  "Returns full string definition for message of type 'ControlDoor-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlDoor-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlDoor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlDoor-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ControlDoor)))
  'ControlDoor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ControlDoor)))
  'ControlDoor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlDoor)))
  "Returns string type for a service object of type '<ControlDoor>"
  "yidamsg/ControlDoor")