;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::ControlDoor)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'ControlDoor (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::CONTROLDOOR")
  (make-package "YIDAMSG::CONTROLDOOR"))
(unless (find-package "YIDAMSG::CONTROLDOORREQUEST")
  (make-package "YIDAMSG::CONTROLDOORREQUEST"))
(unless (find-package "YIDAMSG::CONTROLDOORRESPONSE")
  (make-package "YIDAMSG::CONTROLDOORRESPONSE"))

(in-package "ROS")





(defclass yidamsg::ControlDoorRequest
  :super ros::object
  :slots (_flag _name ))

(defmethod yidamsg::ControlDoorRequest
  (:init
   (&key
    ((:flag __flag) 0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _flag (round __flag))
   (setq _name (string __name))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; int16 _flag
    2
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _flag
       (write-word _flag s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _flag
     (setq _flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass yidamsg::ControlDoorResponse
  :super ros::object
  :slots (_success ))

(defmethod yidamsg::ControlDoorResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass yidamsg::ControlDoor
  :super ros::object
  :slots ())

(setf (get yidamsg::ControlDoor :md5sum-) "a0a40dfc84ba309f827118ccd5e5ca07")
(setf (get yidamsg::ControlDoor :datatype-) "yidamsg/ControlDoor")
(setf (get yidamsg::ControlDoor :request) yidamsg::ControlDoorRequest)
(setf (get yidamsg::ControlDoor :response) yidamsg::ControlDoorResponse)

(defmethod yidamsg::ControlDoorRequest
  (:response () (instance yidamsg::ControlDoorResponse :init)))

(setf (get yidamsg::ControlDoorRequest :md5sum-) "a0a40dfc84ba309f827118ccd5e5ca07")
(setf (get yidamsg::ControlDoorRequest :datatype-) "yidamsg/ControlDoorRequest")
(setf (get yidamsg::ControlDoorRequest :definition-)
      "int16 flag
string name
---
bool success

")

(setf (get yidamsg::ControlDoorResponse :md5sum-) "a0a40dfc84ba309f827118ccd5e5ca07")
(setf (get yidamsg::ControlDoorResponse :datatype-) "yidamsg/ControlDoorResponse")
(setf (get yidamsg::ControlDoorResponse :definition-)
      "int16 flag
string name
---
bool success

")



(provide :yidamsg/ControlDoor "a0a40dfc84ba309f827118ccd5e5ca07")


