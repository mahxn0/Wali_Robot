;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::home)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'home (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::HOME")
  (make-package "YIDAMSG::HOME"))

(in-package "ROS")
;;//! \htmlinclude home.msg.html


(defclass yidamsg::home
  :super ros::object
  :slots (_order ))

(defmethod yidamsg::home
  (:init
   (&key
    ((:order __order) "")
    )
   (send-super :init)
   (setq _order (string __order))
   self)
  (:order
   (&optional __order)
   (if __order (setq _order __order)) _order)
  (:serialization-length
   ()
   (+
    ;; string _order
    4 (length _order)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _order
       (write-long (length _order) s) (princ _order s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _order
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _order (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yidamsg::home :md5sum-) "9db207449ae86824d9e60bd906ef30e7")
(setf (get yidamsg::home :datatype-) "yidamsg/home")
(setf (get yidamsg::home :definition-)
      "string order

")



(provide :yidamsg/home "9db207449ae86824d9e60bd906ef30e7")


