;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::Log)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'Log (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::LOG")
  (make-package "YIDAMSG::LOG"))

(in-package "ROS")
;;//! \htmlinclude Log.msg.html


(defclass yidamsg::Log
  :super ros::object
  :slots (_name _content _flag ))

(defmethod yidamsg::Log
  (:init
   (&key
    ((:name __name) "")
    ((:content __content) "")
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _content (string __content))
   (setq _flag (round __flag))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:content
   (&optional __content)
   (if __content (setq _content __content)) _content)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _content
    4 (length _content)
    ;; int32 _flag
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _content
       (write-long (length _content) s) (princ _content s)
     ;; int32 _flag
       (write-long _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _content
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _content (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _flag
     (setq _flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::Log :md5sum-) "b895471bdfa065d8f00a79a81012c93d")
(setf (get yidamsg::Log :datatype-) "yidamsg/Log")
(setf (get yidamsg::Log :definition-)
      "string name
string content
int32 flag

")



(provide :yidamsg/Log "b895471bdfa065d8f00a79a81012c93d")


