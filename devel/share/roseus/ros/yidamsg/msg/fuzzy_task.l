;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::fuzzy_task)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'fuzzy_task (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::FUZZY_TASK")
  (make-package "YIDAMSG::FUZZY_TASK"))

(in-package "ROS")
;;//! \htmlinclude fuzzy_task.msg.html


(defclass yidamsg::fuzzy_task
  :super ros::object
  :slots (_control_flag _dis_left _dis_right _included_angle _turn_angle _dis_cur_pos _cur_speed _obstacle_pos _allow_width _next_width _msg_type _align ))

(defmethod yidamsg::fuzzy_task
  (:init
   (&key
    ((:control_flag __control_flag) 0)
    ((:dis_left __dis_left) 0.0)
    ((:dis_right __dis_right) 0.0)
    ((:included_angle __included_angle) 0.0)
    ((:turn_angle __turn_angle) 0.0)
    ((:dis_cur_pos __dis_cur_pos) 0.0)
    ((:cur_speed __cur_speed) 0.0)
    ((:obstacle_pos __obstacle_pos) 0.0)
    ((:allow_width __allow_width) 0.0)
    ((:next_width __next_width) 0.0)
    ((:msg_type __msg_type) "")
    ((:align __align) 0)
    )
   (send-super :init)
   (setq _control_flag (round __control_flag))
   (setq _dis_left (float __dis_left))
   (setq _dis_right (float __dis_right))
   (setq _included_angle (float __included_angle))
   (setq _turn_angle (float __turn_angle))
   (setq _dis_cur_pos (float __dis_cur_pos))
   (setq _cur_speed (float __cur_speed))
   (setq _obstacle_pos (float __obstacle_pos))
   (setq _allow_width (float __allow_width))
   (setq _next_width (float __next_width))
   (setq _msg_type (string __msg_type))
   (setq _align (round __align))
   self)
  (:control_flag
   (&optional __control_flag)
   (if __control_flag (setq _control_flag __control_flag)) _control_flag)
  (:dis_left
   (&optional __dis_left)
   (if __dis_left (setq _dis_left __dis_left)) _dis_left)
  (:dis_right
   (&optional __dis_right)
   (if __dis_right (setq _dis_right __dis_right)) _dis_right)
  (:included_angle
   (&optional __included_angle)
   (if __included_angle (setq _included_angle __included_angle)) _included_angle)
  (:turn_angle
   (&optional __turn_angle)
   (if __turn_angle (setq _turn_angle __turn_angle)) _turn_angle)
  (:dis_cur_pos
   (&optional __dis_cur_pos)
   (if __dis_cur_pos (setq _dis_cur_pos __dis_cur_pos)) _dis_cur_pos)
  (:cur_speed
   (&optional __cur_speed)
   (if __cur_speed (setq _cur_speed __cur_speed)) _cur_speed)
  (:obstacle_pos
   (&optional __obstacle_pos)
   (if __obstacle_pos (setq _obstacle_pos __obstacle_pos)) _obstacle_pos)
  (:allow_width
   (&optional __allow_width)
   (if __allow_width (setq _allow_width __allow_width)) _allow_width)
  (:next_width
   (&optional __next_width)
   (if __next_width (setq _next_width __next_width)) _next_width)
  (:msg_type
   (&optional __msg_type)
   (if __msg_type (setq _msg_type __msg_type)) _msg_type)
  (:align
   (&optional __align)
   (if __align (setq _align __align)) _align)
  (:serialization-length
   ()
   (+
    ;; int32 _control_flag
    4
    ;; float32 _dis_left
    4
    ;; float32 _dis_right
    4
    ;; float32 _included_angle
    4
    ;; float32 _turn_angle
    4
    ;; float32 _dis_cur_pos
    4
    ;; float32 _cur_speed
    4
    ;; float32 _obstacle_pos
    4
    ;; float32 _allow_width
    4
    ;; float32 _next_width
    4
    ;; string _msg_type
    4 (length _msg_type)
    ;; int32 _align
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _control_flag
       (write-long _control_flag s)
     ;; float32 _dis_left
       (sys::poke _dis_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dis_right
       (sys::poke _dis_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _included_angle
       (sys::poke _included_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _turn_angle
       (sys::poke _turn_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dis_cur_pos
       (sys::poke _dis_cur_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cur_speed
       (sys::poke _cur_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _obstacle_pos
       (sys::poke _obstacle_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _allow_width
       (sys::poke _allow_width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _next_width
       (sys::poke _next_width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _msg_type
       (write-long (length _msg_type) s) (princ _msg_type s)
     ;; int32 _align
       (write-long _align s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _control_flag
     (setq _control_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _dis_left
     (setq _dis_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dis_right
     (setq _dis_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _included_angle
     (setq _included_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _turn_angle
     (setq _turn_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dis_cur_pos
     (setq _dis_cur_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cur_speed
     (setq _cur_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _obstacle_pos
     (setq _obstacle_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _allow_width
     (setq _allow_width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _next_width
     (setq _next_width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _msg_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _align
     (setq _align (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::fuzzy_task :md5sum-) "438c1dac4f2a4a69b46ae226145532f4")
(setf (get yidamsg::fuzzy_task :datatype-) "yidamsg/fuzzy_task")
(setf (get yidamsg::fuzzy_task :definition-)
      "int32 control_flag
float32 dis_left
float32 dis_right
float32 included_angle
float32 turn_angle
float32 dis_cur_pos
float32 cur_speed
float32 obstacle_pos
float32 allow_width
float32 next_width
string msg_type
int32 align

")



(provide :yidamsg/fuzzy_task "438c1dac4f2a4a69b46ae226145532f4")


