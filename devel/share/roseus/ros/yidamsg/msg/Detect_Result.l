;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::Detect_Result)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'Detect_Result (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::DETECT_RESULT")
  (make-package "YIDAMSG::DETECT_RESULT"))

(in-package "ROS")
;;//! \htmlinclude Detect_Result.msg.html


(defclass yidamsg::Detect_Result
  :super ros::object
  :slots (_xmin _ymin _xmax _ymax _name ))

(defmethod yidamsg::Detect_Result
  (:init
   (&key
    ((:xmin __xmin) 0)
    ((:ymin __ymin) 0)
    ((:xmax __xmax) 0)
    ((:ymax __ymax) 0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _xmin (round __xmin))
   (setq _ymin (round __ymin))
   (setq _xmax (round __xmax))
   (setq _ymax (round __ymax))
   (setq _name (string __name))
   self)
  (:xmin
   (&optional __xmin)
   (if __xmin (setq _xmin __xmin)) _xmin)
  (:ymin
   (&optional __ymin)
   (if __ymin (setq _ymin __ymin)) _ymin)
  (:xmax
   (&optional __xmax)
   (if __xmax (setq _xmax __xmax)) _xmax)
  (:ymax
   (&optional __ymax)
   (if __ymax (setq _ymax __ymax)) _ymax)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; int32 _xmin
    4
    ;; int32 _ymin
    4
    ;; int32 _xmax
    4
    ;; int32 _ymax
    4
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _xmin
       (write-long _xmin s)
     ;; int32 _ymin
       (write-long _ymin s)
     ;; int32 _xmax
       (write-long _xmax s)
     ;; int32 _ymax
       (write-long _ymax s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _xmin
     (setq _xmin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ymin
     (setq _ymin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _xmax
     (setq _xmax (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ymax
     (setq _ymax (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yidamsg::Detect_Result :md5sum-) "7abc6c3f7405eb5742477d7f2a521d6f")
(setf (get yidamsg::Detect_Result :datatype-) "yidamsg/Detect_Result")
(setf (get yidamsg::Detect_Result :definition-)
      "int32 xmin
int32 ymin
int32 xmax
int32 ymax
string name

")



(provide :yidamsg/Detect_Result "7abc6c3f7405eb5742477d7f2a521d6f")


