;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::fly_ctl)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'fly_ctl (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::FLY_CTL")
  (make-package "YIDAMSG::FLY_CTL"))

(in-package "ROS")
;;//! \htmlinclude fly_ctl.msg.html


(defclass yidamsg::fly_ctl
  :super ros::object
  :slots (_channel _data ))

(defmethod yidamsg::fly_ctl
  (:init
   (&key
    ((:channel __channel) 0)
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _channel (round __channel))
   (setq _data (round __data))
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int16 _channel
    2
    ;; int16 _data
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _channel
       (write-word _channel s)
     ;; int16 _data
       (write-word _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _channel
     (setq _channel (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _data
     (setq _data (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get yidamsg::fly_ctl :md5sum-) "5d986998f9a980ae4301ea3b5442b289")
(setf (get yidamsg::fly_ctl :datatype-) "yidamsg/fly_ctl")
(setf (get yidamsg::fly_ctl :definition-)
      "int16 channel
int16 data

")



(provide :yidamsg/fly_ctl "5d986998f9a980ae4301ea3b5442b289")


