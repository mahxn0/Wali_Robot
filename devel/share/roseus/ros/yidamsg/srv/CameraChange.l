;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::CameraChange)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'CameraChange (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::CAMERACHANGE")
  (make-package "YIDAMSG::CAMERACHANGE"))
(unless (find-package "YIDAMSG::CAMERACHANGEREQUEST")
  (make-package "YIDAMSG::CAMERACHANGEREQUEST"))
(unless (find-package "YIDAMSG::CAMERACHANGERESPONSE")
  (make-package "YIDAMSG::CAMERACHANGERESPONSE"))

(in-package "ROS")





(defclass yidamsg::CameraChangeRequest
  :super ros::object
  :slots (_flag ))

(defmethod yidamsg::CameraChangeRequest
  (:init
   (&key
    ((:flag __flag) nil)
    )
   (send-super :init)
   (setq _flag __flag)
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; bool _flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _flag
       (if _flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _flag
     (setq _flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass yidamsg::CameraChangeResponse
  :super ros::object
  :slots (_status ))

(defmethod yidamsg::CameraChangeResponse
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

(defclass yidamsg::CameraChange
  :super ros::object
  :slots ())

(setf (get yidamsg::CameraChange :md5sum-) "1ec93149d55d1527cff5331cb7a5fe0a")
(setf (get yidamsg::CameraChange :datatype-) "yidamsg/CameraChange")
(setf (get yidamsg::CameraChange :request) yidamsg::CameraChangeRequest)
(setf (get yidamsg::CameraChange :response) yidamsg::CameraChangeResponse)

(defmethod yidamsg::CameraChangeRequest
  (:response () (instance yidamsg::CameraChangeResponse :init)))

(setf (get yidamsg::CameraChangeRequest :md5sum-) "1ec93149d55d1527cff5331cb7a5fe0a")
(setf (get yidamsg::CameraChangeRequest :datatype-) "yidamsg/CameraChangeRequest")
(setf (get yidamsg::CameraChangeRequest :definition-)
      "bool flag
---
bool status

")

(setf (get yidamsg::CameraChangeResponse :md5sum-) "1ec93149d55d1527cff5331cb7a5fe0a")
(setf (get yidamsg::CameraChangeResponse :datatype-) "yidamsg/CameraChangeResponse")
(setf (get yidamsg::CameraChangeResponse :definition-)
      "bool flag
---
bool status

")



(provide :yidamsg/CameraChange "1ec93149d55d1527cff5331cb7a5fe0a")


