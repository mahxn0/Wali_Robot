;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::ultrasound)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'ultrasound (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::ULTRASOUND")
  (make-package "YIDAMSG::ULTRASOUND"))

(in-package "ROS")
;;//! \htmlinclude ultrasound.msg.html


(defclass yidamsg::ultrasound
  :super ros::object
  :slots (_name _flag ))

(defmethod yidamsg::ultrasound
  (:init
   (&key
    ((:name __name) "")
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _flag (round __flag))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int16 _flag
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int16 _flag
       (write-word _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _flag
     (setq _flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get yidamsg::ultrasound :md5sum-) "fa8685813b62f3b6086d58d33320cb55")
(setf (get yidamsg::ultrasound :datatype-) "yidamsg/ultrasound")
(setf (get yidamsg::ultrasound :definition-)
      "string name
int16 flag

")



(provide :yidamsg/ultrasound "fa8685813b62f3b6086d58d33320cb55")


