;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::Image_road)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'Image_road (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::IMAGE_ROAD")
  (make-package "YIDAMSG::IMAGE_ROAD"))

(in-package "ROS")
;;//! \htmlinclude Image_road.msg.html


(defclass yidamsg::Image_road
  :super ros::object
  :slots (_imagedata ))

(defmethod yidamsg::Image_road
  (:init
   (&key
    ((:imagedata __imagedata) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _imagedata __imagedata)
   self)
  (:imagedata
   (&optional __imagedata)
   (if __imagedata (setq _imagedata __imagedata)) _imagedata)
  (:serialization-length
   ()
   (+
    ;; uint8[] _imagedata
    (* 1    (length _imagedata)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _imagedata
     (write-long (length _imagedata) s)
     (princ _imagedata s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _imagedata
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _imagedata (make-array n :element-type :char))
     (replace _imagedata buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get yidamsg::Image_road :md5sum-) "1842ac737d8c10dbcefa8cf872dac1f4")
(setf (get yidamsg::Image_road :datatype-) "yidamsg/Image_road")
(setf (get yidamsg::Image_road :definition-)
      "uint8[] imagedata


")



(provide :yidamsg/Image_road "1842ac737d8c10dbcefa8cf872dac1f4")


