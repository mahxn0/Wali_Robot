; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude InspectedResult.msg.html

(cl:defclass <InspectedResult> (roslisp-msg-protocol:ros-message)
  ((camid
    :reader camid
    :initarg :camid
    :type cl:integer
    :initform 0)
   (picid
    :reader picid
    :initarg :picid
    :type cl:integer
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (equipimage
    :reader equipimage
    :initarg :equipimage
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (nameplates
    :reader nameplates
    :initarg :nameplates
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (equipid
    :reader equipid
    :initarg :equipid
    :type cl:string
    :initform "")
   (result
    :reader result
    :initarg :result
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass InspectedResult (<InspectedResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InspectedResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InspectedResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<InspectedResult> is deprecated: use yidamsg-msg:InspectedResult instead.")))

(cl:ensure-generic-function 'camid-val :lambda-list '(m))
(cl:defmethod camid-val ((m <InspectedResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:camid-val is deprecated.  Use yidamsg-msg:camid instead.")
  (camid m))

(cl:ensure-generic-function 'picid-val :lambda-list '(m))
(cl:defmethod picid-val ((m <InspectedResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:picid-val is deprecated.  Use yidamsg-msg:picid instead.")
  (picid m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <InspectedResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:x-val is deprecated.  Use yidamsg-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <InspectedResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:y-val is deprecated.  Use yidamsg-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <InspectedResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:z-val is deprecated.  Use yidamsg-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'equipimage-val :lambda-list '(m))
(cl:defmethod equipimage-val ((m <InspectedResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:equipimage-val is deprecated.  Use yidamsg-msg:equipimage instead.")
  (equipimage m))

(cl:ensure-generic-function 'nameplates-val :lambda-list '(m))
(cl:defmethod nameplates-val ((m <InspectedResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:nameplates-val is deprecated.  Use yidamsg-msg:nameplates instead.")
  (nameplates m))

(cl:ensure-generic-function 'equipid-val :lambda-list '(m))
(cl:defmethod equipid-val ((m <InspectedResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:equipid-val is deprecated.  Use yidamsg-msg:equipid instead.")
  (equipid m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <InspectedResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:result-val is deprecated.  Use yidamsg-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <InspectedResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:success-val is deprecated.  Use yidamsg-msg:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InspectedResult>) ostream)
  "Serializes a message object of type '<InspectedResult>"
  (cl:let* ((signed (cl:slot-value msg 'camid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'picid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'equipimage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'equipimage))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nameplates))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'nameplates))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'equipid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'equipid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InspectedResult>) istream)
  "Deserializes a message object of type '<InspectedResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'picid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'equipimage) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'equipimage)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nameplates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nameplates)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'equipid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'equipid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InspectedResult>)))
  "Returns string type for a message object of type '<InspectedResult>"
  "yidamsg/InspectedResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InspectedResult)))
  "Returns string type for a message object of type 'InspectedResult"
  "yidamsg/InspectedResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InspectedResult>)))
  "Returns md5sum for a message object of type '<InspectedResult>"
  "a5099b70cbd9d8bb23d365d2dd09bd90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InspectedResult)))
  "Returns md5sum for a message object of type 'InspectedResult"
  "a5099b70cbd9d8bb23d365d2dd09bd90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InspectedResult>)))
  "Returns full string definition for message of type '<InspectedResult>"
  (cl:format cl:nil "int32 camid~%int32 picid~%float32 x~%float32 y~%float32 z~%uint8[] equipimage~%uint8[] nameplates~%string equipid~%string result~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InspectedResult)))
  "Returns full string definition for message of type 'InspectedResult"
  (cl:format cl:nil "int32 camid~%int32 picid~%float32 x~%float32 y~%float32 z~%uint8[] equipimage~%uint8[] nameplates~%string equipid~%string result~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InspectedResult>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'equipimage) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nameplates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:length (cl:slot-value msg 'equipid))
     4 (cl:length (cl:slot-value msg 'result))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InspectedResult>))
  "Converts a ROS message object to a list"
  (cl:list 'InspectedResult
    (cl:cons ':camid (camid msg))
    (cl:cons ':picid (picid msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':equipimage (equipimage msg))
    (cl:cons ':nameplates (nameplates msg))
    (cl:cons ':equipid (equipid msg))
    (cl:cons ':result (result msg))
    (cl:cons ':success (success msg))
))
