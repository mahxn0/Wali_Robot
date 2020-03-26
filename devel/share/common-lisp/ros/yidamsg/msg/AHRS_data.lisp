; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude AHRS_data.msg.html

(cl:defclass <AHRS_data> (roslisp-msg-protocol:ros-message)
  ((anglex
    :reader anglex
    :initarg :anglex
    :type cl:float
    :initform 0.0)
   (angley
    :reader angley
    :initarg :angley
    :type cl:float
    :initform 0.0)
   (anglez
    :reader anglez
    :initarg :anglez
    :type cl:float
    :initform 0.0))
)

(cl:defclass AHRS_data (<AHRS_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AHRS_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AHRS_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<AHRS_data> is deprecated: use yidamsg-msg:AHRS_data instead.")))

(cl:ensure-generic-function 'anglex-val :lambda-list '(m))
(cl:defmethod anglex-val ((m <AHRS_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:anglex-val is deprecated.  Use yidamsg-msg:anglex instead.")
  (anglex m))

(cl:ensure-generic-function 'angley-val :lambda-list '(m))
(cl:defmethod angley-val ((m <AHRS_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:angley-val is deprecated.  Use yidamsg-msg:angley instead.")
  (angley m))

(cl:ensure-generic-function 'anglez-val :lambda-list '(m))
(cl:defmethod anglez-val ((m <AHRS_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:anglez-val is deprecated.  Use yidamsg-msg:anglez instead.")
  (anglez m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AHRS_data>) ostream)
  "Serializes a message object of type '<AHRS_data>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'anglex))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angley))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'anglez))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AHRS_data>) istream)
  "Deserializes a message object of type '<AHRS_data>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'anglex) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angley) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'anglez) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AHRS_data>)))
  "Returns string type for a message object of type '<AHRS_data>"
  "yidamsg/AHRS_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AHRS_data)))
  "Returns string type for a message object of type 'AHRS_data"
  "yidamsg/AHRS_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AHRS_data>)))
  "Returns md5sum for a message object of type '<AHRS_data>"
  "013b565a7d88e68adfcd16c0a3dea0d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AHRS_data)))
  "Returns md5sum for a message object of type 'AHRS_data"
  "013b565a7d88e68adfcd16c0a3dea0d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AHRS_data>)))
  "Returns full string definition for message of type '<AHRS_data>"
  (cl:format cl:nil "float32 anglex~%float32 angley~%float32 anglez~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AHRS_data)))
  "Returns full string definition for message of type 'AHRS_data"
  (cl:format cl:nil "float32 anglex~%float32 angley~%float32 anglez~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AHRS_data>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AHRS_data>))
  "Converts a ROS message object to a list"
  (cl:list 'AHRS_data
    (cl:cons ':anglex (anglex msg))
    (cl:cons ':angley (angley msg))
    (cl:cons ':anglez (anglez msg))
))
