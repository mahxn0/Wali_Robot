;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::LiveImage)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'LiveImage (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::LIVEIMAGE")
  (make-package "YIDAMSG::LIVEIMAGE"))

(in-package "ROS")
;;//! \htmlinclude LiveImage.msg.html


(defclass yidamsg::LiveImage
  :super ros::object
  :slots (_camid _picid _x _y _z _image _len ))

(defmethod yidamsg::LiveImage
  (:init
   (&key
    ((:camid __camid) 0)
    ((:picid __picid) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:image __image) (make-array 0 :initial-element 0 :element-type :char))
    ((:len __len) 0)
    )
   (send-super :init)
   (setq _camid (round __camid))
   (setq _picid (round __picid))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _image __image)
   (setq _len (round __len))
   self)
  (:camid
   (&optional __camid)
   (if __camid (setq _camid __camid)) _camid)
  (:picid
   (&optional __picid)
   (if __picid (setq _picid __picid)) _picid)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:image
   (&optional __image)
   (if __image (setq _image __image)) _image)
  (:len
   (&optional __len)
   (if __len (setq _len __len)) _len)
  (:serialization-length
   ()
   (+
    ;; int32 _camid
    4
    ;; int32 _picid
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; uint8[] _image
    (* 1    (length _image)) 4
    ;; int32 _len
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _camid
       (write-long _camid s)
     ;; int32 _picid
       (write-long _picid s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8[] _image
     (write-long (length _image) s)
     (princ _image s)
     ;; int32 _len
       (write-long _len s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _camid
     (setq _camid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _picid
     (setq _picid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8[] _image
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _image (make-array n :element-type :char))
     (replace _image buf :start2 ptr-) (incf ptr- n))
   ;; int32 _len
     (setq _len (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::LiveImage :md5sum-) "e0feb94226f96ec22fa7dd4d4207a32a")
(setf (get yidamsg::LiveImage :datatype-) "yidamsg/LiveImage")
(setf (get yidamsg::LiveImage :definition-)
      "int32 camid
int32 picid
float32 x
float32 y
float32 z
uint8[] image
int32 len

")



(provide :yidamsg/LiveImage "e0feb94226f96ec22fa7dd4d4207a32a")


