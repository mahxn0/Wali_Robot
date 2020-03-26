; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude DBTableUpdate.msg.html

(cl:defclass <DBTableUpdate> (roslisp-msg-protocol:ros-message)
  ((table_id
    :reader table_id
    :initarg :table_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DBTableUpdate (<DBTableUpdate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DBTableUpdate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DBTableUpdate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<DBTableUpdate> is deprecated: use yidamsg-msg:DBTableUpdate instead.")))

(cl:ensure-generic-function 'table_id-val :lambda-list '(m))
(cl:defmethod table_id-val ((m <DBTableUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:table_id-val is deprecated.  Use yidamsg-msg:table_id instead.")
  (table_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DBTableUpdate>) ostream)
  "Serializes a message object of type '<DBTableUpdate>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'table_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DBTableUpdate>) istream)
  "Deserializes a message object of type '<DBTableUpdate>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'table_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DBTableUpdate>)))
  "Returns string type for a message object of type '<DBTableUpdate>"
  "yidamsg/DBTableUpdate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DBTableUpdate)))
  "Returns string type for a message object of type 'DBTableUpdate"
  "yidamsg/DBTableUpdate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DBTableUpdate>)))
  "Returns md5sum for a message object of type '<DBTableUpdate>"
  "ad519c9257e2c4fe302696830015c294")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DBTableUpdate)))
  "Returns md5sum for a message object of type 'DBTableUpdate"
  "ad519c9257e2c4fe302696830015c294")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DBTableUpdate>)))
  "Returns full string definition for message of type '<DBTableUpdate>"
  (cl:format cl:nil "uint8 table_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DBTableUpdate)))
  "Returns full string definition for message of type 'DBTableUpdate"
  (cl:format cl:nil "uint8 table_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DBTableUpdate>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DBTableUpdate>))
  "Converts a ROS message object to a list"
  (cl:list 'DBTableUpdate
    (cl:cons ':table_id (table_id msg))
))
