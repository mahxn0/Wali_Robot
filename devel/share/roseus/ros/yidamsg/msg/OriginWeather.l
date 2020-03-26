;; Auto-generated. Do not edit!


(when (boundp 'yidamsg::OriginWeather)
  (if (not (find-package "YIDAMSG"))
    (make-package "YIDAMSG"))
  (shadow 'OriginWeather (find-package "YIDAMSG")))
(unless (find-package "YIDAMSG::ORIGINWEATHER")
  (make-package "YIDAMSG::ORIGINWEATHER"))

(in-package "ROS")
;;//! \htmlinclude OriginWeather.msg.html


(defclass yidamsg::OriginWeather
  :super ros::object
  :slots (_pressure _temperature _humidity _illumination _windspeed _winddirection _rainorsnow ))

(defmethod yidamsg::OriginWeather
  (:init
   (&key
    ((:pressure __pressure) 0)
    ((:temperature __temperature) 0)
    ((:humidity __humidity) 0)
    ((:illumination __illumination) 0)
    ((:windspeed __windspeed) 0)
    ((:winddirection __winddirection) 0)
    ((:rainorsnow __rainorsnow) 0)
    )
   (send-super :init)
   (setq _pressure (round __pressure))
   (setq _temperature (round __temperature))
   (setq _humidity (round __humidity))
   (setq _illumination (round __illumination))
   (setq _windspeed (round __windspeed))
   (setq _winddirection (round __winddirection))
   (setq _rainorsnow (round __rainorsnow))
   self)
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:humidity
   (&optional __humidity)
   (if __humidity (setq _humidity __humidity)) _humidity)
  (:illumination
   (&optional __illumination)
   (if __illumination (setq _illumination __illumination)) _illumination)
  (:windspeed
   (&optional __windspeed)
   (if __windspeed (setq _windspeed __windspeed)) _windspeed)
  (:winddirection
   (&optional __winddirection)
   (if __winddirection (setq _winddirection __winddirection)) _winddirection)
  (:rainorsnow
   (&optional __rainorsnow)
   (if __rainorsnow (setq _rainorsnow __rainorsnow)) _rainorsnow)
  (:serialization-length
   ()
   (+
    ;; int32 _pressure
    4
    ;; int32 _temperature
    4
    ;; int32 _humidity
    4
    ;; int32 _illumination
    4
    ;; int32 _windspeed
    4
    ;; int32 _winddirection
    4
    ;; int32 _rainorsnow
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pressure
       (write-long _pressure s)
     ;; int32 _temperature
       (write-long _temperature s)
     ;; int32 _humidity
       (write-long _humidity s)
     ;; int32 _illumination
       (write-long _illumination s)
     ;; int32 _windspeed
       (write-long _windspeed s)
     ;; int32 _winddirection
       (write-long _winddirection s)
     ;; int32 _rainorsnow
       (write-long _rainorsnow s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pressure
     (setq _pressure (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _temperature
     (setq _temperature (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _humidity
     (setq _humidity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _illumination
     (setq _illumination (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _windspeed
     (setq _windspeed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _winddirection
     (setq _winddirection (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rainorsnow
     (setq _rainorsnow (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yidamsg::OriginWeather :md5sum-) "f8f36e3f2096377d234886a58cfe782a")
(setf (get yidamsg::OriginWeather :datatype-) "yidamsg/OriginWeather")
(setf (get yidamsg::OriginWeather :definition-)
      "int32 pressure
int32 temperature
int32 humidity
int32 illumination
int32 windspeed
int32 winddirection
int32 rainorsnow

")



(provide :yidamsg/OriginWeather "f8f36e3f2096377d234886a58cfe782a")


