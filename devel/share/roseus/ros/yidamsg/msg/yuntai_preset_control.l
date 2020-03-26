;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::yuntai_preset_control)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'yuntai_preset_control (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::YUNTAI_PRESET_CONTROL")
  (make-package "YIDAMSG::YUNTAI_PRESET_CONTROL"))

(in-package "ROS")
;;//! \htmlinclude yuntai_preset_control.msg.html


(defclass yidamsg::yuntai_preset_control
  :super ros::object
  :slots (_id _horizontal _vertical _focus ))

(defmethod yidamsg::yuntai_preset_control
  (:init
   (&key
    ((:id __id) 0)
    ((:horizontal __horizontal) 0)
    ((:vertical __vertical) 0)
    ((:focus __focus) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _horizontal (round __horizontal))
   (setq _vertical (round __vertical))
   (setq _focus (round __focus))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:horizontal
   (&optional __horizontal)
   (if __horizontal (setq _horizontal __horizontal)) _horizontal)
  (:vertical
   (&optional __vertical)
   (if __vertical (setq _vertical __vertical)) _vertical)
  (:focus
   (&optional __focus)
   (if __focus (setq _focus __focus)) _focus)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _horizontal
    4
    ;; int32 _vertical
    4
    ;; int32 _focus
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _horizontal
       (write-long _horizontal s)
     ;; int32 _vertical
       (write-long _vertical s)
     ;; int32 _focus
       (write-long _focus s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _horizontal
     (setq _horizontal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _vertical
     (setq _vertical (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _focus
     (setq _focus (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::yuntai_preset_control :md5sum-) "7c1b995bdb29e4b1c0fa2508de065fb9")
(setf (get yidamsg::yuntai_preset_control :datatype-) "yidamsg/yuntai_preset_control")
(setf (get yidamsg::yuntai_preset_control :definition-)
      "int32 id
int32 horizontal
int32 vertical
int32 focus

")



(provide :yidamsg/yuntai_preset_control "7c1b995bdb29e4b1c0fa2508de065fb9")


