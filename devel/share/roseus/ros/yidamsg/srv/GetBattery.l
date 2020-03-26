;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::GetBattery)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'GetBattery (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::GETBATTERY")
  (make-package "YIDAMSG::GETBATTERY"))
(unless (find-package "YIDAMSG::GETBATTERYREQUEST")
  (make-package "YIDAMSG::GETBATTERYREQUEST"))
(unless (find-package "YIDAMSG::GETBATTERYRESPONSE")
  (make-package "YIDAMSG::GETBATTERYRESPONSE"))

(in-package "ROS")





(defclass yidamsg::GetBatteryRequest
  :super ros::object
  :slots ())

(defmethod yidamsg::GetBatteryRequest
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

(defclass yidamsg::GetBatteryResponse
  :super ros::object
  :slots (_battery ))

(defmethod yidamsg::GetBatteryResponse
  (:init
   (&key
    ((:battery __battery) 0)
    )
   (send-super :init)
   (setq _battery (round __battery))
   self)
  (:battery
   (&optional __battery)
   (if __battery (setq _battery __battery)) _battery)
  (:serialization-length
   ()
   (+
    ;; int32 _battery
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _battery
       (write-long _battery s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _battery
     (setq _battery (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass yidamsg::GetBattery
  :super ros::object
  :slots ())

(setf (get yidamsg::GetBattery :md5sum-) "295e87f732e03ed6443766199f72b602")
(setf (get yidamsg::GetBattery :datatype-) "yidamsg/GetBattery")
(setf (get yidamsg::GetBattery :request) yidamsg::GetBatteryRequest)
(setf (get yidamsg::GetBattery :response) yidamsg::GetBatteryResponse)

(defmethod yidamsg::GetBatteryRequest
  (:response () (instance yidamsg::GetBatteryResponse :init)))

(setf (get yidamsg::GetBatteryRequest :md5sum-) "295e87f732e03ed6443766199f72b602")
(setf (get yidamsg::GetBatteryRequest :datatype-) "yidamsg/GetBatteryRequest")
(setf (get yidamsg::GetBatteryRequest :definition-)
      "---
int32 battery

")

(setf (get yidamsg::GetBatteryResponse :md5sum-) "295e87f732e03ed6443766199f72b602")
(setf (get yidamsg::GetBatteryResponse :datatype-) "yidamsg/GetBatteryResponse")
(setf (get yidamsg::GetBatteryResponse :definition-)
      "---
int32 battery

")



(provide :yidamsg/GetBattery "295e87f732e03ed6443766199f72b602")


