;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::road_dis)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'road_dis (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::ROAD_DIS")
  (make-package "YIDAMSG::ROAD_DIS"))

(in-package "ROS")
;;//! \htmlinclude road_dis.msg.html


(defclass yidamsg::road_dis
  :super ros::object
  :slots (_left _right ))

(defmethod yidamsg::road_dis
  (:init
   (&key
    ((:left __left) 0)
    ((:right __right) 0)
    )
   (send-super :init)
   (setq _left (round __left))
   (setq _right (round __right))
   self)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:serialization-length
   ()
   (+
    ;; int32 _left
    4
    ;; int32 _right
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _left
       (write-long _left s)
     ;; int32 _right
       (write-long _right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _left
     (setq _left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right
     (setq _right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::road_dis :md5sum-) "febc810ab9cc360ca3f47fcee4f2ba71")
(setf (get yidamsg::road_dis :datatype-) "yidamsg/road_dis")
(setf (get yidamsg::road_dis :definition-)
      "int32 left
int32 right

")



(provide :yidamsg/road_dis "febc810ab9cc360ca3f47fcee4f2ba71")


