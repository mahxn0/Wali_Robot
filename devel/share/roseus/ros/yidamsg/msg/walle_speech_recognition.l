;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::walle_speech_recognition)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'walle_speech_recognition (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::WALLE_SPEECH_RECOGNITION")
  (make-package "YIDAMSG::WALLE_SPEECH_RECOGNITION"))

(in-package "ROS")
;;//! \htmlinclude walle_speech_recognition.msg.html


(defclass yidamsg::walle_speech_recognition
  :super ros::object
  :slots (_direction _cmd_id _txt ))

(defmethod yidamsg::walle_speech_recognition
  (:init
   (&key
    ((:direction __direction) 0.0)
    ((:cmd_id __cmd_id) 0)
    ((:txt __txt) "")
    )
   (send-super :init)
   (setq _direction (float __direction))
   (setq _cmd_id (round __cmd_id))
   (setq _txt (string __txt))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:cmd_id
   (&optional __cmd_id)
   (if __cmd_id (setq _cmd_id __cmd_id)) _cmd_id)
  (:txt
   (&optional __txt)
   (if __txt (setq _txt __txt)) _txt)
  (:serialization-length
   ()
   (+
    ;; float32 _direction
    4
    ;; int32 _cmd_id
    4
    ;; string _txt
    4 (length _txt)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _direction
       (sys::poke _direction (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _cmd_id
       (write-long _cmd_id s)
     ;; string _txt
       (write-long (length _txt) s) (princ _txt s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _direction
     (setq _direction (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _cmd_id
     (setq _cmd_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _txt
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _txt (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yidamsg::walle_speech_recognition :md5sum-) "0c1479f10a37544af7437fcac2573154")
(setf (get yidamsg::walle_speech_recognition :datatype-) "yidamsg/walle_speech_recognition")
(setf (get yidamsg::walle_speech_recognition :definition-)
      "float32 direction
int32 cmd_id
string txt

")



(provide :yidamsg/walle_speech_recognition "0c1479f10a37544af7437fcac2573154")


