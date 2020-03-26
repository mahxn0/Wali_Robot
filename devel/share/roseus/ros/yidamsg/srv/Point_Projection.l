;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::Point_Projection)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'Point_Projection (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::POINT_PROJECTION")
  (make-package "YIDAMSG::POINT_PROJECTION"))
(unless (find-package "YIDAMSG::POINT_PROJECTIONREQUEST")
  (make-package "YIDAMSG::POINT_PROJECTIONREQUEST"))
(unless (find-package "YIDAMSG::POINT_PROJECTIONRESPONSE")
  (make-package "YIDAMSG::POINT_PROJECTIONRESPONSE"))

(in-package "ROS")





(defclass yidamsg::Point_ProjectionRequest
  :super ros::object
  :slots (_x1 _y1 _z1 _x2 _y2 _z2 _x3 _y3 _z3 _x4 _y4 _z4 _flag ))

(defmethod yidamsg::Point_ProjectionRequest
  (:init
   (&key
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:z1 __z1) 0.0)
    ((:x2 __x2) 0.0)
    ((:y2 __y2) 0.0)
    ((:z2 __z2) 0.0)
    ((:x3 __x3) 0.0)
    ((:y3 __y3) 0.0)
    ((:z3 __z3) 0.0)
    ((:x4 __x4) 0.0)
    ((:y4 __y4) 0.0)
    ((:z4 __z4) 0.0)
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _z1 (float __z1))
   (setq _x2 (float __x2))
   (setq _y2 (float __y2))
   (setq _z2 (float __z2))
   (setq _x3 (float __x3))
   (setq _y3 (float __y3))
   (setq _z3 (float __z3))
   (setq _x4 (float __x4))
   (setq _y4 (float __y4))
   (setq _z4 (float __z4))
   (setq _flag (round __flag))
   self)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:z1
   (&optional __z1)
   (if __z1 (setq _z1 __z1)) _z1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:z2
   (&optional __z2)
   (if __z2 (setq _z2 __z2)) _z2)
  (:x3
   (&optional __x3)
   (if __x3 (setq _x3 __x3)) _x3)
  (:y3
   (&optional __y3)
   (if __y3 (setq _y3 __y3)) _y3)
  (:z3
   (&optional __z3)
   (if __z3 (setq _z3 __z3)) _z3)
  (:x4
   (&optional __x4)
   (if __x4 (setq _x4 __x4)) _x4)
  (:y4
   (&optional __y4)
   (if __y4 (setq _y4 __y4)) _y4)
  (:z4
   (&optional __z4)
   (if __z4 (setq _z4 __z4)) _z4)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; float32 _x1
    4
    ;; float32 _y1
    4
    ;; float32 _z1
    4
    ;; float32 _x2
    4
    ;; float32 _y2
    4
    ;; float32 _z2
    4
    ;; float32 _x3
    4
    ;; float32 _y3
    4
    ;; float32 _z3
    4
    ;; float32 _x4
    4
    ;; float32 _y4
    4
    ;; float32 _z4
    4
    ;; int32 _flag
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z1
       (sys::poke _z1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y2
       (sys::poke _y2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z2
       (sys::poke _z2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x3
       (sys::poke _x3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y3
       (sys::poke _y3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z3
       (sys::poke _z3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x4
       (sys::poke _x4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y4
       (sys::poke _y4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z4
       (sys::poke _z4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _flag
       (write-long _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x1
     (setq _x1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y1
     (setq _y1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z1
     (setq _z1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x2
     (setq _x2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y2
     (setq _y2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z2
     (setq _z2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x3
     (setq _x3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y3
     (setq _y3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z3
     (setq _z3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x4
     (setq _x4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y4
     (setq _y4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z4
     (setq _z4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _flag
     (setq _flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass yidamsg::Point_ProjectionResponse
  :super ros::object
  :slots (_status ))

(defmethod yidamsg::Point_ProjectionResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass yidamsg::Point_Projection
  :super ros::object
  :slots ())

(setf (get yidamsg::Point_Projection :md5sum-) "e1bcbee91e599262133249ba6a7c9a32")
(setf (get yidamsg::Point_Projection :datatype-) "yidamsg/Point_Projection")
(setf (get yidamsg::Point_Projection :request) yidamsg::Point_ProjectionRequest)
(setf (get yidamsg::Point_Projection :response) yidamsg::Point_ProjectionResponse)

(defmethod yidamsg::Point_ProjectionRequest
  (:response () (instance yidamsg::Point_ProjectionResponse :init)))

(setf (get yidamsg::Point_ProjectionRequest :md5sum-) "e1bcbee91e599262133249ba6a7c9a32")
(setf (get yidamsg::Point_ProjectionRequest :datatype-) "yidamsg/Point_ProjectionRequest")
(setf (get yidamsg::Point_ProjectionRequest :definition-)
      "float32 x1
float32 y1
float32 z1
float32 x2
float32 y2
float32 z2
float32 x3
float32 y3
float32 z3
float32 x4
float32 y4
float32 z4
int32 flag
---
bool status

")

(setf (get yidamsg::Point_ProjectionResponse :md5sum-) "e1bcbee91e599262133249ba6a7c9a32")
(setf (get yidamsg::Point_ProjectionResponse :datatype-) "yidamsg/Point_ProjectionResponse")
(setf (get yidamsg::Point_ProjectionResponse :definition-)
      "float32 x1
float32 y1
float32 z1
float32 x2
float32 y2
float32 z2
float32 x3
float32 y3
float32 z3
float32 x4
float32 y4
float32 z4
int32 flag
---
bool status

")



(provide :yidamsg/Point_Projection "e1bcbee91e599262133249ba6a7c9a32")


