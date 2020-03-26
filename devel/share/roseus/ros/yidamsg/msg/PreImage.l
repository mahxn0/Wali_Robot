;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::PreImage)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'PreImage (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::PREIMAGE")
  (make-package "YIDAMSG::PREIMAGE"))

(in-package "ROS")
;;//! \htmlinclude PreImage.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass yidamsg::PreImage
  :super ros::object
  :slots (_camid _picid _image ))

(defmethod yidamsg::PreImage
  (:init
   (&key
    ((:camid __camid) 0)
    ((:picid __picid) 0)
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _camid (round __camid))
   (setq _picid (round __picid))
   (setq _image __image)
   self)
  (:camid
   (&optional __camid)
   (if __camid (setq _camid __camid)) _camid)
  (:picid
   (&optional __picid)
   (if __picid (setq _picid __picid)) _picid)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; int32 _camid
    4
    ;; int32 _picid
    4
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _camid
       (write-long _camid s)
     ;; int32 _picid
       (write-long _picid s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _camid
     (setq _camid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _picid
     (setq _picid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(setf (get yidamsg::PreImage :md5sum-) "e06bb60f0e1b2528085e8a03d7e758d8")
(setf (get yidamsg::PreImage :datatype-) "yidamsg/PreImage")
(setf (get yidamsg::PreImage :definition-)
      "int32 camid
int32 picid
sensor_msgs/Image image

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :yidamsg/PreImage "e06bb60f0e1b2528085e8a03d7e758d8")


