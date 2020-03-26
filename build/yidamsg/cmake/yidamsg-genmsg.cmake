# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "yidamsg: 51 messages, 16 services")

set(MSG_I_FLAGS "-Iyidamsg:/home/mahxn0/catkin_ws/src/yidamsg/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(yidamsg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/AHRS_data.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/AHRS_data.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/battery.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/battery.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/CaptureImage.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/CaptureImage.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/cradle.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/cradle.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/DemoResult.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/DemoResult.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Detect_Result.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/Detect_Result.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/fuzzy_task.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/fuzzy_task.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/GPS_data.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/GPS_data.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/guidao.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/guidao.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/home.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/home.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/image.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/image.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_data.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_data.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_ID.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_ID.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_road.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_road.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ImageTest.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/ImageTest.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedImage.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedImage.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResult.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResult.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/LiveImage.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/LiveImage.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Log.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/Log.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/MonitorPoint.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/MonitorPoint.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/motor_control.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/motor_control.msg" "geometry_msgs/Vector3:geometry_msgs/Twist"
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/OriginWeather.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/OriginWeather.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/PreImage.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/PreImage.msg" "std_msgs/Header:sensor_msgs/Image"
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/road_dis.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/road_dis.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d_position.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d_position.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_3d_position.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_3d_position.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_cam.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_cam.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/take_photo.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/take_photo.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_list.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_list.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_status.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_status.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_stop.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_stop.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ultrasound.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/ultrasound.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Yida_pose.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/Yida_pose.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/fly_ctl.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/fly_ctl.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/cut.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/cut.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/transfer.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/transfer.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/car_status.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/car_status.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_control.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_control.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_preset_control.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_preset_control.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_reset_control.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_reset_control.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskDeliver.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskDeliver.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskExecuteStatus.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskExecuteStatus.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/UrgencyTask.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/UrgencyTask.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ControlMode.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/ControlMode.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskControlStatus.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskControlStatus.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/DBTableUpdate.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/DBTableUpdate.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResultWeb.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResultWeb.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/taskPlanStatus.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/taskPlanStatus.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_wakeup.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_wakeup.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_speech_recognition.msg" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_speech_recognition.msg" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraControl.srv" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraControl.srv" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Object_Recognition.srv" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/srv/Object_Recognition.srv" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Observe.srv" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/srv/Observe.srv" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Point_Projection.srv" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/srv/Point_Projection.srv" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraChange.srv" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraChange.srv" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/GetBattery.srv" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/srv/GetBattery.srv" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/GoHouse.srv" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/srv/GoHouse.srv" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/isInAutoCharger.srv" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/srv/isInAutoCharger.srv" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/OutHouse.srv" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/srv/OutHouse.srv" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/ControlDoor.srv" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/srv/ControlDoor.srv" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskList.srv" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskList.srv" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/RobotStop.srv" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/srv/RobotStop.srv" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Flirone.srv" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/srv/Flirone.srv" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskControl.srv" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskControl.srv" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_play_audio.srv" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_play_audio.srv" ""
)

get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_audio_broadcase.srv" NAME_WE)
add_custom_target(_yidamsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yidamsg" "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_audio_broadcase.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/AHRS_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/CaptureImage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/cradle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/DemoResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Detect_Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/fuzzy_task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/GPS_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/guidao.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/home.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/image.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_ID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_road.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/ImageTest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedImage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/LiveImage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Log.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/MonitorPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/motor_control.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/OriginWeather.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/PreImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/road_dis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d_position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_3d_position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_cam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/take_photo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_list.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_stop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/ultrasound.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Yida_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/fly_ctl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/cut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/transfer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/car_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_preset_control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_reset_control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskDeliver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskExecuteStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/UrgencyTask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/ControlMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/DBTableUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResultWeb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/taskPlanStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_wakeup.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_msg_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_speech_recognition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)

### Generating Services
_generate_srv_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_srv_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Object_Recognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_srv_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Observe.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_srv_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Point_Projection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_srv_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraChange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_srv_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/GetBattery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_srv_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/GoHouse.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_srv_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/isInAutoCharger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_srv_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/OutHouse.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_srv_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/ControlDoor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_srv_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_srv_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/RobotStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_srv_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Flirone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_srv_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_srv_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_play_audio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)
_generate_srv_cpp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_audio_broadcase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
)

