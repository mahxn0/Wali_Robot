;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::Image_data)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'Image_data (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::IMAGE_DATA")
  (make-package "YIDAMSG::IMAGE_DATA"))

(in-package "ROS")
;;//! \htmlinclude Image_data.msg.html


(defclass yidamsg::Image_data
  :super ros::object
  :slots (_pImgBuf _width _height _id _length ))

(defmethod yidamsg::Image_data
  (:init
   (&key
    ((:pImgBuf __pImgBuf) (make-array 0 :initial-element 0 :element-type :char))
    ((:width __width) 0)
    ((:height __height) 0)
    ((:id __id) 0)
    ((:length __length) 0)
    )
   (send-super :init)
   (setq _pImgBuf __pImgBuf)
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _id (round __id))
   (setq _length (round __length))
   self)
  (:pImgBuf
   (&optional __pImgBuf)
   (if __pImgBuf (setq _pImgBuf __pImgBuf)) _pImgBuf)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; uint8[] _pImgBuf
    (* 1    (length _pImgBuf)) 4
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; int32 _id
    4
    ;; int32 _length
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _pImgBuf
     (write-long (length _pImgBuf) s)
     (princ _pImgBuf s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _id
       (write-long _id s)
     ;; int32 _length
       (write-long _length s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _pImgBuf
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _pImgBuf (make-array n :element-type :char))
     (replace _pImgBuf buf :start2 ptr-) (incf ptr- n))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _length
     (setq _length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::Image_data :md5sum-) "b5d32e3c02cd9daca5315752757ea66f")
(setf (get yidamsg::Image_data :datatype-) "yidamsg/Image_data")
(setf (get yidamsg::Image_data :definition-)
      "uint8[] pImgBuf
int32 width
int32 height
int32 id
int32 length


")



(provide :yidamsg/Image_data "b5d32e3c02cd9daca5315752757ea66f")


