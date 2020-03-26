;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::taskPlanStatus)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'taskPlanStatus (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::TASKPLANSTATUS")
  (make-package "YIDAMSG::TASKPLANSTATUS"))

(in-package "ROS")
;;//! \htmlinclude taskPlanStatus.msg.html


(defclass yidamsg::taskPlanStatus
  :super ros::object
  :slots (_taskId _robotId _status ))

(defmethod yidamsg::taskPlanStatus
  (:init
   (&key
    ((:taskId __taskId) 0)
    ((:robotId __robotId) "")
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _taskId (round __taskId))
   (setq _robotId (string __robotId))
   (setq _status (round __status))
   self)
  (:taskId
   (&optional __taskId)
   (if __taskId (setq _taskId __taskId)) _taskId)
  (:robotId
   (&optional __robotId)
   (if __robotId (setq _robotId __robotId)) _robotId)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _taskId
    4
    ;; string _robotId
    4 (length _robotId)
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _taskId
       (write-long _taskId s)
     ;; string _robotId
       (write-long (length _robotId) s) (princ _robotId s)
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _taskId
     (setq _taskId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _robotId
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robotId (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::taskPlanStatus :md5sum-) "592a22bb6712716461dc6dd5022389ab")
(setf (get yidamsg::taskPlanStatus :datatype-) "yidamsg/taskPlanStatus")
(setf (get yidamsg::taskPlanStatus :definition-)
      "int32 taskId
string robotId
int32 status

")



(provide :yidamsg/taskPlanStatus "592a22bb6712716461dc6dd5022389ab")


