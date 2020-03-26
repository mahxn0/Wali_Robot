;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::take_photo)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'take_photo (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::TAKE_PHOTO")
  (make-package "YIDAMSG::TAKE_PHOTO"))

(in-package "ROS")
;;//! \htmlinclude take_photo.msg.html


(defclass yidamsg::take_photo
  :super ros::object
  :slots (_flag ))

(defmethod yidamsg::take_photo
  (:init
   (&key
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _flag (round __flag))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; int32 _flag
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _flag
       (write-long _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _flag
     (setq _flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::take_photo :md5sum-) "aa0dbc5596ec12974ea3a17a045b36e0")
(setf (get yidamsg::take_photo :datatype-) "yidamsg/take_photo")
(setf (get yidamsg::take_photo :definition-)
      "int32 flag

")



(provide :yidamsg/take_photo "aa0dbc5596ec12974ea3a17a045b36e0")


