;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::task_list)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'task_list (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::TASK_LIST")
  (make-package "YIDAMSG::TASK_LIST"))

(in-package "ROS")
;;//! \htmlinclude task_list.msg.html


(defclass yidamsg::task_list
  :super ros::object
  :slots (_plan ))

(defmethod yidamsg::task_list
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

(setf (get yidamsg::task_list :md5sum-) "cc50643e78ec83e6cd11adcd6225ad09")
(setf (get yidamsg::task_list :datatype-) "yidamsg/task_list")
(setf (get yidamsg::task_list :definition-)
      "string plan

")



(provide :yidamsg/task_list "cc50643e78ec83e6cd11adcd6225ad09")


