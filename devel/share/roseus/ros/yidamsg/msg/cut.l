;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::cut)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'cut (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::CUT")
  (make-package "YIDAMSG::CUT"))

(in-package "ROS")
;;//! \htmlinclude cut.msg.html


(defclass yidamsg::cut
  :super ros::object
  :slots (_data ))

(defmethod yidamsg::cut
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::cut :md5sum-) "da5909fbe378aeaf85e547e830cc1bb7")
(setf (get yidamsg::cut :datatype-) "yidamsg/cut")
(setf (get yidamsg::cut :definition-)
      "int32 data

")



(provide :yidamsg/cut "da5909fbe378aeaf85e547e830cc1bb7")


