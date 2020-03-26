;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::CameraControl)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'CameraControl (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::CAMERACONTROL")
  (make-package "YIDAMSG::CAMERACONTROL"))
(unless (find-package "YIDAMSG::CAMERACONTROLREQUEST")
  (make-package "YIDAMSG::CAMERACONTROLREQUEST"))
(unless (find-package "YIDAMSG::CAMERACONTROLRESPONSE")
  (make-package "YIDAMSG::CAMERACONTROLRESPONSE"))

(in-package "ROS")





(defclass yidamsg::CameraControlRequest
  :super ros::object
  :slots (_angle1 _angle2 ))

(defmethod yidamsg::CameraControlRequest
  (:init
   (&key
    ((:angle1 __angle1) 0.0)
    ((:angle2 __angle2) 0.0)
    )
   (send-super :init)
   (setq _angle1 (float __angle1))
   (setq _angle2 (float __angle2))
   self)
  (:angle1
   (&optional __angle1)
   (if __angle1 (setq _angle1 __angle1)) _angle1)
  (:angle2
   (&optional __angle2)
   (if __angle2 (setq _angle2 __angle2)) _angle2)
  (:serialization-length
   ()
   (+
    ;; float32 _angle1
    4
    ;; float32 _angle2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _angle1
       (sys::poke _angle1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle2
       (sys::poke _angle2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _angle1
     (setq _angle1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle2
     (setq _angle2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass yidamsg::CameraControlResponse
  :super ros::object
  :slots (_status ))

(defmethod yidamsg::CameraControlResponse
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

(defclass yidamsg::CameraControl
  :super ros::object
  :slots ())

(setf (get yidamsg::CameraControl :md5sum-) "291785b183a47905a91e359c078b67b2")
(setf (get yidamsg::CameraControl :datatype-) "yidamsg/CameraControl")
(setf (get yidamsg::CameraControl :request) yidamsg::CameraControlRequest)
(setf (get yidamsg::CameraControl :response) yidamsg::CameraControlResponse)

(defmethod yidamsg::CameraControlRequest
  (:response () (instance yidamsg::CameraControlResponse :init)))

(setf (get yidamsg::CameraControlRequest :md5sum-) "291785b183a47905a91e359c078b67b2")
(setf (get yidamsg::CameraControlRequest :datatype-) "yidamsg/CameraControlRequest")
(setf (get yidamsg::CameraControlRequest :definition-)
      "float32 angle1
float32 angle2
---
bool status

")

(setf (get yidamsg::CameraControlResponse :md5sum-) "291785b183a47905a91e359c078b67b2")
(setf (get yidamsg::CameraControlResponse :datatype-) "yidamsg/CameraControlResponse")
(setf (get yidamsg::CameraControlResponse :definition-)
      "float32 angle1
float32 angle2
---
bool status

")



(provide :yidamsg/CameraControl "291785b183a47905a91e359c078b67b2")


