; Auto-generated. Do not edit!


(cl:in-package yidamsg-msg)


;//! \htmlinclude OriginWeather.msg.html

(cl:defclass <OriginWeather> (roslisp-msg-protocol:ros-message)
  ((pressure
    :reader pressure
    :initarg :pressure
    :type cl:integer
    :initform 0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:integer
    :initform 0)
   (humidity
    :reader humidity
    :initarg :humidity
    :type cl:integer
    :initform 0)
   (illumination
    :reader illumination
    :initarg :illumination
    :type cl:integer
    :initform 0)
   (windspeed
    :reader windspeed
    :initarg :windspeed
    :type cl:integer
    :initform 0)
   (winddirection
    :reader winddirection
    :initarg :winddirection
    :type cl:integer
    :initform 0)
   (rainorsnow
    :reader rainorsnow
    :initarg :rainorsnow
    :type cl:integer
    :initform 0))
)

(cl:defclass OriginWeather (<OriginWeather>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OriginWeather>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OriginWeather)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yidamsg-msg:<OriginWeather> is deprecated: use yidamsg-msg:OriginWeather instead.")))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <OriginWeather>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:pressure-val is deprecated.  Use yidamsg-msg:pressure instead.")
  (pressure m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <OriginWeather>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:temperature-val is deprecated.  Use yidamsg-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'humidity-val :lambda-list '(m))
(cl:defmethod humidity-val ((m <OriginWeather>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:humidity-val is deprecated.  Use yidamsg-msg:humidity instead.")
  (humidity m))

(cl:ensure-generic-function 'illumination-val :lambda-list '(m))
(cl:defmethod illumination-val ((m <OriginWeather>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:illumination-val is deprecated.  Use yidamsg-msg:illumination instead.")
  (illumination m))

(cl:ensure-generic-function 'windspeed-val :lambda-list '(m))
(cl:defmethod windspeed-val ((m <OriginWeather>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:windspeed-val is deprecated.  Use yidamsg-msg:windspeed instead.")
  (windspeed m))

(cl:ensure-generic-function 'winddirection-val :lambda-list '(m))
(cl:defmethod winddirection-val ((m <OriginWeather>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:winddirection-val is deprecated.  Use yidamsg-msg:winddirection instead.")
  (winddirection m))

(cl:ensure-generic-function 'rainorsnow-val :lambda-list '(m))
(cl:defmethod rainorsnow-val ((m <OriginWeather>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yidamsg-msg:rainorsnow-val is deprecated.  Use yidamsg-msg:rainorsnow instead.")
  (rainorsnow m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OriginWeather>) ostream)
  "Serializes a message object of type '<OriginWeather>"
  (cl:let* ((signed (cl:slot-value msg 'pressure)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'humidity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'illumination)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'windspeed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'winddirection)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rainorsnow)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OriginWeather>) istream)
  "Deserializes a message object of type '<OriginWeather>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pressure) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'humidity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'illumination) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'windspeed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'winddirection) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rainorsnow) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OriginWeather>)))
  "Returns string type for a message object of type '<OriginWeather>"
  "yidamsg/OriginWeather")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OriginWeather)))
  "Returns string type for a message object of type 'OriginWeather"
  "yidamsg/OriginWeather")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OriginWeather>)))
  "Returns md5sum for a message object of type '<OriginWeather>"
  "f8f36e3f2096377d234886a58cfe782a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OriginWeather)))
  "Returns md5sum for a message object of type 'OriginWeather"
  "f8f36e3f2096377d234886a58cfe782a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OriginWeather>)))
  "Returns full string definition for message of type '<OriginWeather>"
  (cl:format cl:nil "int32 pressure~%int32 temperature~%int32 humidity~%int32 illumination~%int32 windspeed~%int32 winddirection~%int32 rainorsnow~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OriginWeather)))
  "Returns full string definition for message of type 'OriginWeather"
  (cl:format cl:nil "int32 pressure~%int32 temperature~%int32 humidity~%int32 illumination~%int32 windspeed~%int32 winddirection~%int32 rainorsnow~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OriginWeather>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OriginWeather>))
  "Converts a ROS message object to a list"
  (cl:list 'OriginWeather
    (cl:cons ':pressure (pressure msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':humidity (humidity msg))
    (cl:cons ':illumination (illumination msg))
    (cl:cons ':windspeed (windspeed msg))
    (cl:cons ':winddirection (winddirection msg))
    (cl:cons ':rainorsnow (rainorsnow msg))
))
