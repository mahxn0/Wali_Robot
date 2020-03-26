;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::image)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'image (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::IMAGE")
  (make-package "YIDAMSG::IMAGE"))

(in-package "ROS")
;;//! \htmlinclude image.msg.html


(defclass yidamsg::image
  :super ros::object
  :slots (_pImgBuf1 _pImgBuf2 _width _height _id1 _id2 _length1 _length2 ))

(defmethod yidamsg::image
  (:init
   (&key
    ((:pImgBuf1 __pImgBuf1) (make-array 200000 :initial-element 0 :element-type :char))
    ((:pImgBuf2 __pImgBuf2) (make-array 200000 :initial-element 0 :element-type :char))
    ((:width __width) 0)
    ((:height __height) 0)
    ((:id1 __id1) 0)
    ((:id2 __id2) 0)
    ((:length1 __length1) 0)
    ((:length2 __length2) 0)
    )
   (send-super :init)
   (setq _pImgBuf1 __pImgBuf1)
   (setq _pImgBuf2 __pImgBuf2)
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _id1 (round __id1))
   (setq _id2 (round __id2))
   (setq _length1 (round __length1))
   (setq _length2 (round __length2))
   self)
  (:pImgBuf1
   (&optional __pImgBuf1)
   (if __pImgBuf1 (setq _pImgBuf1 __pImgBuf1)) _pImgBuf1)
  (:pImgBuf2
   (&optional __pImgBuf2)
   (if __pImgBuf2 (setq _pImgBuf2 __pImgBuf2)) _pImgBuf2)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:id1
   (&optional __id1)
   (if __id1 (setq _id1 __id1)) _id1)
  (:id2
   (&optional __id2)
   (if __id2 (setq _id2 __id2)) _id2)
  (:length1
   (&optional __length1)
   (if __length1 (setq _length1 __length1)) _length1)
  (:length2
   (&optional __length2)
   (if __length2 (setq _length2 __length2)) _length2)
  (:serialization-length
   ()
   (+
    ;; uint8[200000] _pImgBuf1
    (* 1    200000)
    ;; uint8[200000] _pImgBuf2
    (* 1    200000)
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; int32 _id1
    4
    ;; int32 _id2
    4
    ;; int32 _length1
    4
    ;; int32 _length2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[200000] _pImgBuf1
     (princ _pImgBuf1 s)
     ;; uint8[200000] _pImgBuf2
     (princ _pImgBuf2 s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _id1
       (write-long _id1 s)
     ;; int32 _id2
       (write-long _id2 s)
     ;; int32 _length1
       (write-long _length1 s)
     ;; int32 _length2
       (write-long _length2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[200000] _pImgBuf1
   (setq _pImgBuf1 (make-array 200000 :element-type :char))
   (replace _pImgBuf1 buf :start2 ptr-) (incf ptr- 200000)
   ;; uint8[200000] _pImgBuf2
   (setq _pImgBuf2 (make-array 200000 :element-type :char))
   (replace _pImgBuf2 buf :start2 ptr-) (incf ptr- 200000)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _id1
     (setq _id1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _id2
     (setq _id2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _length1
     (setq _length1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _length2
     (setq _length2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::image :md5sum-) "d49f80c06464cb3dde6b4fc6f30be9fc")
(setf (get yidamsg::image :datatype-) "yidamsg/image")
(setf (get yidamsg::image :definition-)
      "uint8[200000] pImgBuf1
uint8[200000] pImgBuf2
int32 width
int32 height
int32 id1
int32 id2
int32 length1
int32 length2


")



(provide :yidamsg/image "d49f80c06464cb3dde6b4fc6f30be9fc")


