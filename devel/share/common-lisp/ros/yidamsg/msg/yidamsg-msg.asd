
(cl:in-package :asdf)

(defsystem "yidamsg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "AHRS_data" :depends-on ("_package_AHRS_data"))
    (:file "_package_AHRS_data" :depends-on ("_package"))
    (:file "Camera_Control" :depends-on ("_package_Camera_Control"))
    (:file "_package_Camera_Control" :depends-on ("_package"))
    (:file "CaptureImage" :depends-on ("_package_CaptureImage"))
    (:file "_package_CaptureImage" :depends-on ("_package"))
    (:file "ControlMode" :depends-on ("_package_ControlMode"))
    (:file "_package_ControlMode" :depends-on ("_package"))
    (:file "DBTableUpdate" :depends-on ("_package_DBTableUpdate"))
    (:file "_package_DBTableUpdate" :depends-on ("_package"))
    (:file "DemoResult" :depends-on ("_package_DemoResult"))
    (:file "_package_DemoResult" :depends-on ("_package"))
    (:file "Detect_Result" :depends-on ("_package_Detect_Result"))
    (:file "_package_Detect_Result" :depends-on ("_package"))
    (:file "GPS_data" :depends-on ("_package_GPS_data"))
    (:file "_package_GPS_data" :depends-on ("_package"))
    (:file "IMU_data" :depends-on ("_package_IMU_data"))
    (:file "_package_IMU_data" :depends-on ("_package"))
    (:file "ImageTest" :depends-on ("_package_ImageTest"))
    (:file "_package_ImageTest" :depends-on ("_package"))
    (:file "Image_ID" :depends-on ("_package_Image_ID"))
    (:file "_package_Image_ID" :depends-on ("_package"))
    (:file "Image_data" :depends-on ("_package_Image_data"))
    (:file "_package_Image_data" :depends-on ("_package"))
    (:file "Image_road" :depends-on ("_package_Image_road"))
    (:file "_package_Image_road" :depends-on ("_package"))
    (:file "InspectedImage" :depends-on ("_package_InspectedImage"))
    (:file "_package_InspectedImage" :depends-on ("_package"))
    (:file "InspectedResult" :depends-on ("_package_InspectedResult"))
    (:file "_package_InspectedResult" :depends-on ("_package"))
    (:file "InspectedResultWeb" :depends-on ("_package_InspectedResultWeb"))
    (:file "_package_InspectedResultWeb" :depends-on ("_package"))
    (:file "LiveImage" :depends-on ("_package_LiveImage"))
    (:file "_package_LiveImage" :depends-on ("_package"))
    (:file "Log" :depends-on ("_package_Log"))
    (:file "_package_Log" :depends-on ("_package"))
    (:file "MonitorPoint" :depends-on ("_package_MonitorPoint"))
    (:file "_package_MonitorPoint" :depends-on ("_package"))
    (:file "Obstacle_laser" :depends-on ("_package_Obstacle_laser"))
    (:file "_package_Obstacle_laser" :depends-on ("_package"))
    (:file "Offset_mid_road" :depends-on ("_package_Offset_mid_road"))
    (:file "_package_Offset_mid_road" :depends-on ("_package"))
    (:file "Offset_side_laser" :depends-on ("_package_Offset_side_laser"))
    (:file "_package_Offset_side_laser" :depends-on ("_package"))
    (:file "OriginWeather" :depends-on ("_package_OriginWeather"))
    (:file "_package_OriginWeather" :depends-on ("_package"))
    (:file "PreImage" :depends-on ("_package_PreImage"))
    (:file "_package_PreImage" :depends-on ("_package"))
    (:file "Roi_2d" :depends-on ("_package_Roi_2d"))
    (:file "_package_Roi_2d" :depends-on ("_package"))
    (:file "Roi_2d_position" :depends-on ("_package_Roi_2d_position"))
    (:file "_package_Roi_2d_position" :depends-on ("_package"))
    (:file "Roi_3d_position" :depends-on ("_package_Roi_3d_position"))
    (:file "_package_Roi_3d_position" :depends-on ("_package"))
    (:file "Roi_cam" :depends-on ("_package_Roi_cam"))
    (:file "_package_Roi_cam" :depends-on ("_package"))
    (:file "SLAM_Reset" :depends-on ("_package_SLAM_Reset"))
    (:file "_package_SLAM_Reset" :depends-on ("_package"))
    (:file "TaskControlStatus" :depends-on ("_package_TaskControlStatus"))
    (:file "_package_TaskControlStatus" :depends-on ("_package"))
    (:file "TaskDeliver" :depends-on ("_package_TaskDeliver"))
    (:file "_package_TaskDeliver" :depends-on ("_package"))
    (:file "TaskExecuteStatus" :depends-on ("_package_TaskExecuteStatus"))
    (:file "_package_TaskExecuteStatus" :depends-on ("_package"))
    (:file "TaskPlan" :depends-on ("_package_TaskPlan"))
    (:file "_package_TaskPlan" :depends-on ("_package"))
    (:file "UrgencyTask" :depends-on ("_package_UrgencyTask"))
    (:file "_package_UrgencyTask" :depends-on ("_package"))
    (:file "Vel_data" :depends-on ("_package_Vel_data"))
    (:file "_package_Vel_data" :depends-on ("_package"))
    (:file "Yida_pose" :depends-on ("_package_Yida_pose"))
    (:file "_package_Yida_pose" :depends-on ("_package"))
    (:file "battery" :depends-on ("_package_battery"))
    (:file "_package_battery" :depends-on ("_package"))
    (:file "car_status" :depends-on ("_package_car_status"))
    (:file "_package_car_status" :depends-on ("_package"))
    (:file "cradle" :depends-on ("_package_cradle"))
    (:file "_package_cradle" :depends-on ("_package"))
    (:file "cut" :depends-on ("_package_cut"))
    (:file "_package_cut" :depends-on ("_package"))
    (:file "direction_control" :depends-on ("_package_direction_control"))
    (:file "_package_direction_control" :depends-on ("_package"))
    (:file "fly_ctl" :depends-on ("_package_fly_ctl"))
    (:file "_package_fly_ctl" :depends-on ("_package"))
    (:file "fuzzy_task" :depends-on ("_package_fuzzy_task"))
    (:file "_package_fuzzy_task" :depends-on ("_package"))
    (:file "guidao" :depends-on ("_package_guidao"))
    (:file "_package_guidao" :depends-on ("_package"))
    (:file "home" :depends-on ("_package_home"))
    (:file "_package_home" :depends-on ("_package"))
    (:file "image" :depends-on ("_package_image"))
    (:file "_package_image" :depends-on ("_package"))
    (:file "laser4h" :depends-on ("_package_laser4h"))
    (:file "_package_laser4h" :depends-on ("_package"))
    (:file "laser4h_data" :depends-on ("_package_laser4h_data"))
    (:file "_package_laser4h_data" :depends-on ("_package"))
    (:file "laser_2d" :depends-on ("_package_laser_2d"))
    (:file "_package_laser_2d" :depends-on ("_package"))
    (:file "laser_projection" :depends-on ("_package_laser_projection"))
    (:file "_package_laser_projection" :depends-on ("_package"))
    (:file "motor" :depends-on ("_package_motor"))
    (:file "_package_motor" :depends-on ("_package"))
    (:file "motor_control" :depends-on ("_package_motor_control"))
    (:file "_package_motor_control" :depends-on ("_package"))
    (:file "msg_laser4h_data" :depends-on ("_package_msg_laser4h_data"))
    (:file "_package_msg_laser4h_data" :depends-on ("_package"))
    (:file "quat2angle" :depends-on ("_package_quat2angle"))
    (:file "_package_quat2angle" :depends-on ("_package"))
    (:file "road_dis" :depends-on ("_package_road_dis"))
    (:file "_package_road_dis" :depends-on ("_package"))
    (:file "status_upload" :depends-on ("_package_status_upload"))
    (:file "_package_status_upload" :depends-on ("_package"))
    (:file "take_photo" :depends-on ("_package_take_photo"))
    (:file "_package_take_photo" :depends-on ("_package"))
    (:file "taskPlanStatus" :depends-on ("_package_taskPlanStatus"))
    (:file "_package_taskPlanStatus" :depends-on ("_package"))
    (:file "task_list" :depends-on ("_package_task_list"))
    (:file "_package_task_list" :depends-on ("_package"))
    (:file "task_status" :depends-on ("_package_task_status"))
    (:file "_package_task_status" :depends-on ("_package"))
    (:file "task_stop" :depends-on ("_package_task_stop"))
    (:file "_package_task_stop" :depends-on ("_package"))
    (:file "transfer" :depends-on ("_package_transfer"))
    (:file "_package_transfer" :depends-on ("_package"))
    (:file "ultrasound" :depends-on ("_package_ultrasound"))
    (:file "_package_ultrasound" :depends-on ("_package"))
    (:file "walle_audio_broadcase" :depends-on ("_package_walle_audio_broadcase"))
    (:file "_package_walle_audio_broadcase" :depends-on ("_package"))
    (:file "walle_speech_recognition" :depends-on ("_package_walle_speech_recognition"))
    (:file "_package_walle_speech_recognition" :depends-on ("_package"))
    (:file "walle_wakeup" :depends-on ("_package_walle_wakeup"))
    (:file "_package_walle_wakeup" :depends-on ("_package"))
    (:file "weather" :depends-on ("_package_weather"))
    (:file "_package_weather" :depends-on ("_package"))
    (:file "yuntai_control" :depends-on ("_package_yuntai_control"))
    (:file "_package_yuntai_control" :depends-on ("_package"))
    (:file "yuntai_preset_control" :depends-on ("_package_yuntai_preset_control"))
    (:file "_package_yuntai_preset_control" :depends-on ("_package"))
    (:file "yuntai_reset_control" :depends-on ("_package_yuntai_reset_control"))
    (:file "_package_yuntai_reset_control" :depends-on ("_package"))
  ))