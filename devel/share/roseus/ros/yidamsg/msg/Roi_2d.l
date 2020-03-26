;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::Roi_2d)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'Roi_2d (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::ROI_2D")
  (make-package "YIDAMSG::ROI_2D"))

(in-package "ROS")
;;//! \htmlinclude Roi_2d.msg.html


(defclass yidamsg::Roi_2d
  :super ros::object
  :slots (_label _id _x _y _end_x _end_y _prob ))

(defmethod yidamsg::Roi_2d
  (:init
   (&key
    ((:label __label) 0)
    ((:id __id) (make-array 10 :initial-element 0 :element-type :integer))
    ((:x __x) (make-array 10 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 10 :initial-element 0.0 :element-type :float))
    ((:end_x __end_x) (make-array 10 :initial-element 0.0 :element-type :float))
    ((:end_y __end_y) (make-array 10 :initial-element 0.0 :element-type :float))
    ((:prob __prob) (make-array 10 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _label (round __label))
   (setq _id __id)
   (setq _x __x)
   (setq _y __y)
   (setq _end_x __end_x)
   (setq _end_y __end_y)
   (setq _prob __prob)
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
  (:end_x
   (&optional __end_x)
   (if __end_x (setq _end_x __end_x)) _end_x)
  (:end_y
   (&optional __end_y)
   (if __end_y (setq _end_y __end_y)) _end_y)
  (:prob
   (&optional __prob)
   (if __prob (setq _prob __prob)) _prob)
  (:serialization-length
   ()
   (+
    ;; int32 _label
    4
    ;; int32[10] _id
    (* 4    10)
    ;; float32[10] _x
    (* 4    10)
    ;; float32[10] _y
    (* 4    10)
    ;; float32[10] _end_x
    (* 4    10)
    ;; float32[10] _end_y
    (* 4    10)
    ;; float32[10] _prob
    (* 4    10)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _label
       (write-long _label s)
     ;; int32[10] _id
     (dotimes (i 10)
       (write-long (elt _id i) s)
       )
     ;; float32[10] _x
     (dotimes (i 10)
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[10] _y
     (dotimes (i 10)
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[10] _end_x
     (dotimes (i 10)
       (sys::poke (elt _end_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[10] _end_y
     (dotimes (i 10)
       (sys::poke (elt _end_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[10] _prob
     (dotimes (i 10)
       (sys::poke (elt _prob i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _label
     (setq _label (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[10] _id
   (dotimes (i (length _id))
     (setf (elt _id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; float32[10] _x
   (dotimes (i (length _x))
     (setf (elt _x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[10] _y
   (dotimes (i (length _y))
     (setf (elt _y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[10] _end_x
   (dotimes (i (length _end_x))
     (setf (elt _end_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[10] _end_y
   (dotimes (i (length _end_y))
     (setf (elt _end_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[10] _prob
   (dotimes (i (length _prob))
     (setf (elt _prob i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get yidamsg::Roi_2d :md5sum-) "7a085707da4760a19e76a88dea363e6c")
(setf (get yidamsg::Roi_2d :datatype-) "yidamsg/Roi_2d")
(setf (get yidamsg::Roi_2d :definition-)
      "int32 label
int32[10] id
float32[10] x
float32[10] y
float32[10] end_x
float32[10] end_y
float32[10] prob

")



(provide :yidamsg/Roi_2d "7a085707da4760a19e76a88dea363e6c")


