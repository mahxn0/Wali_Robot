; Auto-generated. Do not edit!


(cl:in-package yidamsg-srv)


;//! \htmlinclude Object_Recognition-request.msg.html

(cl:defclass <Object_Recognition-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Object_Recognition-request (<Object_Recognition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Object_Recognition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Object_Recognition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<Object_Recognition-request> is deprecated: use yidamsg-srv:Object_Recognition-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <Object_Recognition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:start-val is deprecated.  Use yidamsg-srv:start instead.")
  (start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Object_Recognition-request>) ostream)
  "Serializes a message object of type '<Object_Recognition-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Object_Recognition-request>) istream)
  "Deserializes a message object of type '<Object_Recognition-request>"
    (cl:setf (cl:slot-value msg 'start) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Object_Recognition-request>)))
  "Returns string type for a service object of type '<Object_Recognition-request>"
  "yidamsg/Object_RecognitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Object_Recognition-request)))
  "Returns string type for a service object of type 'Object_Recognition-request"
  "yidamsg/Object_RecognitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Object_Recognition-request>)))
  "Returns md5sum for a message object of type '<Object_Recognition-request>"
  "0304abb62c1d15138b7d0bfcf0865362")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Object_Recognition-request)))
  "Returns md5sum for a message object of type 'Object_Recognition-request"
  "0304abb62c1d15138b7d0bfcf0865362")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Object_Recognition-request>)))
  "Returns full string definition for message of type '<Object_Recognition-request>"
  (cl:format cl:nil "bool start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Object_Recognition-request)))
  "Returns full string definition for message of type 'Object_Recognition-request"
  (cl:format cl:nil "bool start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Object_Recognition-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Object_Recognition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Object_Recognition-request
    (cl:cons ':start (start msg))
))
;//! \htmlinclude Object_Recognition-response.msg.html

(cl:defclass <Object_Recognition-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Object_Recognition-response (<Object_Recognition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Object_Recognition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Object_Recognition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-srv:<Object_Recognition-response> is deprecated: use yidamsg-srv:Object_Recognition-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Object_Recognition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-srv:result-val is deprecated.  Use yidamsg-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Object_Recognition-response>) ostream)
  "Serializes a message object of type '<Object_Recognition-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Object_Recognition-response>) istream)
  "Deserializes a message object of type '<Object_Recognition-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Object_Recognition-response>)))
  "Returns string type for a service object of type '<Object_Recognition-response>"
  "yidamsg/Object_RecognitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Object_Recognition-response)))
  "Returns string type for a service object of type 'Object_Recognition-response"
  "yidamsg/Object_RecognitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Object_Recognition-response>)))
  "Returns md5sum for a message object of type '<Object_Recognition-response>"
  "0304abb62c1d15138b7d0bfcf0865362")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Object_Recognition-response)))
  "Returns md5sum for a message object of type 'Object_Recognition-response"
  "0304abb62c1d15138b7d0bfcf0865362")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Object_Recognition-response>)))
  "Returns full string definition for message of type '<Object_Recognition-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Object_Recognition-response)))
  "Returns full string definition for message of type 'Object_Recognition-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Object_Recognition-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Object_Recognition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Object_Recognition-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Object_Recognition)))
  'Object_Recognition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Object_Recognition)))
  'Object_Recognition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Object_Recognition)))
  "Returns string type for a service object of type '<Object_Recognition>"
  "yidamsg/Object_Recognition")