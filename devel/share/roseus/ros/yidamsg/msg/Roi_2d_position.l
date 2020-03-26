;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::Roi_2d_position)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'Roi_2d_position (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::ROI_2D_POSITION")
  (make-package "YIDAMSG::ROI_2D_POSITION"))

(in-package "ROS")
;;//! \htmlinclude Roi_2d_position.msg.html


(defclass yidamsg::Roi_2d_position
  :super ros::object
  :slots (_label _id _x _y _prob ))

(defmethod yidamsg::Roi_2d_position
  (:init
   (&key
    ((:label __label) 0)
    ((:id __id) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:prob __prob) 0.0)
    )
   (send-super :init)
   (setq _label (round __label))
   (setq _id (round __id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _prob (float __prob))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:prob
   (&optional __prob)
   (if __prob (setq _prob __prob)) _prob)
  (:serialization-length
   ()
   (+
    ;; int32 _label
    4
    ;; int32 _id
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _prob
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _label
       (write-long _label s)
     ;; int32 _id
       (write-long _id s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _prob
       (sys::poke _prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _label
     (setq _label (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _prob
     (setq _prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::Roi_2d_position :md5sum-) "fbd49afb3c3e00f5df28bdefa390e1f0")
(setf (get yidamsg::Roi_2d_position :datatype-) "yidamsg/Roi_2d_position")
(setf (get yidamsg::Roi_2d_position :definition-)
      "int32 label
int32 id
float32 x
float32 y
float32 prob


")



(provide :yidamsg/Roi_2d_position "fbd49afb3c3e00f5df28bdefa390e1f0")


