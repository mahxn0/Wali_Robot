;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::TaskList)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'TaskList (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::TASKLIST")
  (make-package "YIDAMSG::TASKLIST"))
(unless (find-package "YIDAMSG::TASKLISTREQUEST")
  (make-package "YIDAMSG::TASKLISTREQUEST"))
(unless (find-package "YIDAMSG::TASKLISTRESPONSE")
  (make-package "YIDAMSG::TASKLISTRESPONSE"))

(in-package "ROS")





(defclass yidamsg::TaskListRequest
  :super ros::object
  :slots (_plan ))

(defmethod yidamsg::TaskListRequest
  (:init
   (&key
    ((:plan __plan) "")
    )
   (send-super :init)
   (setq _plan (string __plan))
   self)
  (:plan
   (&optional __plan)
   (if __plan (setq _plan __plan)) _plan)
  (:serialization-length
   ()
   (+
    ;; string _plan
    4 (length _plan)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _plan
       (write-long (length _plan) s) (princ _plan s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _plan
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _plan (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass yidamsg::TaskListResponse
  :super ros::object
  :slots (_status ))

(defmethod yidamsg::TaskListResponse
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

(defclass yidamsg::TaskList
  :super ros::object
  :slots ())

(setf (get yidamsg::TaskList :md5sum-) "e36025b6db500abb1fa437aa748984cc")
(setf (get yidamsg::TaskList :datatype-) "yidamsg/TaskList")
(setf (get yidamsg::TaskList :request) yidamsg::TaskListRequest)
(setf (get yidamsg::TaskList :response) yidamsg::TaskListResponse)

(defmethod yidamsg::TaskListRequest
  (:response () (instance yidamsg::TaskListResponse :init)))

(setf (get yidamsg::TaskListRequest :md5sum-) "e36025b6db500abb1fa437aa748984cc")
(setf (get yidamsg::TaskListRequest :datatype-) "yidamsg/TaskListRequest")
(setf (get yidamsg::TaskListRequest :definition-)
      "string plan
---
bool status

")

(setf (get yidamsg::TaskListResponse :md5sum-) "e36025b6db500abb1fa437aa748984cc")
(setf (get yidamsg::TaskListResponse :datatype-) "yidamsg/TaskListResponse")
(setf (get yidamsg::TaskListResponse :definition-)
      "string plan
---
bool status

")



(provide :yidamsg/TaskList "e36025b6db500abb1fa437aa748984cc")


