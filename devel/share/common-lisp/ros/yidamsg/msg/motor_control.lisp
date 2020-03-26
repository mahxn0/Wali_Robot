; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude motor_control.msg.html

(cl:defclass <motor_control> (roslisp-msg-protocol:ros-message)
  ((direct_angle
    :reader direct_angle
    :initarg :direct_angle
    :type cl:integer
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass motor_control (<motor_control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor_control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor_control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<motor_control> is deprecated: use yidamsg-msg:motor_control instead.")))

(cl:ensure-generic-function 'direct_angle-val :lambda-list '(m))
(cl:defmethod direct_angle-val ((m <motor_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:direct_angle-val is deprecated.  Use yidamsg-msg:direct_angle instead.")
  (direct_angle m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <motor_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:speed-val is deprecated.  Use yidamsg-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor_control>) ostream)
  "Serializes a message object of type '<motor_control>"
  (cl:let* ((signed (cl:slot-value msg 'direct_angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor_control>) istream)
  "Deserializes a message object of type '<motor_control>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direct_angle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor_control>)))
  "Returns string type for a message object of type '<motor_control>"
  "yidamsg/motor_control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_control)))
  "Returns string type for a message object of type 'motor_control"
  "yidamsg/motor_control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor_control>)))
  "Returns md5sum for a message object of type '<motor_control>"
  "11e242d50e6d6f6742ef1ce74bcc4554")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor_control)))
  "Returns md5sum for a message object of type 'motor_control"
  "11e242d50e6d6f6742ef1ce74bcc4554")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor_control>)))
  "Returns full string definition for message of type '<motor_control>"
  (cl:format cl:nil "int32 direct_angle~%geometry_msgs/Twist speed~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor_control)))
  "Returns full string definition for message of type 'motor_control"
  (cl:format cl:nil "int32 direct_angle~%geometry_msgs/Twist speed~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor_control>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor_control>))
  "Converts a ROS message object to a list"
  (cl:list 'motor_control
    (cl:cons ':direct_angle (direct_angle msg))
    (cl:cons ':speed (speed msg))
))
