;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::TaskControl)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'TaskControl (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::TASKCONTROL")
  (make-package "YIDAMSG::TASKCONTROL"))
(unless (find-package "YIDAMSG::TASKCONTROLREQUEST")
  (make-package "YIDAMSG::TASKCONTROLREQUEST"))
(unless (find-package "YIDAMSG::TASKCONTROLRESPONSE")
  (make-package "YIDAMSG::TASKCONTROLRESPONSE"))

(in-package "ROS")





(defclass yidamsg::TaskControlRequest
  :super ros::object
  :slots (_flag ))

(defmethod yidamsg::TaskControlRequest
  (:init
   (&key
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _flag (round __flag))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; int16 _flag
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _flag
       (write-word _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _flag
     (setq _flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass yidamsg::TaskControlResponse
  :super ros::object
  :slots ())

(defmethod yidamsg::TaskControlResponse
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

(defclass yidamsg::TaskControl
  :super ros::object
  :slots ())

(setf (get yidamsg::TaskControl :md5sum-) "703f20323013a67a9ef8aed4c09680ee")
(setf (get yidamsg::TaskControl :datatype-) "yidamsg/TaskControl")
(setf (get yidamsg::TaskControl :request) yidamsg::TaskControlRequest)
(setf (get yidamsg::TaskControl :response) yidamsg::TaskControlResponse)

(defmethod yidamsg::TaskControlRequest
  (:response () (instance yidamsg::TaskControlResponse :init)))

(setf (get yidamsg::TaskControlRequest :md5sum-) "703f20323013a67a9ef8aed4c09680ee")
(setf (get yidamsg::TaskControlRequest :datatype-) "yidamsg/TaskControlRequest")
(setf (get yidamsg::TaskControlRequest :definition-)
      "int16 flag
---

")

(setf (get yidamsg::TaskControlResponse :md5sum-) "703f20323013a67a9ef8aed4c09680ee")
(setf (get yidamsg::TaskControlResponse :datatype-) "yidamsg/TaskControlResponse")
(setf (get yidamsg::TaskControlResponse :definition-)
      "int16 flag
---

")



(provide :yidamsg/TaskControl "703f20323013a67a9ef8aed4c09680ee")


