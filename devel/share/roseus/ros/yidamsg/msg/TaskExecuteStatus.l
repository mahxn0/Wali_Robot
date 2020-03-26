;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::TaskExecuteStatus)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'TaskExecuteStatus (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::TASKEXECUTESTATUS")
  (make-package "YIDAMSG::TASKEXECUTESTATUS"))

(in-package "ROS")
;;//! \htmlinclude TaskExecuteStatus.msg.html


(defclass yidamsg::TaskExecuteStatus
  :super ros::object
  :slots (_task_history_id _task_status ))

(defmethod yidamsg::TaskExecuteStatus
  (:init
   (&key
    ((:task_history_id __task_history_id) 0)
    ((:task_status __task_status) 0)
    )
   (send-super :init)
   (setq _task_history_id (round __task_history_id))
   (setq _task_status (round __task_status))
   self)
  (:task_history_id
   (&optional __task_history_id)
   (if __task_history_id (setq _task_history_id __task_history_id)) _task_history_id)
  (:task_status
   (&optional __task_status)
   (if __task_status (setq _task_status __task_status)) _task_status)
  (:serialization-length
   ()
   (+
    ;; int32 _task_history_id
    4
    ;; uint8 _task_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _task_history_id
       (write-long _task_history_id s)
     ;; uint8 _task_status
       (write-byte _task_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _task_history_id
     (setq _task_history_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _task_status
     (setq _task_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get yidamsg::TaskExecuteStatus :md5sum-) "2293a62523ff50d550bd7b5b6f6302d3")
(setf (get yidamsg::TaskExecuteStatus :datatype-) "yidamsg/TaskExecuteStatus")
(setf (get yidamsg::TaskExecuteStatus :definition-)
      "int32 task_history_id
uint8 task_status

")



(provide :yidamsg/TaskExecuteStatus "2293a62523ff50d550bd7b5b6f6302d3")


