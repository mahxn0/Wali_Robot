;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::DBTableUpdate)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'DBTableUpdate (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::DBTABLEUPDATE")
  (make-package "YIDAMSG::DBTABLEUPDATE"))

(in-package "ROS")
;;//! \htmlinclude DBTableUpdate.msg.html


(defclass yidamsg::DBTableUpdate
  :super ros::object
  :slots (_table_id ))

(defmethod yidamsg::DBTableUpdate
  (:init
   (&key
    ((:table_id __table_id) 0)
    )
   (send-super :init)
   (setq _table_id (round __table_id))
   self)
  (:table_id
   (&optional __table_id)
   (if __table_id (setq _table_id __table_id)) _table_id)
  (:serialization-length
   ()
   (+
    ;; uint8 _table_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _table_id
       (write-byte _table_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _table_id
     (setq _table_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get yidamsg::DBTableUpdate :md5sum-) "ad519c9257e2c4fe302696830015c294")
(setf (get yidamsg::DBTableUpdate :datatype-) "yidamsg/DBTableUpdate")
(setf (get yidamsg::DBTableUpdate :definition-)
      "uint8 table_id

")



(provide :yidamsg/DBTableUpdate "ad519c9257e2c4fe302696830015c294")


