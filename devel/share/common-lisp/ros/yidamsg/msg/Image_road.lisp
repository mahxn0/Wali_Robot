; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude Image_road.msg.html

(cl:defclass <Image_road> (roslisp-msg-protocol:ros-message)
  ((imagedata
    :reader imagedata
    :initarg :imagedata
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Image_road (<Image_road>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Image_road>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Image_road)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<Image_road> is deprecated: use yidamsg-msg:Image_road instead.")))

(cl:ensure-generic-function 'imagedata-val :lambda-list '(m))
(cl:defmethod imagedata-val ((m <Image_road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:imagedata-val is deprecated.  Use yidamsg-msg:imagedata instead.")
  (imagedata m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Image_road>) ostream)
  "Serializes a message object of type '<Image_road>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'imagedata))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'imagedata))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Image_road>) istream)
  "Deserializes a message object of type '<Image_road>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'imagedata) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'imagedata)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Image_road>)))
  "Returns string type for a message object of type '<Image_road>"
  "yidamsg/Image_road")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Image_road)))
  "Returns string type for a message object of type 'Image_road"
  "yidamsg/Image_road")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Image_road>)))
  "Returns md5sum for a message object of type '<Image_road>"
  "1842ac737d8c10dbcefa8cf872dac1f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Image_road)))
  "Returns md5sum for a message object of type 'Image_road"
  "1842ac737d8c10dbcefa8cf872dac1f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Image_road>)))
  "Returns full string definition for message of type '<Image_road>"
  (cl:format cl:nil "uint8[] imagedata~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Image_road)))
  "Returns full string definition for message of type 'Image_road"
  (cl:format cl:nil "uint8[] imagedata~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Image_road>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'imagedata) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Image_road>))
  "Converts a ROS message object to a list"
  (cl:list 'Image_road
    (cl:cons ':imagedata (imagedata msg))
))
