; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude car_status.msg.html

(cl:defclass <car_status> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (left_data
    :reader left_data
    :initarg :left_data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (right_data
    :reader right_data
    :initarg :right_data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass car_status (<car_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <car_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'car_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<car_status> is deprecated: use yidamsg-msg:car_status instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <car_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:name-val is deprecated.  Use yidamsg-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'left_data-val :lambda-list '(m))
(cl:defmethod left_data-val ((m <car_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:left_data-val is deprecated.  Use yidamsg-msg:left_data instead.")
  (left_data m))

(cl:ensure-generic-function 'right_data-val :lambda-list '(m))
(cl:defmethod right_data-val ((m <car_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:right_data-val is deprecated.  Use yidamsg-msg:right_data instead.")
  (right_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <car_status>) ostream)
  "Serializes a message object of type '<car_status>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'left_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'left_data))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'right_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'right_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <car_status>) istream)
  "Deserializes a message object of type '<car_status>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'left_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'left_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'right_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'right_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<car_status>)))
  "Returns string type for a message object of type '<car_status>"
  "yidamsg/car_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'car_status)))
  "Returns string type for a message object of type 'car_status"
  "yidamsg/car_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<car_status>)))
  "Returns md5sum for a message object of type '<car_status>"
  "b0fdc85453ace119bca6040d3b417a15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'car_status)))
  "Returns md5sum for a message object of type 'car_status"
  "b0fdc85453ace119bca6040d3b417a15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<car_status>)))
  "Returns full string definition for message of type '<car_status>"
  (cl:format cl:nil "string name~%float32[] left_data~%float32[] right_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'car_status)))
  "Returns full string definition for message of type 'car_status"
  (cl:format cl:nil "string name~%float32[] left_data~%float32[] right_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <car_status>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'left_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'right_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <car_status>))
  "Converts a ROS message object to a list"
  (cl:list 'car_status
    (cl:cons ':name (name msg))
    (cl:cons ':left_data (left_data msg))
    (cl:cons ':right_data (right_data msg))
))
