; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude ImageTest.msg.html

(cl:defclass <ImageTest> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (len
    :reader len
    :initarg :len
    :type cl:integer
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0))
)

(cl:defclass ImageTest (<ImageTest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageTest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageTest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<ImageTest> is deprecated: use yidamsg-msg:ImageTest instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <ImageTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:image-val is deprecated.  Use yidamsg-msg:image instead.")
  (image m))

(cl:ensure-generic-function 'len-val :lambda-list '(m))
(cl:defmethod len-val ((m <ImageTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:len-val is deprecated.  Use yidamsg-msg:len instead.")
  (len m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <ImageTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:x-val is deprecated.  Use yidamsg-msg:x instead.")
  (x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageTest>) ostream)
  "Serializes a message object of type '<ImageTest>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'image))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'image))
  (cl:let* ((signed (cl:slot-value msg 'len)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageTest>) istream)
  "Deserializes a message object of type '<ImageTest>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'image) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'image)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'len) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageTest>)))
  "Returns string type for a message object of type '<ImageTest>"
  "yidamsg/ImageTest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageTest)))
  "Returns string type for a message object of type 'ImageTest"
  "yidamsg/ImageTest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageTest>)))
  "Returns md5sum for a message object of type '<ImageTest>"
  "e6ec7279285993bebecee3c8ef8bc36c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageTest)))
  "Returns md5sum for a message object of type 'ImageTest"
  "e6ec7279285993bebecee3c8ef8bc36c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageTest>)))
  "Returns full string definition for message of type '<ImageTest>"
  (cl:format cl:nil "uint8[] image~%int32 len~%float32 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageTest)))
  "Returns full string definition for message of type 'ImageTest"
  (cl:format cl:nil "uint8[] image~%int32 len~%float32 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageTest>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'image) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageTest>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageTest
    (cl:cons ':image (image msg))
    (cl:cons ':len (len msg))
    (cl:cons ':x (x msg))
))
