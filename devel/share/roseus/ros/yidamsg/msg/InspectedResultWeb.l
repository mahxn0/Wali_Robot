;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::InspectedResultWeb)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'InspectedResultWeb (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::INSPECTEDRESULTWEB")
  (make-package "YIDAMSG::INSPECTEDRESULTWEB"))

(in-package "ROS")
;;//! \htmlinclude InspectedResultWeb.msg.html


(defclass yidamsg::InspectedResultWeb
  :super ros::object
  :slots (_task_history_id _robot_id _point_id _task_name _value _name _alarm_type_id _alarm_level _recon_time _recon_type_name ))

(defmethod yidamsg::InspectedResultWeb
  (:init
   (&key
    ((:task_history_id __task_history_id) 0)
    ((:robot_id __robot_id) 0)
    ((:point_id __point_id) 0)
    ((:task_name __task_name) "")
    ((:value __value) 0.0)
    ((:name __name) "")
    ((:alarm_type_id __alarm_type_id) 0)
    ((:alarm_level __alarm_level) 0)
    ((:recon_time __recon_time) "")
    ((:recon_type_name __recon_type_name) "")
    )
   (send-super :init)
   (setq _task_history_id (round __task_history_id))
   (setq _robot_id (round __robot_id))
   (setq _point_id (round __point_id))
   (setq _task_name (string __task_name))
   (setq _value (float __value))
   (setq _name (string __name))
   (setq _alarm_type_id (round __alarm_type_id))
   (setq _alarm_level (round __alarm_level))
   (setq _recon_time (string __recon_time))
   (setq _recon_type_name (string __recon_type_name))
   self)
  (:task_history_id
   (&optional __task_history_id)
   (if __task_history_id (setq _task_history_id __task_history_id)) _task_history_id)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:point_id
   (&optional __point_id)
   (if __point_id (setq _point_id __point_id)) _point_id)
  (:task_name
   (&optional __task_name)
   (if __task_name (setq _task_name __task_name)) _task_name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:alarm_type_id
   (&optional __alarm_type_id)
   (if __alarm_type_id (setq _alarm_type_id __alarm_type_id)) _alarm_type_id)
  (:alarm_level
   (&optional __alarm_level)
   (if __alarm_level (setq _alarm_level __alarm_level)) _alarm_level)
  (:recon_time
   (&optional __recon_time)
   (if __recon_time (setq _recon_time __recon_time)) _recon_time)
  (:recon_type_name
   (&optional __recon_type_name)
   (if __recon_type_name (setq _recon_type_name __recon_type_name)) _recon_type_name)
  (:serialization-length
   ()
   (+
    ;; int32 _task_history_id
    4
    ;; int32 _robot_id
    4
    ;; int32 _point_id
    4
    ;; string _task_name
    4 (length _task_name)
    ;; float32 _value
    4
    ;; string _name
    4 (length _name)
    ;; uint8 _alarm_type_id
    1
    ;; uint8 _alarm_level
    1
    ;; string _recon_time
    4 (length _recon_time)
    ;; string _recon_type_name
    4 (length _recon_type_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _task_history_id
       (write-long _task_history_id s)
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;; int32 _point_id
       (write-long _point_id s)
     ;; string _task_name
       (write-long (length _task_name) s) (princ _task_name s)
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint8 _alarm_type_id
       (write-byte _alarm_type_id s)
     ;; uint8 _alarm_level
       (write-byte _alarm_level s)
     ;; string _recon_time
       (write-long (length _recon_time) s) (princ _recon_time s)
     ;; string _recon_type_name
       (write-long (length _recon_type_name) s) (princ _recon_type_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _task_history_id
     (setq _task_history_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _point_id
     (setq _point_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _task_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _alarm_type_id
     (setq _alarm_type_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _alarm_level
     (setq _alarm_level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _recon_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _recon_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _recon_type_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _recon_type_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yidamsg::InspectedResultWeb :md5sum-) "7ad3da122c73ba2e57670c36124d35d1")
(setf (get yidamsg::InspectedResultWeb :datatype-) "yidamsg/InspectedResultWeb")
(setf (get yidamsg::InspectedResultWeb :definition-)
      "int32 task_history_id
int32 robot_id
int32 point_id
string task_name
float32 value
string name
uint8 alarm_type_id
uint8 alarm_level
string recon_time
string recon_type_name

")



(provide :yidamsg/InspectedResultWeb "7ad3da122c73ba2e57670c36124d35d1")


