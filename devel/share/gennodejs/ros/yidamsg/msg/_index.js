
"use strict";

let msg_laser4h_data = require('./msg_laser4h_data.js');
let fly_ctl = require('./fly_ctl.js');
let Vel_data = require('./Vel_data.js');
let Detect_Result = require('./Detect_Result.js');
let OriginWeather = require('./OriginWeather.js');
let walle_audio_broadcase = require('./walle_audio_broadcase.js');
let status_upload = require('./status_upload.js');
let motor_control = require('./motor_control.js');
let weather = require('./weather.js');
let Offset_mid_road = require('./Offset_mid_road.js');
let InspectedResultWeb = require('./InspectedResultWeb.js');
let quat2angle = require('./quat2angle.js');
let TaskPlan = require('./TaskPlan.js');
let task_list = require('./task_list.js');
let motor = require('./motor.js');
let task_stop = require('./task_stop.js');
let TaskExecuteStatus = require('./TaskExecuteStatus.js');
let TaskControlStatus = require('./TaskControlStatus.js');
let cut = require('./cut.js');
let Roi_2d_position = require('./Roi_2d_position.js');
let SLAM_Reset = require('./SLAM_Reset.js');
let Roi_2d = require('./Roi_2d.js');
let guidao = require('./guidao.js');
let ImageTest = require('./ImageTest.js');
let direction_control = require('./direction_control.js');
let walle_wakeup = require('./walle_wakeup.js');
let TaskDeliver = require('./TaskDeliver.js');
let Image_road = require('./Image_road.js');
let Offset_side_laser = require('./Offset_side_laser.js');
let laser4h = require('./laser4h.js');
let cradle = require('./cradle.js');
let laser_projection = require('./laser_projection.js');
let car_status = require('./car_status.js');
let Roi_3d_position = require('./Roi_3d_position.js');
let Camera_Control = require('./Camera_Control.js');
let ultrasound = require('./ultrasound.js');
let MonitorPoint = require('./MonitorPoint.js');
let Image_data = require('./Image_data.js');
let taskPlanStatus = require('./taskPlanStatus.js');
let Log = require('./Log.js');
let home = require('./home.js');
let LiveImage = require('./LiveImage.js');
let PreImage = require('./PreImage.js');
let laser_2d = require('./laser_2d.js');
let IMU_data = require('./IMU_data.js');
let yuntai_reset_control = require('./yuntai_reset_control.js');
let Obstacle_laser = require('./Obstacle_laser.js');
let fuzzy_task = require('./fuzzy_task.js');
let Roi_cam = require('./Roi_cam.js');
let GPS_data = require('./GPS_data.js');
let yuntai_preset_control = require('./yuntai_preset_control.js');
let DemoResult = require('./DemoResult.js');
let CaptureImage = require('./CaptureImage.js');
let laser4h_data = require('./laser4h_data.js');
let transfer = require('./transfer.js');
let walle_speech_recognition = require('./walle_speech_recognition.js');
let road_dis = require('./road_dis.js');
let battery = require('./battery.js');
let image = require('./image.js');
let InspectedImage = require('./InspectedImage.js');
let UrgencyTask = require('./UrgencyTask.js');
let yuntai_control = require('./yuntai_control.js');
let Yida_pose = require('./Yida_pose.js');
let InspectedResult = require('./InspectedResult.js');
let AHRS_data = require('./AHRS_data.js');
let take_photo = require('./take_photo.js');
let Image_ID = require('./Image_ID.js');
let ControlMode = require('./ControlMode.js');
let task_status = require('./task_status.js');
let DBTableUpdate = require('./DBTableUpdate.js');

module.exports = {
  msg_laser4h_data: msg_laser4h_data,
  fly_ctl: fly_ctl,
  Vel_data: Vel_data,
  Detect_Result: Detect_Result,
  OriginWeather: OriginWeather,
  walle_audio_broadcase: walle_audio_broadcase,
  status_upload: status_upload,
  motor_control: motor_control,
  weather: weather,
  Offset_mid_road: Offset_mid_road,
  InspectedResultWeb: InspectedResultWeb,
  quat2angle: quat2angle,
  TaskPlan: TaskPlan,
  task_list: task_list,
  motor: motor,
  task_stop: task_stop,
  TaskExecuteStatus: TaskExecuteStatus,
  TaskControlStatus: TaskControlStatus,
  cut: cut,
  Roi_2d_position: Roi_2d_position,
  SLAM_Reset: SLAM_Reset,
  Roi_2d: Roi_2d,
  guidao: guidao,
  ImageTest: ImageTest,
  direction_control: direction_control,
  walle_wakeup: walle_wakeup,
  TaskDeliver: TaskDeliver,
  Image_road: Image_road,
  Offset_side_laser: Offset_side_laser,
  laser4h: laser4h,
  cradle: cradle,
  laser_projection: laser_projection,
  car_status: car_status,
  Roi_3d_position: Roi_3d_position,
  Camera_Control: Camera_Control,
  ultrasound: ultrasound,
  MonitorPoint: MonitorPoint,
  Image_data: Image_data,
  taskPlanStatus: taskPlanStatus,
  Log: Log,
  home: home,
  LiveImage: LiveImage,
  PreImage: PreImage,
  laser_2d: laser_2d,
  IMU_data: IMU_data,
  yuntai_reset_control: yuntai_reset_control,
  Obstacle_laser: Obstacle_laser,
  fuzzy_task: fuzzy_task,
  Roi_cam: Roi_cam,
  GPS_data: GPS_data,
  yuntai_preset_control: yuntai_preset_control,
  DemoResult: DemoResult,
  CaptureImage: CaptureImage,
  laser4h_data: laser4h_data,
  transfer: transfer,
  walle_speech_recognition: walle_speech_recognition,
  road_dis: road_dis,
  battery: battery,
  image: image,
  InspectedImage: InspectedImage,
  UrgencyTask: UrgencyTask,
  yuntai_control: yuntai_control,
  Yida_pose: Yida_pose,
  InspectedResult: InspectedResult,
  AHRS_data: AHRS_data,
  take_photo: take_photo,
  Image_ID: Image_ID,
  ControlMode: ControlMode,
  task_status: task_status,
  DBTableUpdate: DBTableUpdate,
};
