; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude image.msg.html

(cl:defclass <image> (roslisp-msg-protocol:ros-message)
  ((pImgBuf1
    :reader pImgBuf1
    :initarg :pImgBuf1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 200000 :element-type 'cl:fixnum :initial-element 0))
   (pImgBuf2
    :reader pImgBuf2
    :initarg :pImgBuf2
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 200000 :element-type 'cl:fixnum :initial-element 0))
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (id1
    :reader id1
    :initarg :id1
    :type cl:integer
    :initform 0)
   (id2
    :reader id2
    :initarg :id2
    :type cl:integer
    :initform 0)
   (length1
    :reader length1
    :initarg :length1
    :type cl:integer
    :initform 0)
   (length2
    :reader length2
    :initarg :length2
    :type cl:integer
    :initform 0))
)

(cl:defclass image (<image>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <image>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'image)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<image> is deprecated: use yidamsg-msg:image instead.")))

(cl:ensure-generic-function 'pImgBuf1-val :lambda-list '(m))
(cl:defmethod pImgBuf1-val ((m <image>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:pImgBuf1-val is deprecated.  Use yidamsg-msg:pImgBuf1 instead.")
  (pImgBuf1 m))

(cl:ensure-generic-function 'pImgBuf2-val :lambda-list '(m))
(cl:defmethod pImgBuf2-val ((m <image>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:pImgBuf2-val is deprecated.  Use yidamsg-msg:pImgBuf2 instead.")
  (pImgBuf2 m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <image>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:width-val is deprecated.  Use yidamsg-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <image>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:height-val is deprecated.  Use yidamsg-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'id1-val :lambda-list '(m))
(cl:defmethod id1-val ((m <image>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:id1-val is deprecated.  Use yidamsg-msg:id1 instead.")
  (id1 m))

(cl:ensure-generic-function 'id2-val :lambda-list '(m))
(cl:defmethod id2-val ((m <image>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:id2-val is deprecated.  Use yidamsg-msg:id2 instead.")
  (id2 m))

(cl:ensure-generic-function 'length1-val :lambda-list '(m))
(cl:defmethod length1-val ((m <image>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:length1-val is deprecated.  Use yidamsg-msg:length1 instead.")
  (length1 m))

(cl:ensure-generic-function 'length2-val :lambda-list '(m))
(cl:defmethod length2-val ((m <image>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:length2-val is deprecated.  Use yidamsg-msg:length2 instead.")
  (length2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <image>) ostream)
  "Serializes a message object of type '<image>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'pImgBuf1))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'pImgBuf2))
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'id1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'id2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'length1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'length2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <image>) istream)
  "Deserializes a message object of type '<image>"
  (cl:setf (cl:slot-value msg 'pImgBuf1) (cl:make-array 200000))
  (cl:let ((vals (cl:slot-value msg 'pImgBuf1)))
    (cl:dotimes (i 200000)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'pImgBuf2) (cl:make-array 200000))
  (cl:let ((vals (cl:slot-value msg 'pImgBuf2)))
    (cl:dotimes (i 200000)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'length1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'length2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<image>)))
  "Returns string type for a message object of type '<image>"
  "yidamsg/image")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'image)))
  "Returns string type for a message object of type 'image"
  "yidamsg/image")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<image>)))
  "Returns md5sum for a message object of type '<image>"
  "d49f80c06464cb3dde6b4fc6f30be9fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'image)))
  "Returns md5sum for a message object of type 'image"
  "d49f80c06464cb3dde6b4fc6f30be9fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<image>)))
  "Returns full string definition for message of type '<image>"
  (cl:format cl:nil "uint8[200000] pImgBuf1~%uint8[200000] pImgBuf2~%int32 width~%int32 height~%int32 id1~%int32 id2~%int32 length1~%int32 length2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'image)))
  "Returns full string definition for message of type 'image"
  (cl:format cl:nil "uint8[200000] pImgBuf1~%uint8[200000] pImgBuf2~%int32 width~%int32 height~%int32 id1~%int32 id2~%int32 length1~%int32 length2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <image>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pImgBuf1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pImgBuf2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <image>))
  "Converts a ROS message object to a list"
  (cl:list 'image
    (cl:cons ':pImgBuf1 (pImgBuf1 msg))
    (cl:cons ':pImgBuf2 (pImgBuf2 msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':id1 (id1 msg))
    (cl:cons ':id2 (id2 msg))
    (cl:cons ':length1 (length1 msg))
    (cl:cons ':length2 (length2 msg))
))
