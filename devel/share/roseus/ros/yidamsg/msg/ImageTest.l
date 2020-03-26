;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::ImageTest)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'ImageTest (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::IMAGETEST")
  (make-package "YIDAMSG::IMAGETEST"))

(in-package "ROS")
;;//! \htmlinclude ImageTest.msg.html


(defclass yidamsg::ImageTest
  :super ros::object
  :slots (_image _len _x ))

(defmethod yidamsg::ImageTest
  (:init
   (&key
    ((:image __image) (make-array 0 :initial-element 0 :element-type :char))
    ((:len __len) 0)
    ((:x __x) 0.0)
    )
   (send-super :init)
   (setq _image __image)
   (setq _len (round __len))
   (setq _x (float __x))
   self)
  (:image
   (&optional __image)
   (if __image (setq _image __image)) _image)
  (:len
   (&optional __len)
   (if __len (setq _len __len)) _len)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:serialization-length
   ()
   (+
    ;; uint8[] _image
    (* 1    (length _image)) 4
    ;; int32 _len
    4
    ;; float32 _x
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _image
     (write-long (length _image) s)
     (princ _image s)
     ;; int32 _len
       (write-long _len s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _image
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _image (make-array n :element-type :char))
     (replace _image buf :start2 ptr-) (incf ptr- n))
   ;; int32 _len
     (setq _len (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::ImageTest :md5sum-) "e6ec7279285993bebecee3c8ef8bc36c")
(setf (get yidamsg::ImageTest :datatype-) "yidamsg/ImageTest")
(setf (get yidamsg::ImageTest :definition-)
      "uint8[] image
int32 len
float32 x

")



(provide :yidamsg/ImageTest "e6ec7279285993bebecee3c8ef8bc36c")


