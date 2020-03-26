;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::Image_ID)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'Image_ID (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::IMAGE_ID")
  (make-package "YIDAMSG::IMAGE_ID"))

(in-package "ROS")
;;//! \htmlinclude Image_ID.msg.html


(defclass yidamsg::Image_ID
  :super ros::object
  :slots (_id ))

(defmethod yidamsg::Image_ID
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::Image_ID :md5sum-) "c5e4a7d59c68f74eabcec876a00216aa")
(setf (get yidamsg::Image_ID :datatype-) "yidamsg/Image_ID")
(setf (get yidamsg::Image_ID :definition-)
      "int32 id

")



(provide :yidamsg/Image_ID "c5e4a7d59c68f74eabcec876a00216aa")


