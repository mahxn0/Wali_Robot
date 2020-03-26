;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::battery)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'battery (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::BATTERY")
  (make-package "YIDAMSG::BATTERY"))

(in-package "ROS")
;;//! \htmlinclude battery.msg.html


(defclass yidamsg::battery
  :super ros::object
  :slots (_charge ))

(defmethod yidamsg::battery
  (:init
   (&key
    ((:charge __charge) 0.0)
    )
   (send-super :init)
   (setq _charge (float __charge))
   self)
  (:charge
   (&optional __charge)
   (if __charge (setq _charge __charge)) _charge)
  (:serialization-length
   ()
   (+
    ;; float32 _charge
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _charge
       (sys::poke _charge (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _charge
     (setq _charge (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::battery :md5sum-) "f43634fd818f1f0b26dc3c72b9bab8a8")
(setf (get yidamsg::battery :datatype-) "yidamsg/battery")
(setf (get yidamsg::battery :definition-)
      "float32 charge

")



(provide :yidamsg/battery "f43634fd818f1f0b26dc3c72b9bab8a8")


