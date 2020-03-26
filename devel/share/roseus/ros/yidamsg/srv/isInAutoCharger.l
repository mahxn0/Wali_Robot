;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::isInAutoCharger)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'isInAutoCharger (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::ISINAUTOCHARGER")
  (make-package "YIDAMSG::ISINAUTOCHARGER"))
(unless (find-package "YIDAMSG::ISINAUTOCHARGERREQUEST")
  (make-package "YIDAMSG::ISINAUTOCHARGERREQUEST"))
(unless (find-package "YIDAMSG::ISINAUTOCHARGERRESPONSE")
  (make-package "YIDAMSG::ISINAUTOCHARGERRESPONSE"))

(in-package "ROS")





(defclass yidamsg::isInAutoChargerRequest
  :super ros::object
  :slots ())

(defmethod yidamsg::isInAutoChargerRequest
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

(defclass yidamsg::isInAutoChargerResponse
  :super ros::object
  :slots (_isCharging ))

(defmethod yidamsg::isInAutoChargerResponse
  (:init
   (&key
    ((:isCharging __isCharging) 0)
    )
   (send-super :init)
   (setq _isCharging (round __isCharging))
   self)
  (:isCharging
   (&optional __isCharging)
   (if __isCharging (setq _isCharging __isCharging)) _isCharging)
  (:serialization-length
   ()
   (+
    ;; int32 _isCharging
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _isCharging
       (write-long _isCharging s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _isCharging
     (setq _isCharging (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass yidamsg::isInAutoCharger
  :super ros::object
  :slots ())

(setf (get yidamsg::isInAutoCharger :md5sum-) "aec8fd091cfc40eae9abfae81e035982")
(setf (get yidamsg::isInAutoCharger :datatype-) "yidamsg/isInAutoCharger")
(setf (get yidamsg::isInAutoCharger :request) yidamsg::isInAutoChargerRequest)
(setf (get yidamsg::isInAutoCharger :response) yidamsg::isInAutoChargerResponse)

(defmethod yidamsg::isInAutoChargerRequest
  (:response () (instance yidamsg::isInAutoChargerResponse :init)))

(setf (get yidamsg::isInAutoChargerRequest :md5sum-) "aec8fd091cfc40eae9abfae81e035982")
(setf (get yidamsg::isInAutoChargerRequest :datatype-) "yidamsg/isInAutoChargerRequest")
(setf (get yidamsg::isInAutoChargerRequest :definition-)
      "---
int32 isCharging

")

(setf (get yidamsg::isInAutoChargerResponse :md5sum-) "aec8fd091cfc40eae9abfae81e035982")
(setf (get yidamsg::isInAutoChargerResponse :datatype-) "yidamsg/isInAutoChargerResponse")
(setf (get yidamsg::isInAutoChargerResponse :definition-)
      "---
int32 isCharging

")



(provide :yidamsg/isInAutoCharger "aec8fd091cfc40eae9abfae81e035982")


