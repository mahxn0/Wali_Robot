;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::car_status)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'car_status (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::CAR_STATUS")
  (make-package "YIDAMSG::CAR_STATUS"))

(in-package "ROS")
;;//! \htmlinclude car_status.msg.html


(defclass yidamsg::car_status
  :super ros::object
  :slots (_name _left_data _right_data ))

(defmethod yidamsg::car_status
  (:init
   (&key
    ((:name __name) "")
    ((:left_data __left_data) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:right_data __right_data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _left_data __left_data)
   (setq _right_data __right_data)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:left_data
   (&optional __left_data)
   (if __left_data (setq _left_data __left_data)) _left_data)
  (:right_data
   (&optional __right_data)
   (if __right_data (setq _right_data __right_data)) _right_data)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32[] _left_data
    (* 4    (length _left_data)) 4
    ;; float32[] _right_data
    (* 4    (length _right_data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32[] _left_data
     (write-long (length _left_data) s)
     (dotimes (i (length _left_data))
       (sys::poke (elt _left_data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _right_data
     (write-long (length _right_data) s)
     (dotimes (i (length _right_data))
       (sys::poke (elt _right_data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _left_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _left_data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _right_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _right_data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get yidamsg::car_status :md5sum-) "b0fdc85453ace119bca6040d3b417a15")
(setf (get yidamsg::car_status :datatype-) "yidamsg/car_status")
(setf (get yidamsg::car_status :definition-)
      "string name
float32[] left_data
float32[] right_data

")



(provide :yidamsg/car_status "b0fdc85453ace119bca6040d3b417a15")


