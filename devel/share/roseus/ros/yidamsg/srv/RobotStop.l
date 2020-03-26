;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::RobotStop)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'RobotStop (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::ROBOTSTOP")
  (make-package "YIDAMSG::ROBOTSTOP"))
(unless (find-package "YIDAMSG::ROBOTSTOPREQUEST")
  (make-package "YIDAMSG::ROBOTSTOPREQUEST"))
(unless (find-package "YIDAMSG::ROBOTSTOPRESPONSE")
  (make-package "YIDAMSG::ROBOTSTOPRESPONSE"))

(in-package "ROS")





(defclass yidamsg::RobotStopRequest
  :super ros::object
  :slots (_control ))

(defmethod yidamsg::RobotStopRequest
  (:init
   (&key
    ((:control __control) nil)
    )
   (send-super :init)
   (setq _control __control)
   self)
  (:control
   (&optional __control)
   (if __control (setq _control __control)) _control)
  (:serialization-length
   ()
   (+
    ;; bool _control
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _control
       (if _control (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _control
     (setq _control (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass yidamsg::RobotStopResponse
  :super ros::object
  :slots (_status ))

(defmethod yidamsg::RobotStopResponse
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

(defclass yidamsg::RobotStop
  :super ros::object
  :slots ())

(setf (get yidamsg::RobotStop :md5sum-) "fa5b653280beb40079fadd2d89b1b31e")
(setf (get yidamsg::RobotStop :datatype-) "yidamsg/RobotStop")
(setf (get yidamsg::RobotStop :request) yidamsg::RobotStopRequest)
(setf (get yidamsg::RobotStop :response) yidamsg::RobotStopResponse)

(defmethod yidamsg::RobotStopRequest
  (:response () (instance yidamsg::RobotStopResponse :init)))

(setf (get yidamsg::RobotStopRequest :md5sum-) "fa5b653280beb40079fadd2d89b1b31e")
(setf (get yidamsg::RobotStopRequest :datatype-) "yidamsg/RobotStopRequest")
(setf (get yidamsg::RobotStopRequest :definition-)
      "bool control
---
bool status

")

(setf (get yidamsg::RobotStopResponse :md5sum-) "fa5b653280beb40079fadd2d89b1b31e")
(setf (get yidamsg::RobotStopResponse :datatype-) "yidamsg/RobotStopResponse")
(setf (get yidamsg::RobotStopResponse :definition-)
      "bool control
---
bool status

")



(provide :yidamsg/RobotStop "fa5b653280beb40079fadd2d89b1b31e")


