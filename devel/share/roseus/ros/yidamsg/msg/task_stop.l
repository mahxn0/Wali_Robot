;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::task_stop)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'task_stop (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::TASK_STOP")
  (make-package "YIDAMSG::TASK_STOP"))

(in-package "ROS")
;;//! \htmlinclude task_stop.msg.html


(defclass yidamsg::task_stop
  :super ros::object
  :slots (_type ))

(defmethod yidamsg::task_stop
  (:init
   (&key
    ((:type __type) nil)
    )
   (send-super :init)
   (setq _type __type)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; bool _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _type
       (if _type (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _type
     (setq _type (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get yidamsg::task_stop :md5sum-) "1b83a985e6f5da6bbdf48067ed3927fb")
(setf (get yidamsg::task_stop :datatype-) "yidamsg/task_stop")
(setf (get yidamsg::task_stop :definition-)
      "bool type

")



(provide :yidamsg/task_stop "1b83a985e6f5da6bbdf48067ed3927fb")


