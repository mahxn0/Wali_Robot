;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::ControlMode)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'ControlMode (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::CONTROLMODE")
  (make-package "YIDAMSG::CONTROLMODE"))

(in-package "ROS")
;;//! \htmlinclude ControlMode.msg.html


(defclass yidamsg::ControlMode
  :super ros::object
  :slots (_robot_id _mode ))

(defmethod yidamsg::ControlMode
  (:init
   (&key
    ((:robot_id __robot_id) 0)
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _robot_id (round __robot_id))
   (setq _mode (round __mode))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int32 _robot_id
    4
    ;; int32 _mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;; int32 _mode
       (write-long _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::ControlMode :md5sum-) "c61e1d7d4546c212fbed829203d7559d")
(setf (get yidamsg::ControlMode :datatype-) "yidamsg/ControlMode")
(setf (get yidamsg::ControlMode :definition-)
      "int32 robot_id
int32 mode

")



(provide :yidamsg/ControlMode "c61e1d7d4546c212fbed829203d7559d")