### Generating Module File
_generate_module_cpp(yidamsg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(yidamsg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(yidamsg_generate_messages yidamsg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/AHRS_data.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/battery.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/CaptureImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/cradle.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/DemoResult.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Detect_Result.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/fuzzy_task.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/GPS_data.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/guidao.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/home.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/image.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_data.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_ID.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_road.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ImageTest.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResult.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/LiveImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Log.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/MonitorPoint.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/motor_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/OriginWeather.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/PreImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/road_dis.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d_position.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_3d_position.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_cam.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/take_photo.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_list.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_status.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_stop.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ultrasound.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Yida_pose.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/fly_ctl.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/cut.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/transfer.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/car_status.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_preset_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_reset_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskDeliver.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskExecuteStatus.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/UrgencyTask.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ControlMode.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskControlStatus.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/DBTableUpdate.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResultWeb.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/taskPlanStatus.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_wakeup.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_speech_recognition.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraControl.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Object_Recognition.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Observe.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Point_Projection.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraChange.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/GetBattery.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/GoHouse.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/isInAutoCharger.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/OutHouse.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/ControlDoor.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskList.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/RobotStop.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Flirone.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskControl.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_play_audio.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_audio_broadcase.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_cpp _yidamsg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yidamsg_gencpp)
add_dependencies(yidamsg_gencpp yidamsg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yidamsg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/AHRS_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/CaptureImage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/cradle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/DemoResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Detect_Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/fuzzy_task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/GPS_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/guidao.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/home.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/image.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_ID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_road.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/ImageTest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedImage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/LiveImage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Log.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/MonitorPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/motor_control.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/OriginWeather.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/PreImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/road_dis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d_position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_3d_position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_cam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/take_photo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_list.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_stop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/ultrasound.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Yida_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/fly_ctl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/cut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/transfer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/car_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_preset_control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_reset_control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskDeliver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskExecuteStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/UrgencyTask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/ControlMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/DBTableUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResultWeb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/taskPlanStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_wakeup.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_msg_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_speech_recognition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)

### Generating Services
_generate_srv_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_srv_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Object_Recognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_srv_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Observe.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_srv_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Point_Projection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_srv_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraChange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_srv_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/GetBattery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_srv_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/GoHouse.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_srv_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/isInAutoCharger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_srv_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/OutHouse.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_srv_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/ControlDoor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_srv_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_srv_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/RobotStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_srv_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Flirone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_srv_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_srv_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_play_audio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)
_generate_srv_eus(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_audio_broadcase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
)

### Generating Module File
_generate_module_eus(yidamsg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(yidamsg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(yidamsg_generate_messages yidamsg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/AHRS_data.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/battery.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/CaptureImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/cradle.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/DemoResult.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Detect_Result.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/fuzzy_task.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/GPS_data.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/guidao.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/home.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/image.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_data.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_ID.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_road.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ImageTest.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResult.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/LiveImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Log.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/MonitorPoint.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/motor_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/OriginWeather.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/PreImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/road_dis.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d_position.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_3d_position.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_cam.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/take_photo.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_list.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_status.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_stop.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ultrasound.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Yida_pose.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/fly_ctl.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/cut.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/transfer.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/car_status.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_preset_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_reset_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskDeliver.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskExecuteStatus.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/UrgencyTask.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ControlMode.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskControlStatus.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/DBTableUpdate.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResultWeb.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/taskPlanStatus.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_wakeup.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_speech_recognition.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraControl.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Object_Recognition.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Observe.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Point_Projection.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraChange.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/GetBattery.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/GoHouse.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/isInAutoCharger.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/OutHouse.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/ControlDoor.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskList.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/RobotStop.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Flirone.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskControl.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_play_audio.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_audio_broadcase.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_eus _yidamsg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yidamsg_geneus)
add_dependencies(yidamsg_geneus yidamsg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yidamsg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/AHRS_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/CaptureImage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/cradle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/DemoResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Detect_Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/fuzzy_task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/GPS_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/guidao.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/home.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/image.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_ID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_road.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/ImageTest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedImage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/LiveImage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Log.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/MonitorPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/motor_control.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/OriginWeather.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/PreImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/road_dis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d_position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_3d_position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_cam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/take_photo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_list.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_stop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/ultrasound.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Yida_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/fly_ctl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/cut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/transfer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/car_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_preset_control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_reset_control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskDeliver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskExecuteStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/UrgencyTask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/ControlMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/DBTableUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResultWeb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/taskPlanStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_wakeup.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_msg_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_speech_recognition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)

### Generating Services
_generate_srv_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_srv_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Object_Recognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_srv_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Observe.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_srv_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Point_Projection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_srv_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraChange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_srv_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/GetBattery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_srv_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/GoHouse.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_srv_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/isInAutoCharger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_srv_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/OutHouse.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_srv_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/ControlDoor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_srv_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_srv_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/RobotStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_srv_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Flirone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_srv_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_srv_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_play_audio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)
_generate_srv_lisp(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_audio_broadcase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
)

### Generating Module File
_generate_module_lisp(yidamsg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(yidamsg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(yidamsg_generate_messages yidamsg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/AHRS_data.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/battery.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/CaptureImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/cradle.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/DemoResult.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Detect_Result.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/fuzzy_task.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/GPS_data.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/guidao.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/home.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/image.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_data.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_ID.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_road.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ImageTest.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResult.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/LiveImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Log.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/MonitorPoint.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/motor_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/OriginWeather.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/PreImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/road_dis.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d_position.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_3d_position.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_cam.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/take_photo.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_list.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_status.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_stop.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ultrasound.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Yida_pose.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/fly_ctl.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/cut.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/transfer.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/car_status.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_preset_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_reset_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskDeliver.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskExecuteStatus.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/UrgencyTask.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ControlMode.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskControlStatus.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/DBTableUpdate.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResultWeb.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/taskPlanStatus.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_wakeup.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_speech_recognition.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraControl.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Object_Recognition.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Observe.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Point_Projection.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraChange.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/GetBattery.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/GoHouse.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/isInAutoCharger.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/OutHouse.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/ControlDoor.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskList.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/RobotStop.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Flirone.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskControl.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_play_audio.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_audio_broadcase.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_lisp _yidamsg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yidamsg_genlisp)
add_dependencies(yidamsg_genlisp yidamsg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yidamsg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/AHRS_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/CaptureImage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/cradle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/DemoResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Detect_Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/fuzzy_task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/GPS_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/guidao.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/home.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/image.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_ID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_road.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/ImageTest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedImage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/LiveImage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Log.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/MonitorPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/motor_control.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/OriginWeather.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/PreImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/road_dis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d_position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_3d_position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_cam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/take_photo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_list.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_stop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/ultrasound.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Yida_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/fly_ctl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/cut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/transfer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/car_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_preset_control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_reset_control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskDeliver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskExecuteStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/UrgencyTask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/ControlMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/DBTableUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResultWeb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/taskPlanStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_wakeup.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_msg_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_speech_recognition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)

### Generating Services
_generate_srv_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_srv_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Object_Recognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_srv_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Observe.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_srv_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Point_Projection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_srv_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraChange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_srv_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/GetBattery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_srv_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/GoHouse.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_srv_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/isInAutoCharger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_srv_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/OutHouse.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_srv_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/ControlDoor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_srv_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_srv_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/RobotStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_srv_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Flirone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_srv_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_srv_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_play_audio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)
_generate_srv_nodejs(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_audio_broadcase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
)

### Generating Module File
_generate_module_nodejs(yidamsg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(yidamsg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(yidamsg_generate_messages yidamsg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/AHRS_data.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/battery.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/CaptureImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/cradle.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/DemoResult.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Detect_Result.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/fuzzy_task.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/GPS_data.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/guidao.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/home.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/image.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_data.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_ID.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_road.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ImageTest.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResult.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/LiveImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Log.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/MonitorPoint.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/motor_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/OriginWeather.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/PreImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/road_dis.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d_position.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_3d_position.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_cam.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/take_photo.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_list.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_status.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_stop.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ultrasound.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Yida_pose.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/fly_ctl.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/cut.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/transfer.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/car_status.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_preset_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_reset_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskDeliver.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskExecuteStatus.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/UrgencyTask.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ControlMode.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskControlStatus.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/DBTableUpdate.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResultWeb.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/taskPlanStatus.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_wakeup.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_speech_recognition.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraControl.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Object_Recognition.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Observe.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Point_Projection.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraChange.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/GetBattery.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/GoHouse.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/isInAutoCharger.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/OutHouse.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/ControlDoor.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskList.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/RobotStop.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Flirone.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskControl.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_play_audio.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_audio_broadcase.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_nodejs _yidamsg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yidamsg_gennodejs)
add_dependencies(yidamsg_gennodejs yidamsg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yidamsg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/AHRS_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/CaptureImage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/cradle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/DemoResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Detect_Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/fuzzy_task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/GPS_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/guidao.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/home.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/image.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_ID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_road.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/ImageTest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedImage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/LiveImage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Log.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/MonitorPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/motor_control.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/OriginWeather.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/PreImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/road_dis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d_position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_3d_position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_cam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/take_photo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_list.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_stop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/ultrasound.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/Yida_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/fly_ctl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/cut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/transfer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/car_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_preset_control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_reset_control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskDeliver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskExecuteStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/UrgencyTask.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/ControlMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/DBTableUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResultWeb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/taskPlanStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_wakeup.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_msg_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_speech_recognition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)

### Generating Services
_generate_srv_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_srv_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Object_Recognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_srv_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Observe.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_srv_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Point_Projection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_srv_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraChange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_srv_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/GetBattery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_srv_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/GoHouse.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_srv_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/isInAutoCharger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_srv_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/OutHouse.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_srv_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/ControlDoor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_srv_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_srv_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/RobotStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_srv_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/Flirone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_srv_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_srv_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_play_audio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)
_generate_srv_py(yidamsg
  "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_audio_broadcase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
)

### Generating Module File
_generate_module_py(yidamsg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(yidamsg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(yidamsg_generate_messages yidamsg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/AHRS_data.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/battery.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/CaptureImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/cradle.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/DemoResult.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Detect_Result.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/fuzzy_task.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/GPS_data.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/guidao.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/home.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/image.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_data.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_ID.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_road.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ImageTest.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResult.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/LiveImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Log.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/MonitorPoint.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/motor_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/OriginWeather.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/PreImage.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/road_dis.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d_position.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_3d_position.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_cam.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/take_photo.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_list.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_status.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_stop.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ultrasound.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/Yida_pose.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/fly_ctl.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/cut.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/transfer.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/car_status.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_preset_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_reset_control.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskDeliver.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskExecuteStatus.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/UrgencyTask.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/ControlMode.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskControlStatus.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/DBTableUpdate.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResultWeb.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/taskPlanStatus.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_wakeup.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_speech_recognition.msg" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraControl.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Object_Recognition.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Observe.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Point_Projection.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraChange.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/GetBattery.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/GoHouse.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/isInAutoCharger.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/OutHouse.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/ControlDoor.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskList.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/RobotStop.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/Flirone.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskControl.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_play_audio.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_audio_broadcase.srv" NAME_WE)
add_dependencies(yidamsg_generate_messages_py _yidamsg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yidamsg_genpy)
add_dependencies(yidamsg_genpy yidamsg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yidamsg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yidamsg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(yidamsg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(yidamsg_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(yidamsg_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yidamsg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(yidamsg_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(yidamsg_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(yidamsg_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yidamsg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(yidamsg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(yidamsg_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(yidamsg_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yidamsg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(yidamsg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(yidamsg_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(yidamsg_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg)
  install(CODE "execute_process(COMMAND \"/home/mahxn0/anaconda3/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yidamsg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(yidamsg_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(yidamsg_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(yidamsg_generate_messages_py sensor_msgs_generate_messages_py)
endif()
