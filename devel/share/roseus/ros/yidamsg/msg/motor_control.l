;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::motor_control)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'motor_control (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::MOTOR_CONTROL")
  (make-package "YIDAMSG::MOTOR_CONTROL"))

(in-package "ROS")
;;//! \htmlinclude motor_control.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass yidamsg::motor_control
  :super ros::object
  :slots (_direct_angle _speed ))

(defmethod yidamsg::motor_control
  (:init
   (&key
    ((:direct_angle __direct_angle) 0)
    ((:speed __speed) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _direct_angle (round __direct_angle))
   (setq _speed __speed)
   self)
  (:direct_angle
   (&optional __direct_angle)
   (if __direct_angle (setq _direct_angle __direct_angle)) _direct_angle)
  (:speed
   (&rest __speed)
   (if (keywordp (car __speed))
       (send* _speed __speed)
     (progn
       (if __speed (setq _speed (car __speed)))
       _speed)))
  (:serialization-length
   ()
   (+
    ;; int32 _direct_angle
    4
    ;; geometry_msgs/Twist _speed
    (send _speed :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _direct_angle
       (write-long _direct_angle s)
     ;; geometry_msgs/Twist _speed
       (send _speed :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _direct_angle
     (setq _direct_angle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Twist _speed
     (send _speed :deserialize buf ptr-) (incf ptr- (send _speed :serialization-length))
   ;;
   self)
  )

(setf (get yidamsg::motor_control :md5sum-) "11e242d50e6d6f6742ef1ce74bcc4554")
(setf (get yidamsg::motor_control :datatype-) "yidamsg/motor_control")
(setf (get yidamsg::motor_control :definition-)
      "int32 direct_angle
geometry_msgs/Twist speed

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :yidamsg/motor_control "11e242d50e6d6f6742ef1ce74bcc4554")


