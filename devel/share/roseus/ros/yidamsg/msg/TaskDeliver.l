;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::TaskDeliver)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'TaskDeliver (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::TASKDELIVER")
  (make-package "YIDAMSG::TASKDELIVER"))

(in-package "ROS")
;;//! \htmlinclude TaskDeliver.msg.html


(defclass yidamsg::TaskDeliver
  :super ros::object
  :slots (_task_history_id _robot_id ))

(defmethod yidamsg::TaskDeliver
  (:init
   (&key
    ((:task_history_id __task_history_id) 0)
    ((:robot_id __robot_id) 0)
    )
   (send-super :init)
   (setq _task_history_id (round __task_history_id))
   (setq _robot_id (round __robot_id))
   self)
  (:task_history_id
   (&optional __task_history_id)
   (if __task_history_id (setq _task_history_id __task_history_id)) _task_history_id)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:serialization-length
   ()
   (+
    ;; int32 _task_history_id
    4
    ;; int32 _robot_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _task_history_id
       (write-long _task_history_id s)
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _task_history_id
     (setq _task_history_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::TaskDeliver :md5sum-) "92ff1021f832a89e5a8dee53b996e8de")
(setf (get yidamsg::TaskDeliver :datatype-) "yidamsg/TaskDeliver")
(setf (get yidamsg::TaskDeliver :definition-)
      "int32 task_history_id
int32 robot_id

")



(provide :yidamsg/TaskDeliver "92ff1021f832a89e5a8dee53b996e8de")


