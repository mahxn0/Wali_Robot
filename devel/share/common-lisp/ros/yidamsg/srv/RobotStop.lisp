; Auto-generated. Do not edit!


(cl:in-package yidamsg-srv)


;//! \htmlinclude RobotStop-request.msg.html

(cl:defclass <RobotStop-request> (roslisp-msg-protocol:ros-message)
  ((control
    :reader control
    :initarg :control
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotStop-request (<RobotStop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<RobotStop-request> is deprecated: use yidamsg-srv:RobotStop-request instead.")))

(cl:ensure-generic-function 'control-val :lambda-list '(m))
(cl:defmethod control-val ((m <RobotStop-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:control-val is deprecated.  Use yidamsg-srv:control instead.")
  (control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStop-request>) ostream)
  "Serializes a message object of type '<RobotStop-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'control) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStop-request>) istream)
  "Deserializes a message object of type '<RobotStop-request>"
    (cl:setf (cl:slot-value msg 'control) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStop-request>)))
  "Returns string type for a service object of type '<RobotStop-request>"
  "yidamsg/RobotStopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStop-request)))
  "Returns string type for a service object of type 'RobotStop-request"
  "yidamsg/RobotStopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStop-request>)))
  "Returns md5sum for a message object of type '<RobotStop-request>"
  "fa5b653280beb40079fadd2d89b1b31e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStop-request)))
  "Returns md5sum for a message object of type 'RobotStop-request"
  "fa5b653280beb40079fadd2d89b1b31e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStop-request>)))
  "Returns full string definition for message of type '<RobotStop-request>"
  (cl:format cl:nil "bool control~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStop-request)))
  "Returns full string definition for message of type 'RobotStop-request"
  (cl:format cl:nil "bool control~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStop-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStop-request
    (cl:cons ':control (control msg))
))
;//! \htmlinclude RobotStop-response.msg.html

(cl:defclass <RobotStop-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotStop-response (<RobotStop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<RobotStop-response> is deprecated: use yidamsg-srv:RobotStop-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RobotStop-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:status-val is deprecated.  Use yidamsg-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStop-response>) ostream)
  "Serializes a message object of type '<RobotStop-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStop-response>) istream)
  "Deserializes a message object of type '<RobotStop-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStop-response>)))
  "Returns string type for a service object of type '<RobotStop-response>"
  "yidamsg/RobotStopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStop-response)))
  "Returns string type for a service object of type 'RobotStop-response"
  "yidamsg/RobotStopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStop-response>)))
  "Returns md5sum for a message object of type '<RobotStop-response>"
  "fa5b653280beb40079fadd2d89b1b31e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStop-response)))
  "Returns md5sum for a message object of type 'RobotStop-response"
  "fa5b653280beb40079fadd2d89b1b31e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStop-response>)))
  "Returns full string definition for message of type '<RobotStop-response>"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStop-response)))
  "Returns full string definition for message of type 'RobotStop-response"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStop-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStop-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotStop)))
  'RobotStop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotStop)))
  'RobotStop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStop)))
  "Returns string type for a service object of type '<RobotStop>"
  "yidamsg/RobotStop")