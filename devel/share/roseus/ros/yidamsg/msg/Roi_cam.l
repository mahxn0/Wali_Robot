;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::Roi_cam)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'Roi_cam (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::ROI_CAM")
  (make-package "YIDAMSG::ROI_CAM"))

(in-package "ROS")
;;//! \htmlinclude Roi_cam.msg.html


(defclass yidamsg::Roi_cam
  :super ros::object
  :slots (_begin_x _begin_y _end_x _end_y _task_flag ))

(defmethod yidamsg::Roi_cam
  (:init
   (&key
    ((:begin_x __begin_x) (make-array 0 :initial-element 0 :element-type :integer))
    ((:begin_y __begin_y) (make-array 0 :initial-element 0 :element-type :integer))
    ((:end_x __end_x) (make-array 0 :initial-element 0 :element-type :integer))
    ((:end_y __end_y) (make-array 0 :initial-element 0 :element-type :integer))
    ((:task_flag __task_flag) "")
    )
   (send-super :init)
   (setq _begin_x __begin_x)
   (setq _begin_y __begin_y)
   (setq _end_x __end_x)
   (setq _end_y __end_y)
   (setq _task_flag (string __task_flag))
   self)
  (:begin_x
   (&optional __begin_x)
   (if __begin_x (setq _begin_x __begin_x)) _begin_x)
  (:begin_y
   (&optional __begin_y)
   (if __begin_y (setq _begin_y __begin_y)) _begin_y)
  (:end_x
   (&optional __end_x)
   (if __end_x (setq _end_x __end_x)) _end_x)
  (:end_y
   (&optional __end_y)
   (if __end_y (setq _end_y __end_y)) _end_y)
  (:task_flag
   (&optional __task_flag)
   (if __task_flag (setq _task_flag __task_flag)) _task_flag)
  (:serialization-length
   ()
   (+
    ;; int32[] _begin_x
    (* 4    (length _begin_x)) 4
    ;; int32[] _begin_y
    (* 4    (length _begin_y)) 4
    ;; int32[] _end_x
    (* 4    (length _end_x)) 4
    ;; int32[] _end_y
    (* 4    (length _end_y)) 4
    ;; string _task_flag
    4 (length _task_flag)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _begin_x
     (write-long (length _begin_x) s)
     (dotimes (i (length _begin_x))
       (write-long (elt _begin_x i) s)
       )
     ;; int32[] _begin_y
     (write-long (length _begin_y) s)
     (dotimes (i (length _begin_y))
       (write-long (elt _begin_y i) s)
       )
     ;; int32[] _end_x
     (write-long (length _end_x) s)
     (dotimes (i (length _end_x))
       (write-long (elt _end_x i) s)
       )
     ;; int32[] _end_y
     (write-long (length _end_y) s)
     (dotimes (i (length _end_y))
       (write-long (elt _end_y i) s)
       )
     ;; string _task_flag
       (write-long (length _task_flag) s) (princ _task_flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _begin_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _begin_x (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _begin_x i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _begin_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _begin_y (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _begin_y i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _end_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _end_x (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _end_x i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _end_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _end_y (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _end_y i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string _task_flag
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_flag (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yidamsg::Roi_cam :md5sum-) "8e9ac17eb247147b3bbfc2b237c971f6")
(setf (get yidamsg::Roi_cam :datatype-) "yidamsg/Roi_cam")
(setf (get yidamsg::Roi_cam :definition-)
      "int32[] begin_x
int32[] begin_y
int32[] end_x
int32[] end_y
string task_flag

")



(provide :yidamsg/Roi_cam "8e9ac17eb247147b3bbfc2b237c971f6")


