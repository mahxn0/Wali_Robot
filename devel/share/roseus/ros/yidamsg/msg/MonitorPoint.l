;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::MonitorPoint)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'MonitorPoint (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::MONITORPOINT")
  (make-package "YIDAMSG::MONITORPOINT"))

(in-package "ROS")
;;//! \htmlinclude MonitorPoint.msg.html


(defclass yidamsg::MonitorPoint
  :super ros::object
  :slots (_x1 _y1 _z1 _id _log ))

(defmethod yidamsg::MonitorPoint
  (:init
   (&key
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:z1 __z1) 0.0)
    ((:id __id) 0)
    ((:log __log) "")
    )
   (send-super :init)
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _z1 (float __z1))
   (setq _id (round __id))
   (setq _log (string __log))
   self)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:z1
   (&optional __z1)
   (if __z1 (setq _z1 __z1)) _z1)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:log
   (&optional __log)
   (if __log (setq _log __log)) _log)
  (:serialization-length
   ()
   (+
    ;; float32 _x1
    4
    ;; float32 _y1
    4
    ;; float32 _z1
    4
    ;; int32 _id
    4
    ;; string _log
    4 (length _log)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z1
       (sys::poke _z1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _id
       (write-long _id s)
     ;; string _log
       (write-long (length _log) s) (princ _log s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x1
     (setq _x1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y1
     (setq _y1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z1
     (setq _z1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _log
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _log (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yidamsg::MonitorPoint :md5sum-) "255918c35eeec97106cb711f1f9fd76e")
(setf (get yidamsg::MonitorPoint :datatype-) "yidamsg/MonitorPoint")
(setf (get yidamsg::MonitorPoint :definition-)
      "float32 x1
float32 y1
float32 z1
int32 id
string log

")



(provide :yidamsg/MonitorPoint "255918c35eeec97106cb711f1f9fd76e")


