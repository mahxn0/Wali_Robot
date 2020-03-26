;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::walle_wakeup)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'walle_wakeup (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::WALLE_WAKEUP")
  (make-package "YIDAMSG::WALLE_WAKEUP"))

(in-package "ROS")
;;//! \htmlinclude walle_wakeup.msg.html


(defclass yidamsg::walle_wakeup
  :super ros::object
  :slots (_wakeup _score _key_word ))

(defmethod yidamsg::walle_wakeup
  (:init
   (&key
    ((:wakeup __wakeup) 0)
    ((:score __score) 0)
    ((:key_word __key_word) "")
    )
   (send-super :init)
   (setq _wakeup (round __wakeup))
   (setq _score (round __score))
   (setq _key_word (string __key_word))
   self)
  (:wakeup
   (&optional __wakeup)
   (if __wakeup (setq _wakeup __wakeup)) _wakeup)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:key_word
   (&optional __key_word)
   (if __key_word (setq _key_word __key_word)) _key_word)
  (:serialization-length
   ()
   (+
    ;; int32 _wakeup
    4
    ;; int32 _score
    4
    ;; string _key_word
    4 (length _key_word)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _wakeup
       (write-long _wakeup s)
     ;; int32 _score
       (write-long _score s)
     ;; string _key_word
       (write-long (length _key_word) s) (princ _key_word s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _wakeup
     (setq _wakeup (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _score
     (setq _score (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _key_word
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key_word (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yidamsg::walle_wakeup :md5sum-) "0b832037d6e61fd58c7aa70efb2709b7")
(setf (get yidamsg::walle_wakeup :datatype-) "yidamsg/walle_wakeup")
(setf (get yidamsg::walle_wakeup :definition-)
      "int32 wakeup
int32 score
string key_word

")



(provide :yidamsg/walle_wakeup "0b832037d6e61fd58c7aa70efb2709b7")


