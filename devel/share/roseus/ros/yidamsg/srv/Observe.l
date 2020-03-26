;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::Observe)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'Observe (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::OBSERVE")
  (make-package "YIDAMSG::OBSERVE"))
(unless (find-package "YIDAMSG::OBSERVEREQUEST")
  (make-package "YIDAMSG::OBSERVEREQUEST"))
(unless (find-package "YIDAMSG::OBSERVERESPONSE")
  (make-package "YIDAMSG::OBSERVERESPONSE"))

(in-package "ROS")





(defclass yidamsg::ObserveRequest
  :super ros::object
  :slots (_x _y _z ))

(defmethod yidamsg::ObserveRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass yidamsg::ObserveResponse
  :super ros::object
  :slots (_status ))

(defmethod yidamsg::ObserveResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass yidamsg::Observe
  :super ros::object
  :slots ())

(setf (get yidamsg::Observe :md5sum-) "c4427e54c9720d51c72d87bfd85f52ac")
(setf (get yidamsg::Observe :datatype-) "yidamsg/Observe")
(setf (get yidamsg::Observe :request) yidamsg::ObserveRequest)
(setf (get yidamsg::Observe :response) yidamsg::ObserveResponse)

(defmethod yidamsg::ObserveRequest
  (:response () (instance yidamsg::ObserveResponse :init)))

(setf (get yidamsg::ObserveRequest :md5sum-) "c4427e54c9720d51c72d87bfd85f52ac")
(setf (get yidamsg::ObserveRequest :datatype-) "yidamsg/ObserveRequest")
(setf (get yidamsg::ObserveRequest :definition-)
      "float32 x
float32 y
float32 z
---
bool status

")

(setf (get yidamsg::ObserveResponse :md5sum-) "c4427e54c9720d51c72d87bfd85f52ac")
(setf (get yidamsg::ObserveResponse :datatype-) "yidamsg/ObserveResponse")
(setf (get yidamsg::ObserveResponse :definition-)
      "float32 x
float32 y
float32 z
---
bool status

")



(provide :yidamsg/Observe "c4427e54c9720d51c72d87bfd85f52ac")


