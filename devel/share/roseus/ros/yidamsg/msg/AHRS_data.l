;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::AHRS_data)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'AHRS_data (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::AHRS_DATA")
  (make-package "YIDAMSG::AHRS_DATA"))

(in-package "ROS")
;;//! \htmlinclude AHRS_data.msg.html


(defclass yidamsg::AHRS_data
  :super ros::object
  :slots (_anglex _angley _anglez ))

(defmethod yidamsg::AHRS_data
  (:init
   (&key
    ((:anglex __anglex) 0.0)
    ((:angley __angley) 0.0)
    ((:anglez __anglez) 0.0)
    )
   (send-super :init)
   (setq _anglex (float __anglex))
   (setq _angley (float __angley))
   (setq _anglez (float __anglez))
   self)
  (:anglex
   (&optional __anglex)
   (if __anglex (setq _anglex __anglex)) _anglex)
  (:angley
   (&optional __angley)
   (if __angley (setq _angley __angley)) _angley)
  (:anglez
   (&optional __anglez)
   (if __anglez (setq _anglez __anglez)) _anglez)
  (:serialization-length
   ()
   (+
    ;; float32 _anglex
    4
    ;; float32 _angley
    4
    ;; float32 _anglez
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _anglex
       (sys::poke _anglex (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angley
       (sys::poke _angley (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _anglez
       (sys::poke _anglez (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _anglex
     (setq _anglex (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angley
     (setq _angley (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _anglez
     (setq _anglez (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::AHRS_data :md5sum-) "013b565a7d88e68adfcd16c0a3dea0d7")
(setf (get yidamsg::AHRS_data :datatype-) "yidamsg/AHRS_data")
(setf (get yidamsg::AHRS_data :definition-)
      "float32 anglex
float32 angley
float32 anglez

")



(provide :yidamsg/AHRS_data "013b565a7d88e68adfcd16c0a3dea0d7")


