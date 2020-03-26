;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::OutHouse)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'OutHouse (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::OUTHOUSE")
  (make-package "YIDAMSG::OUTHOUSE"))
(unless (find-package "YIDAMSG::OUTHOUSEREQUEST")
  (make-package "YIDAMSG::OUTHOUSEREQUEST"))
(unless (find-package "YIDAMSG::OUTHOUSERESPONSE")
  (make-package "YIDAMSG::OUTHOUSERESPONSE"))

(in-package "ROS")





(defclass yidamsg::OutHouseRequest
  :super ros::object
  :slots ())

(defmethod yidamsg::OutHouseRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass yidamsg::OutHouseResponse
  :super ros::object
  :slots (_isdone ))

(defmethod yidamsg::OutHouseResponse
  (:init
   (&key
    ((:isdone __isdone) nil)
    )
   (send-super :init)
   (setq _isdone __isdone)
   self)
  (:isdone
   (&optional __isdone)
   (if __isdone (setq _isdone __isdone)) _isdone)
  (:serialization-length
   ()
   (+
    ;; bool _isdone
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isdone
       (if _isdone (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isdone
     (setq _isdone (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass yidamsg::OutHouse
  :super ros::object
  :slots ())

(setf (get yidamsg::OutHouse :md5sum-) "155f126039916cf5358a013a0efc2beb")
(setf (get yidamsg::OutHouse :datatype-) "yidamsg/OutHouse")
(setf (get yidamsg::OutHouse :request) yidamsg::OutHouseRequest)
(setf (get yidamsg::OutHouse :response) yidamsg::OutHouseResponse)

(defmethod yidamsg::OutHouseRequest
  (:response () (instance yidamsg::OutHouseResponse :init)))

(setf (get yidamsg::OutHouseRequest :md5sum-) "155f126039916cf5358a013a0efc2beb")
(setf (get yidamsg::OutHouseRequest :datatype-) "yidamsg/OutHouseRequest")
(setf (get yidamsg::OutHouseRequest :definition-)
      "---
bool isdone


")

(setf (get yidamsg::OutHouseResponse :md5sum-) "155f126039916cf5358a013a0efc2beb")
(setf (get yidamsg::OutHouseResponse :datatype-) "yidamsg/OutHouseResponse")
(setf (get yidamsg::OutHouseResponse :definition-)
      "---
bool isdone


")



(provide :yidamsg/OutHouse "155f126039916cf5358a013a0efc2beb")


