;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::yuntai_reset_control)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'yuntai_reset_control (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::YUNTAI_RESET_CONTROL")
  (make-package "YIDAMSG::YUNTAI_RESET_CONTROL"))

(in-package "ROS")
;;//! \htmlinclude yuntai_reset_control.msg.html


(defclass yidamsg::yuntai_reset_control
  :super ros::object
  :slots (_id _data ))

(defmethod yidamsg::yuntai_reset_control
  (:init
   (&key
    ((:id __id) 0)
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _data (round __data))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::yuntai_reset_control :md5sum-) "4058467a01f926ba3bf7b0d5498ea1a0")
(setf (get yidamsg::yuntai_reset_control :datatype-) "yidamsg/yuntai_reset_control")
(setf (get yidamsg::yuntai_reset_control :definition-)
      "int32 id
int32 data

")



(provide :yidamsg/yuntai_reset_control "4058467a01f926ba3bf7b0d5498ea1a0")


