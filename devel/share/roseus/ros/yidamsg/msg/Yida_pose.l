;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::Yida_pose)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'Yida_pose (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::YIDA_POSE")
  (make-package "YIDAMSG::YIDA_POSE"))

(in-package "ROS")
;;//! \htmlinclude Yida_pose.msg.html


(defclass yidamsg::Yida_pose
  :super ros::object
  :slots (_id _x _y _z _anglex _angley _anglez _prob _x1 _y1 _x2 _y2 _x3 _y3 _x4 _y4 _road_line_status _robot_road_angle _distance _turn_angle ))

(defmethod yidamsg::Yida_pose
  (:init
   (&key
    ((:id __id) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:anglex __anglex) 0.0)
    ((:angley __angley) 0.0)
    ((:anglez __anglez) 0.0)
    ((:prob __prob) 0.0)
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:x2 __x2) 0.0)
    ((:y2 __y2) 0.0)
    ((:x3 __x3) 0.0)
    ((:y3 __y3) 0.0)
    ((:x4 __x4) 0.0)
    ((:y4 __y4) 0.0)
    ((:road_line_status __road_line_status) 0)
    ((:robot_road_angle __robot_road_angle) 0.0)
    ((:distance __distance) 0.0)
    ((:turn_angle __turn_angle) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _anglex (float __anglex))
   (setq _angley (float __angley))
   (setq _anglez (float __anglez))
   (setq _prob (float __prob))
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _x2 (float __x2))
   (setq _y2 (float __y2))
   (setq _x3 (float __x3))
   (setq _y3 (float __y3))
   (setq _x4 (float __x4))
   (setq _y4 (float __y4))
   (setq _road_line_status (round __road_line_status))
   (setq _robot_road_angle (float __robot_road_angle))
   (setq _distance (float __distance))
   (setq _turn_angle (float __turn_angle))
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
  (:anglex
   (&optional __anglex)
   (if __anglex (setq _anglex __anglex)) _anglex)
  (:angley
   (&optional __angley)
   (if __angley (setq _angley __angley)) _angley)
  (:anglez
   (&optional __anglez)
   (if __anglez (setq _anglez __anglez)) _anglez)
  (:prob
   (&optional __prob)
   (if __prob (setq _prob __prob)) _prob)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:x3
   (&optional __x3)
   (if __x3 (setq _x3 __x3)) _x3)
  (:y3
   (&optional __y3)
   (if __y3 (setq _y3 __y3)) _y3)
  (:x4
   (&optional __x4)
   (if __x4 (setq _x4 __x4)) _x4)
  (:y4
   (&optional __y4)
   (if __y4 (setq _y4 __y4)) _y4)
  (:road_line_status
   (&optional __road_line_status)
   (if __road_line_status (setq _road_line_status __road_line_status)) _road_line_status)
  (:robot_road_angle
   (&optional __robot_road_angle)
   (if __robot_road_angle (setq _robot_road_angle __robot_road_angle)) _robot_road_angle)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:turn_angle
   (&optional __turn_angle)
   (if __turn_angle (setq _turn_angle __turn_angle)) _turn_angle)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float32 _anglex
    4
    ;; float32 _angley
    4
    ;; float32 _anglez
    4
    ;; float32 _prob
    4
    ;; float32 _x1
    4
    ;; float32 _y1
    4
    ;; float32 _x2
    4
    ;; float32 _y2
    4
    ;; float32 _x3
    4
    ;; float32 _y3
    4
    ;; float32 _x4
    4
    ;; float32 _y4
    4
    ;; int32 _road_line_status
    4
    ;; float32 _robot_road_angle
    4
    ;; float32 _distance
    4
    ;; float32 _turn_angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _anglex
       (sys::poke _anglex (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angley
       (sys::poke _angley (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _anglez
       (sys::poke _anglez (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _prob
       (sys::poke _prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y2
       (sys::poke _y2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x3
       (sys::poke _x3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y3
       (sys::poke _y3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x4
       (sys::poke _x4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y4
       (sys::poke _y4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _road_line_status
       (write-long _road_line_status s)
     ;; float32 _robot_road_angle
       (sys::poke _robot_road_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _turn_angle
       (sys::poke _turn_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _anglex
     (setq _anglex (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angley
     (setq _angley (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _anglez
     (setq _anglez (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _prob
     (setq _prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x1
     (setq _x1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y1
     (setq _y1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x2
     (setq _x2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y2
     (setq _y2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x3
     (setq _x3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y3
     (setq _y3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x4
     (setq _x4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y4
     (setq _y4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _road_line_status
     (setq _road_line_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _robot_road_angle
     (setq _robot_road_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _turn_angle
     (setq _turn_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::Yida_pose :md5sum-) "1952e558db386574a9633d011a903b3d")
(setf (get yidamsg::Yida_pose :datatype-) "yidamsg/Yida_pose")
(setf (get yidamsg::Yida_pose :definition-)
      "int32 id
float64 x
float64 y
float64 z
float32 anglex
float32 angley
float32 anglez
float32 prob
float32 x1
float32 y1
float32 x2
float32 y2
float32 x3
float32 y3
float32 x4
float32 y4
int32 road_line_status
float32 robot_road_angle
float32 distance
float32 turn_angle


")



(provide :yidamsg/Yida_pose "1952e558db386574a9633d011a903b3d")


