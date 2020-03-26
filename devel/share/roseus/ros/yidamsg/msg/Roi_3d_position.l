;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::Roi_3d_position)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'Roi_3d_position (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::ROI_3D_POSITION")
  (make-package "YIDAMSG::ROI_3D_POSITION"))

(in-package "ROS")
;;//! \htmlinclude Roi_3d_position.msg.html


(defclass yidamsg::Roi_3d_position
  :super ros::object
  :slots (_id _x _y _z _label _prob ))

(defmethod yidamsg::Roi_3d_position
  (:init
   (&key
    ((:id __id) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:label __label) 0.0)
    ((:prob __prob) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _label (float __label))
   (setq _prob (float __prob))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:prob
   (&optional __prob)
   (if __prob (setq _prob __prob)) _prob)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _label
    4
    ;; float32 _prob
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _label
       (sys::poke _label (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _prob
       (sys::poke _prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _label
     (setq _label (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _prob
     (setq _prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::Roi_3d_position :md5sum-) "eedf20fb20c657c5a18662dd368687fc")
(setf (get yidamsg::Roi_3d_position :datatype-) "yidamsg/Roi_3d_position")
(setf (get yidamsg::Roi_3d_position :definition-)
      "int32 id
float32 x
float32 y
float32 z
float32 label
float32 prob

")



(provide :yidamsg/Roi_3d_position "eedf20fb20c657c5a18662dd368687fc")


