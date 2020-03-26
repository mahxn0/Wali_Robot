;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::guidao)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'guidao (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::GUIDAO")
  (make-package "YIDAMSG::GUIDAO"))

(in-package "ROS")
;;//! \htmlinclude guidao.msg.html


(defclass yidamsg::guidao
  :super ros::object
  :slots (_rec_method _rec_name _dec_hat _dec_glove _dec_shoe _rail _safety_belt _alam _action ))

(defmethod yidamsg::guidao
  (:init
   (&key
    ((:rec_method __rec_method) "")
    ((:rec_name __rec_name) "")
    ((:dec_hat __dec_hat) 0)
    ((:dec_glove __dec_glove) 0)
    ((:dec_shoe __dec_shoe) 0)
    ((:rail __rail) 0)
    ((:safety_belt __safety_belt) 0)
    ((:alam __alam) "")
    ((:action __action) "")
    )
   (send-super :init)
   (setq _rec_method (string __rec_method))
   (setq _rec_name (string __rec_name))
   (setq _dec_hat (round __dec_hat))
   (setq _dec_glove (round __dec_glove))
   (setq _dec_shoe (round __dec_shoe))
   (setq _rail (round __rail))
   (setq _safety_belt (round __safety_belt))
   (setq _alam (string __alam))
   (setq _action (string __action))
   self)
  (:rec_method
   (&optional __rec_method)
   (if __rec_method (setq _rec_method __rec_method)) _rec_method)
  (:rec_name
   (&optional __rec_name)
   (if __rec_name (setq _rec_name __rec_name)) _rec_name)
  (:dec_hat
   (&optional __dec_hat)
   (if __dec_hat (setq _dec_hat __dec_hat)) _dec_hat)
  (:dec_glove
   (&optional __dec_glove)
   (if __dec_glove (setq _dec_glove __dec_glove)) _dec_glove)
  (:dec_shoe
   (&optional __dec_shoe)
   (if __dec_shoe (setq _dec_shoe __dec_shoe)) _dec_shoe)
  (:rail
   (&optional __rail)
   (if __rail (setq _rail __rail)) _rail)
  (:safety_belt
   (&optional __safety_belt)
   (if __safety_belt (setq _safety_belt __safety_belt)) _safety_belt)
  (:alam
   (&optional __alam)
   (if __alam (setq _alam __alam)) _alam)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; string _rec_method
    4 (length _rec_method)
    ;; string _rec_name
    4 (length _rec_name)
    ;; int32 _dec_hat
    4
    ;; int32 _dec_glove
    4
    ;; int32 _dec_shoe
    4
    ;; int32 _rail
    4
    ;; int32 _safety_belt
    4
    ;; string _alam
    4 (length _alam)
    ;; string _action
    4 (length _action)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _rec_method
       (write-long (length _rec_method) s) (princ _rec_method s)
     ;; string _rec_name
       (write-long (length _rec_name) s) (princ _rec_name s)
     ;; int32 _dec_hat
       (write-long _dec_hat s)
     ;; int32 _dec_glove
       (write-long _dec_glove s)
     ;; int32 _dec_shoe
       (write-long _dec_shoe s)
     ;; int32 _rail
       (write-long _rail s)
     ;; int32 _safety_belt
       (write-long _safety_belt s)
     ;; string _alam
       (write-long (length _alam) s) (princ _alam s)
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _rec_method
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rec_method (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _rec_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rec_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _dec_hat
     (setq _dec_hat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dec_glove
     (setq _dec_glove (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dec_shoe
     (setq _dec_shoe (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rail
     (setq _rail (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _safety_belt
     (setq _safety_belt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _alam
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alam (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yidamsg::guidao :md5sum-) "5f7b72245dfc6166afb75ac5cae3a673")
(setf (get yidamsg::guidao :datatype-) "yidamsg/guidao")
(setf (get yidamsg::guidao :definition-)
      "string rec_method
string rec_name
int32 dec_hat
int32 dec_glove
int32 dec_shoe
int32 rail
int32 safety_belt
string alam
string action

")



(provide :yidamsg/guidao "5f7b72245dfc6166afb75ac5cae3a673")


