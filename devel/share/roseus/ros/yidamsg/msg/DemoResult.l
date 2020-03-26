;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::DemoResult)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'DemoResult (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::DEMORESULT")
  (make-package "YIDAMSG::DEMORESULT"))

(in-package "ROS")
;;//! \htmlinclude DemoResult.msg.html


(defclass yidamsg::DemoResult
  :super ros::object
  :slots (_camid _picid _x _y _z _surfaceimage _equipimage _nameplates _equipid _result _timestamp _success ))

(defmethod yidamsg::DemoResult
  (:init
   (&key
    ((:camid __camid) 0)
    ((:picid __picid) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:surfaceimage __surfaceimage) (make-array 0 :initial-element 0 :element-type :char))
    ((:equipimage __equipimage) (make-array 0 :initial-element 0 :element-type :char))
    ((:nameplates __nameplates) (make-array 0 :initial-element 0 :element-type :char))
    ((:equipid __equipid) (make-array 0 :initial-element 0 :element-type :char))
    ((:result __result) "")
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _camid (round __camid))
   (setq _picid (round __picid))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _surfaceimage __surfaceimage)
   (setq _equipimage __equipimage)
   (setq _nameplates __nameplates)
   (setq _equipid __equipid)
   (setq _result (string __result))
   (setq _timestamp __timestamp)
   (setq _success __success)
   self)
  (:camid
   (&optional __camid)
   (if __camid (setq _camid __camid)) _camid)
  (:picid
   (&optional __picid)
   (if __picid (setq _picid __picid)) _picid)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:surfaceimage
   (&optional __surfaceimage)
   (if __surfaceimage (setq _surfaceimage __surfaceimage)) _surfaceimage)
  (:equipimage
   (&optional __equipimage)
   (if __equipimage (setq _equipimage __equipimage)) _equipimage)
  (:nameplates
   (&optional __nameplates)
   (if __nameplates (setq _nameplates __nameplates)) _nameplates)
  (:equipid
   (&optional __equipid)
   (if __equipid (setq _equipid __equipid)) _equipid)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; int32 _camid
    4
    ;; int32 _picid
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; uint8[] _surfaceimage
    (* 1    (length _surfaceimage)) 4
    ;; uint8[] _equipimage
    (* 1    (length _equipimage)) 4
    ;; uint8[] _nameplates
    (* 1    (length _nameplates)) 4
    ;; uint8[] _equipid
    (* 1    (length _equipid)) 4
    ;; string _result
    4 (length _result)
    ;; time _timestamp
    8
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _camid
       (write-long _camid s)
     ;; int32 _picid
       (write-long _picid s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8[] _surfaceimage
     (write-long (length _surfaceimage) s)
     (princ _surfaceimage s)
     ;; uint8[] _equipimage
     (write-long (length _equipimage) s)
     (princ _equipimage s)
     ;; uint8[] _nameplates
     (write-long (length _nameplates) s)
     (princ _nameplates s)
     ;; uint8[] _equipid
     (write-long (length _equipid) s)
     (princ _equipid s)
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _camid
     (setq _camid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _picid
     (setq _picid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8[] _surfaceimage
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _surfaceimage (make-array n :element-type :char))
     (replace _surfaceimage buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _equipimage
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _equipimage (make-array n :element-type :char))
     (replace _equipimage buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _nameplates
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _nameplates (make-array n :element-type :char))
     (replace _nameplates buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _equipid
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _equipid (make-array n :element-type :char))
     (replace _equipid buf :start2 ptr-) (incf ptr- n))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get yidamsg::DemoResult :md5sum-) "24d2d03877545f95c0d6d31f886a5d9e")
(setf (get yidamsg::DemoResult :datatype-) "yidamsg/DemoResult")
(setf (get yidamsg::DemoResult :definition-)
      "int32 camid
int32 picid
float32 x
float32 y
float32 z
uint8[] surfaceimage
uint8[] equipimage
uint8[] nameplates
uint8[] equipid
string result
time timestamp
bool success

")



(provide :yidamsg/DemoResult "24d2d03877545f95c0d6d31f886a5d9e")


