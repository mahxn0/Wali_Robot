;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::transfer)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'transfer (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::TRANSFER")
  (make-package "YIDAMSG::TRANSFER"))

(in-package "ROS")
;;//! \htmlinclude transfer.msg.html


(defclass yidamsg::transfer
  :super ros::object
  :slots (_flag _data ))

(defmethod yidamsg::transfer
  (:init
   (&key
    ((:flag __flag) 0)
    ((:data __data) "")
    )
   (send-super :init)
   (setq _flag (round __flag))
   (setq _data (string __data))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _flag
    4
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _flag
       (write-long _flag s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _flag
     (setq _flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yidamsg::transfer :md5sum-) "f2150b2855ffbc6ac5af4fa33423a328")
(setf (get yidamsg::transfer :datatype-) "yidamsg/transfer")
(setf (get yidamsg::transfer :definition-)
      "int32 flag
string data

")



(provide :yidamsg/transfer "f2150b2855ffbc6ac5af4fa33423a328")


