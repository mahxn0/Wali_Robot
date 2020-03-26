; Auto-generated. Do not edit!


(cl:in-package yidamsg-srv)


;//! \htmlinclude GetBattery-request.msg.html

(cl:defclass <GetBattery-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetBattery-request (<GetBattery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBattery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBattery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<GetBattery-request> is deprecated: use yidamsg-srv:GetBattery-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBattery-request>) ostream)
  "Serializes a message object of type '<GetBattery-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBattery-request>) istream)
  "Deserializes a message object of type '<GetBattery-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBattery-request>)))
  "Returns string type for a service object of type '<GetBattery-request>"
  "yidamsg/GetBatteryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBattery-request)))
  "Returns string type for a service object of type 'GetBattery-request"
  "yidamsg/GetBatteryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBattery-request>)))
  "Returns md5sum for a message object of type '<GetBattery-request>"
  "295e87f732e03ed6443766199f72b602")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBattery-request)))
  "Returns md5sum for a message object of type 'GetBattery-request"
  "295e87f732e03ed6443766199f72b602")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBattery-request>)))
  "Returns full string definition for message of type '<GetBattery-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBattery-request)))
  "Returns full string definition for message of type 'GetBattery-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBattery-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBattery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBattery-request
))
;//! \htmlinclude GetBattery-response.msg.html

(cl:defclass <GetBattery-response> (roslisp-msg-protocol:ros-message)
  ((battery
    :reader battery
    :initarg :battery
    :type cl:integer
    :initform 0))
)

(cl:defclass GetBattery-response (<GetBattery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBattery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBattery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<GetBattery-response> is deprecated: use yidamsg-srv:GetBattery-response instead.")))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <GetBattery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:battery-val is deprecated.  Use yidamsg-srv:battery instead.")
  (battery m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBattery-response>) ostream)
  "Serializes a message object of type '<GetBattery-response>"
  (cl:let* ((signed (cl:slot-value msg 'battery)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBattery-response>) istream)
  "Deserializes a message object of type '<GetBattery-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBattery-response>)))
  "Returns string type for a service object of type '<GetBattery-response>"
  "yidamsg/GetBatteryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBattery-response)))
  "Returns string type for a service object of type 'GetBattery-response"
  "yidamsg/GetBatteryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBattery-response>)))
  "Returns md5sum for a message object of type '<GetBattery-response>"
  "295e87f732e03ed6443766199f72b602")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBattery-response)))
  "Returns md5sum for a message object of type 'GetBattery-response"
  "295e87f732e03ed6443766199f72b602")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBattery-response>)))
  "Returns full string definition for message of type '<GetBattery-response>"
  (cl:format cl:nil "int32 battery~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBattery-response)))
  "Returns full string definition for message of type 'GetBattery-response"
  (cl:format cl:nil "int32 battery~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBattery-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBattery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBattery-response
    (cl:cons ':battery (battery msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetBattery)))
  'GetBattery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetBattery)))
  'GetBattery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBattery)))
  "Returns string type for a service object of type '<GetBattery>"
  "yidamsg/GetBattery")