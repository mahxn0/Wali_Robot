;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::yuntai_control)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'yuntai_control (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::YUNTAI_CONTROL")
  (make-package "YIDAMSG::YUNTAI_CONTROL"))

(in-package "ROS")
;;//! \htmlinclude yuntai_control.msg.html


(defclass yidamsg::yuntai_control
  :super ros::object
  :slots (_direction _number _step ))

(defmethod yidamsg::yuntai_control
  (:init
   (&key
    ((:direction __direction) "")
    ((:number __number) 0)
    ((:step __step) 0)
    )
   (send-super :init)
   (setq _direction (string __direction))
   (setq _number (round __number))
   (setq _step (round __step))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:step
   (&optional __step)
   (if __step (setq _step __step)) _step)
  (:serialization-length
   ()
   (+
    ;; string _direction
    4 (length _direction)
    ;; int32 _number
    4
    ;; int32 _step
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;; int32 _number
       (write-long _number s)
     ;; int32 _step
       (write-long _step s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _number
     (setq _number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _step
     (setq _step (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::yuntai_control :md5sum-) "156cafb639634b7b2cda09c35c8b845f")
(setf (get yidamsg::yuntai_control :datatype-) "yidamsg/yuntai_control")
(setf (get yidamsg::yuntai_control :definition-)
      "string direction
int32 number
int32 step

")



(provide :yidamsg/yuntai_control "156cafb639634b7b2cda09c35c8b845f")


