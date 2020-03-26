;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::audio_broadcase)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'audio_broadcase (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::AUDIO_BROADCASE")
  (make-package "YIDAMSG::AUDIO_BROADCASE"))
(unless (find-package "YIDAMSG::AUDIO_BROADCASEREQUEST")
  (make-package "YIDAMSG::AUDIO_BROADCASEREQUEST"))
(unless (find-package "YIDAMSG::AUDIO_BROADCASERESPONSE")
  (make-package "YIDAMSG::AUDIO_BROADCASERESPONSE"))

(in-package "ROS")





(defclass yidamsg::audio_broadcaseRequest
  :super ros::object
  :slots (_text _file_type _audio_file_id ))

(defmethod yidamsg::audio_broadcaseRequest
  (:init
   (&key
    ((:text __text) "")
    ((:file_type __file_type) 0)
    ((:audio_file_id __audio_file_id) 0)
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _file_type (round __file_type))
   (setq _audio_file_id (round __audio_file_id))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:file_type
   (&optional __file_type)
   (if __file_type (setq _file_type __file_type)) _file_type)
  (:audio_file_id
   (&optional __audio_file_id)
   (if __audio_file_id (setq _audio_file_id __audio_file_id)) _audio_file_id)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; int32 _file_type
    4
    ;; int32 _audio_file_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; int32 _file_type
       (write-long _file_type s)
     ;; int32 _audio_file_id
       (write-long _audio_file_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _file_type
     (setq _file_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _audio_file_id
     (setq _audio_file_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass yidamsg::audio_broadcaseResponse
  :super ros::object
  :slots (_message _status ))

(defmethod yidamsg::audio_broadcaseResponse
  (:init
   (&key
    ((:message __message) "")
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _message (string __message))
   (setq _status (round __status))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ;; int8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; int8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;;
   self)
  )

(defclass yidamsg::audio_broadcase
  :super ros::object
  :slots ())

(setf (get yidamsg::audio_broadcase :md5sum-) "d1516e71632b10007ec52702691b117f")
(setf (get yidamsg::audio_broadcase :datatype-) "yidamsg/audio_broadcase")
(setf (get yidamsg::audio_broadcase :request) yidamsg::audio_broadcaseRequest)
(setf (get yidamsg::audio_broadcase :response) yidamsg::audio_broadcaseResponse)

(defmethod yidamsg::audio_broadcaseRequest
  (:response () (instance yidamsg::audio_broadcaseResponse :init)))

(setf (get yidamsg::audio_broadcaseRequest :md5sum-) "d1516e71632b10007ec52702691b117f")
(setf (get yidamsg::audio_broadcaseRequest :datatype-) "yidamsg/audio_broadcaseRequest")
(setf (get yidamsg::audio_broadcaseRequest :definition-)
      "string text
int32 file_type
int32 audio_file_id
---
string message
int8 status

")

(setf (get yidamsg::audio_broadcaseResponse :md5sum-) "d1516e71632b10007ec52702691b117f")
(setf (get yidamsg::audio_broadcaseResponse :datatype-) "yidamsg/audio_broadcaseResponse")
(setf (get yidamsg::audio_broadcaseResponse :definition-)
      "string text
int32 file_type
int32 audio_file_id
---
string message
int8 status

")



(provide :yidamsg/audio_broadcase "d1516e71632b10007ec52702691b117f")


