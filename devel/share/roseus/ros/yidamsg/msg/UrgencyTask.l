;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::UrgencyTask)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'UrgencyTask (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::URGENCYTASK")
  (make-package "YIDAMSG::URGENCYTASK"))

(in-package "ROS")
;;//! \htmlinclude UrgencyTask.msg.html


(defclass yidamsg::UrgencyTask
  :super ros::object
  :slots (_task_id _robot_id _task_type _task_level ))

(defmethod yidamsg::UrgencyTask
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:robot_id __robot_id) 0)
    ((:task_type __task_type) 0)
    ((:task_level __task_level) 0)
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _robot_id (round __robot_id))
   (setq _task_type (round __task_type))
   (setq _task_level (round __task_level))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:task_type
   (&optional __task_type)
   (if __task_type (setq _task_type __task_type)) _task_type)
  (:task_level
   (&optional __task_level)
   (if __task_level (setq _task_level __task_level)) _task_level)
  (:serialization-length
   ()
   (+
    ;; int32 _task_id
    4
    ;; int32 _robot_id
    4
    ;; int32 _task_type
    4
    ;; int32 _task_level
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _task_id
       (write-long _task_id s)
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;; int32 _task_type
       (write-long _task_type s)
     ;; int32 _task_level
       (write-long _task_level s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _task_type
     (setq _task_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _task_level
     (setq _task_level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::UrgencyTask :md5sum-) "ec737a80ae182d535d86035a7ece0817")
(setf (get yidamsg::UrgencyTask :datatype-) "yidamsg/UrgencyTask")
(setf (get yidamsg::UrgencyTask :definition-)
      "int32 task_id
int32 robot_id
int32 task_type
int32 task_level

")



(provide :yidamsg/UrgencyTask "ec737a80ae182d535d86035a7ece0817")


