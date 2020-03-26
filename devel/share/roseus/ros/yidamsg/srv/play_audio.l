;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::play_audio)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'play_audio (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::PLAY_AUDIO")
  (make-package "YIDAMSG::PLAY_AUDIO"))
(unless (find-package "YIDAMSG::PLAY_AUDIOREQUEST")
  (make-package "YIDAMSG::PLAY_AUDIOREQUEST"))
(unless (find-package "YIDAMSG::PLAY_AUDIORESPONSE")
  (make-package "YIDAMSG::PLAY_AUDIORESPONSE"))

(in-package "ROS")





(defclass yidamsg::play_audioRequest
  :super ros::object
  :slots (_file_path _file_type _audio_file_id ))

(defmethod yidamsg::play_audioRequest
  (:init
   (&key
    ((:file_path __file_path) "")
    ((:file_type __file_type) 0)
    ((:audio_file_id __audio_file_id) 0)
    )
   (send-super :init)
   (setq _file_path (string __file_path))
   (setq _file_type (round __file_type))
   (setq _audio_file_id (round __audio_file_id))
   self)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:file_type
   (&optional __file_type)
   (if __file_type (setq _file_type __file_type)) _file_type)
  (:audio_file_id
   (&optional __audio_file_id)
   (if __audio_file_id (setq _audio_file_id __audio_file_id)) _audio_file_id)
  (:serialization-length
   ()
   (+
    ;; string _file_path
    4 (length _file_path)
    ;; int32 _file_type
    4
    ;; int32 _audio_file_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;; int32 _file_type
       (write-long _file_type s)
     ;; int32 _audio_file_id
       (write-long _audio_file_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _file_type
     (setq _file_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _audio_file_id
     (setq _audio_file_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass yidamsg::play_audioResponse
  :super ros::object
  :slots (_message _status ))

(defmethod yidamsg::play_audioResponse
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

(defclass yidamsg::play_audio
  :super ros::object
  :slots ())

(setf (get yidamsg::play_audio :md5sum-) "1b4b6be30129215f962c2b865c54cf1f")
(setf (get yidamsg::play_audio :datatype-) "yidamsg/play_audio")
(setf (get yidamsg::play_audio :request) yidamsg::play_audioRequest)
(setf (get yidamsg::play_audio :response) yidamsg::play_audioResponse)

(defmethod yidamsg::play_audioRequest
  (:response () (instance yidamsg::play_audioResponse :init)))

(setf (get yidamsg::play_audioRequest :md5sum-) "1b4b6be30129215f962c2b865c54cf1f")
(setf (get yidamsg::play_audioRequest :datatype-) "yidamsg/play_audioRequest")
(setf (get yidamsg::play_audioRequest :definition-)
      "string file_path
int32 file_type
int32 audio_file_id
---
string message
int8 status

")

(setf (get yidamsg::play_audioResponse :md5sum-) "1b4b6be30129215f962c2b865c54cf1f")
(setf (get yidamsg::play_audioResponse :datatype-) "yidamsg/play_audioResponse")
(setf (get yidamsg::play_audioResponse :definition-)
      "string file_path
int32 file_type
int32 audio_file_id
---
string message
int8 status

")



(provide :yidamsg/play_audio "1b4b6be30129215f962c2b865c54cf1f")


