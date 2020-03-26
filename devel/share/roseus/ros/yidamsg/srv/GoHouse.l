;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::GoHouse)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'GoHouse (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::GOHOUSE")
  (make-package "YIDAMSG::GOHOUSE"))
(unless (find-package "YIDAMSG::GOHOUSEREQUEST")
  (make-package "YIDAMSG::GOHOUSEREQUEST"))
(unless (find-package "YIDAMSG::GOHOUSERESPONSE")
  (make-package "YIDAMSG::GOHOUSERESPONSE"))

(in-package "ROS")





(defclass yidamsg::GoHouseRequest
  :super ros::object
  :slots ())

(defmethod yidamsg::GoHouseRequest
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

(defclass yidamsg::GoHouseResponse
  :super ros::object
  :slots (_isdone ))

(defmethod yidamsg::GoHouseResponse
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

(defclass yidamsg::GoHouse
  :super ros::object
  :slots ())

(setf (get yidamsg::GoHouse :md5sum-) "155f126039916cf5358a013a0efc2beb")
(setf (get yidamsg::GoHouse :datatype-) "yidamsg/GoHouse")
(setf (get yidamsg::GoHouse :request) yidamsg::GoHouseRequest)
(setf (get yidamsg::GoHouse :response) yidamsg::GoHouseResponse)

(defmethod yidamsg::GoHouseRequest
  (:response () (instance yidamsg::GoHouseResponse :init)))

(setf (get yidamsg::GoHouseRequest :md5sum-) "155f126039916cf5358a013a0efc2beb")
(setf (get yidamsg::GoHouseRequest :datatype-) "yidamsg/GoHouseRequest")
(setf (get yidamsg::GoHouseRequest :definition-)
      "---
bool isdone

")

(setf (get yidamsg::GoHouseResponse :md5sum-) "155f126039916cf5358a013a0efc2beb")
(setf (get yidamsg::GoHouseResponse :datatype-) "yidamsg/GoHouseResponse")
(setf (get yidamsg::GoHouseResponse :definition-)
      "---
bool isdone

")



(provide :yidamsg/GoHouse "155f126039916cf5358a013a0efc2beb")


