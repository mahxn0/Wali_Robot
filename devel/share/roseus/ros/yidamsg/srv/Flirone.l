;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::Flirone)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'Flirone (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::FLIRONE")
  (make-package "YIDAMSG::FLIRONE"))
(unless (find-package "YIDAMSG::FLIRONEREQUEST")
  (make-package "YIDAMSG::FLIRONEREQUEST"))
(unless (find-package "YIDAMSG::FLIRONERESPONSE")
  (make-package "YIDAMSG::FLIRONERESPONSE"))

(in-package "ROS")





(defclass yidamsg::FlironeRequest
  :super ros::object
  :slots (_x _y ))

(defmethod yidamsg::FlironeRequest
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass yidamsg::FlironeResponse
  :super ros::object
  :slots (_tem ))

(defmethod yidamsg::FlironeResponse
  (:init
   (&key
    ((:tem __tem) 0.0)
    )
   (send-super :init)
   (setq _tem (float __tem))
   self)
  (:tem
   (&optional __tem)
   (if __tem (setq _tem __tem)) _tem)
  (:serialization-length
   ()
   (+
    ;; float32 _tem
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _tem
       (sys::poke _tem (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _tem
     (setq _tem (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass yidamsg::Flirone
  :super ros::object
  :slots ())

(setf (get yidamsg::Flirone :md5sum-) "19d1e1bf3be80b2a10b17e554e52d372")
(setf (get yidamsg::Flirone :datatype-) "yidamsg/Flirone")
(setf (get yidamsg::Flirone :request) yidamsg::FlironeRequest)
(setf (get yidamsg::Flirone :response) yidamsg::FlironeResponse)

(defmethod yidamsg::FlironeRequest
  (:response () (instance yidamsg::FlironeResponse :init)))

(setf (get yidamsg::FlironeRequest :md5sum-) "19d1e1bf3be80b2a10b17e554e52d372")
(setf (get yidamsg::FlironeRequest :datatype-) "yidamsg/FlironeRequest")
(setf (get yidamsg::FlironeRequest :definition-)
      "int32 x
int32 y
---
float32 tem

")

(setf (get yidamsg::FlironeResponse :md5sum-) "19d1e1bf3be80b2a10b17e554e52d372")
(setf (get yidamsg::FlironeResponse :datatype-) "yidamsg/FlironeResponse")
(setf (get yidamsg::FlironeResponse :definition-)
      "int32 x
int32 y
---
float32 tem

")



(provide :yidamsg/Flirone "19d1e1bf3be80b2a10b17e554e52d372")


