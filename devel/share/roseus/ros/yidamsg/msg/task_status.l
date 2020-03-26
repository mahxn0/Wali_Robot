;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::task_status)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'task_status (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::TASK_STATUS")
  (make-package "YIDAMSG::TASK_STATUS"))

(in-package "ROS")
;;//! \htmlinclude task_status.msg.html


(defclass yidamsg::task_status
  :super ros::object
  :slots (_taskid _start_x _start_y _start_z _end_x _end_y _end_z _alldis _dis _speed _dis_left _dis_right _next_width _road_width _control_flag _log _direction _align ))

(defmethod yidamsg::task_status
  (:init
   (&key
    ((:taskid __taskid) 0)
    ((:start_x __start_x) 0.0)
    ((:start_y __start_y) 0.0)
    ((:start_z __start_z) 0.0)
    ((:end_x __end_x) 0.0)
    ((:end_y __end_y) 0.0)
    ((:end_z __end_z) 0.0)
    ((:alldis __alldis) 0.0)
    ((:dis __dis) 0.0)
    ((:speed __speed) 0.0)
    ((:dis_left __dis_left) 0.0)
    ((:dis_right __dis_right) 0.0)
    ((:next_width __next_width) 0.0)
    ((:road_width __road_width) 0.0)
    ((:control_flag __control_flag) 0)
    ((:log __log) "")
    ((:direction __direction) 0)
    ((:align __align) 0)
    )
   (send-super :init)
   (setq _taskid (round __taskid))
   (setq _start_x (float __start_x))
   (setq _start_y (float __start_y))
   (setq _start_z (float __start_z))
   (setq _end_x (float __end_x))
   (setq _end_y (float __end_y))
   (setq _end_z (float __end_z))
   (setq _alldis (float __alldis))
   (setq _dis (float __dis))
   (setq _speed (float __speed))
   (setq _dis_left (float __dis_left))
   (setq _dis_right (float __dis_right))
   (setq _next_width (float __next_width))
   (setq _road_width (float __road_width))
   (setq _control_flag (round __control_flag))
   (setq _log (string __log))
   (setq _direction (round __direction))
   (setq _align (round __align))
   self)
  (:taskid
   (&optional __taskid)
   (if __taskid (setq _taskid __taskid)) _taskid)
  (:start_x
   (&optional __start_x)
   (if __start_x (setq _start_x __start_x)) _start_x)
  (:start_y
   (&optional __start_y)
   (if __start_y (setq _start_y __start_y)) _start_y)
  (:start_z
   (&optional __start_z)
   (if __start_z (setq _start_z __start_z)) _start_z)
  (:end_x
   (&optional __end_x)
   (if __end_x (setq _end_x __end_x)) _end_x)
  (:end_y
   (&optional __end_y)
   (if __end_y (setq _end_y __end_y)) _end_y)
  (:end_z
   (&optional __end_z)
   (if __end_z (setq _end_z __end_z)) _end_z)
  (:alldis
   (&optional __alldis)
   (if __alldis (setq _alldis __alldis)) _alldis)
  (:dis
   (&optional __dis)
   (if __dis (setq _dis __dis)) _dis)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:dis_left
   (&optional __dis_left)
   (if __dis_left (setq _dis_left __dis_left)) _dis_left)
  (:dis_right
   (&optional __dis_right)
   (if __dis_right (setq _dis_right __dis_right)) _dis_right)
  (:next_width
   (&optional __next_width)
   (if __next_width (setq _next_width __next_width)) _next_width)
  (:road_width
   (&optional __road_width)
   (if __road_width (setq _road_width __road_width)) _road_width)
  (:control_flag
   (&optional __control_flag)
   (if __control_flag (setq _control_flag __control_flag)) _control_flag)
  (:log
   (&optional __log)
   (if __log (setq _log __log)) _log)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:align
   (&optional __align)
   (if __align (setq _align __align)) _align)
  (:serialization-length
   ()
   (+
    ;; int32 _taskid
    4
    ;; float32 _start_x
    4
    ;; float32 _start_y
    4
    ;; float32 _start_z
    4
    ;; float32 _end_x
    4
    ;; float32 _end_y
    4
    ;; float32 _end_z
    4
    ;; float32 _alldis
    4
    ;; float32 _dis
    4
    ;; float32 _speed
    4
    ;; float32 _dis_left
    4
    ;; float32 _dis_right
    4
    ;; float32 _next_width
    4
    ;; float32 _road_width
    4
    ;; int32 _control_flag
    4
    ;; string _log
    4 (length _log)
    ;; int32 _direction
    4
    ;; int32 _align
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _taskid
       (write-long _taskid s)
     ;; float32 _start_x
       (sys::poke _start_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _start_y
       (sys::poke _start_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _start_z
       (sys::poke _start_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _end_x
       (sys::poke _end_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _end_y
       (sys::poke _end_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _end_z
       (sys::poke _end_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alldis
       (sys::poke _alldis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dis
       (sys::poke _dis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dis_left
       (sys::poke _dis_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dis_right
       (sys::poke _dis_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _next_width
       (sys::poke _next_width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _road_width
       (sys::poke _road_width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _control_flag
       (write-long _control_flag s)
     ;; string _log
       (write-long (length _log) s) (princ _log s)
     ;; int32 _direction
       (write-long _direction s)
     ;; int32 _align
       (write-long _align s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _taskid
     (setq _taskid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _start_x
     (setq _start_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _start_y
     (setq _start_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _start_z
     (setq _start_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _end_x
     (setq _end_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _end_y
     (setq _end_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _end_z
     (setq _end_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alldis
     (setq _alldis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dis
     (setq _dis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dis_left
     (setq _dis_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dis_right
     (setq _dis_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _next_width
     (setq _next_width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _road_width
     (setq _road_width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _control_flag
     (setq _control_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _log
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _log (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _direction
     (setq _direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _align
     (setq _align (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::task_status :md5sum-) "819ed6ebecf2f7d3f8dc2a0e3cded22d")
(setf (get yidamsg::task_status :datatype-) "yidamsg/task_status")
(setf (get yidamsg::task_status :definition-)
      "int32 taskid
float32 start_x
float32 start_y
float32 start_z
float32 end_x
float32 end_y
float32 end_z
float32 alldis
float32 dis
float32 speed
float32 dis_left
float32 dis_right
float32 next_width
float32 road_width
int32 control_flag
string log
int32 direction
int32 align

")



(provide :yidamsg/task_status "819ed6ebecf2f7d3f8dc2a0e3cded22d")


