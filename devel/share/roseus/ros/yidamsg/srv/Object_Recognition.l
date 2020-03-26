;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::Object_Recognition)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'Object_Recognition (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::OBJECT_RECOGNITION")
  (make-package "YIDAMSG::OBJECT_RECOGNITION"))
(unless (find-package "YIDAMSG::OBJECT_RECOGNITIONREQUEST")
  (make-package "YIDAMSG::OBJECT_RECOGNITIONREQUEST"))
(unless (find-package "YIDAMSG::OBJECT_RECOGNITIONRESPONSE")
  (make-package "YIDAMSG::OBJECT_RECOGNITIONRESPONSE"))

(in-package "ROS")





(defclass yidamsg::Object_RecognitionRequest
  :super ros::object
  :slots (_start ))

(defmethod yidamsg::Object_RecognitionRequest
  (:init
   (&key
    ((:start __start) nil)
    )
   (send-super :init)
   (setq _start __start)
   self)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:serialization-length
   ()
   (+
    ;; bool _start
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _start
       (if _start (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _start
     (setq _start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass yidamsg::Object_RecognitionResponse
  :super ros::object
  :slots (_result ))

(defmethod yidamsg::Object_RecognitionResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass yidamsg::Object_Recognition
  :super ros::object
  :slots ())

(setf (get yidamsg::Object_Recognition :md5sum-) "0304abb62c1d15138b7d0bfcf0865362")
(setf (get yidamsg::Object_Recognition :datatype-) "yidamsg/Object_Recognition")
(setf (get yidamsg::Object_Recognition :request) yidamsg::Object_RecognitionRequest)
(setf (get yidamsg::Object_Recognition :response) yidamsg::Object_RecognitionResponse)

(defmethod yidamsg::Object_RecognitionRequest
  (:response () (instance yidamsg::Object_RecognitionResponse :init)))

(setf (get yidamsg::Object_RecognitionRequest :md5sum-) "0304abb62c1d15138b7d0bfcf0865362")
(setf (get yidamsg::Object_RecognitionRequest :datatype-) "yidamsg/Object_RecognitionRequest")
(setf (get yidamsg::Object_RecognitionRequest :definition-)
      "bool start
---
bool result

")

(setf (get yidamsg::Object_RecognitionResponse :md5sum-) "0304abb62c1d15138b7d0bfcf0865362")
(setf (get yidamsg::Object_RecognitionResponse :datatype-) "yidamsg/Object_RecognitionResponse")
(setf (get yidamsg::Object_RecognitionResponse :definition-)
      "bool start
---
bool result

")



(provide :yidamsg/Object_Recognition "0304abb62c1d15138b7d0bfcf0865362")


