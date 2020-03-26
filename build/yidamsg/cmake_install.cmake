# Install script for directory: /home/mahxn0/catkin_ws/src/yidamsg

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mahxn0/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yidamsg/msg" TYPE FILE FILES
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/AHRS_data.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/battery.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/CaptureImage.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/cradle.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/DemoResult.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/Detect_Result.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/fuzzy_task.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/GPS_data.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/guidao.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/home.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/image.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_data.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_ID.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/Image_road.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/ImageTest.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedImage.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResult.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/LiveImage.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/Log.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/MonitorPoint.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/motor_control.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/OriginWeather.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/PreImage.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/road_dis.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_2d_position.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_3d_position.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/Roi_cam.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/take_photo.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_list.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_status.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/task_stop.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/ultrasound.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/Yida_pose.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/fly_ctl.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/cut.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/transfer.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/car_status.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_control.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_preset_control.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/yuntai_reset_control.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskDeliver.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskExecuteStatus.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/UrgencyTask.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/ControlMode.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/TaskControlStatus.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/DBTableUpdate.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/InspectedResultWeb.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/taskPlanStatus.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_wakeup.msg"
    "/home/mahxn0/catkin_ws/src/yidamsg/msg/walle_speech_recognition.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yidamsg/srv" TYPE FILE FILES
    "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraControl.srv"
    "/home/mahxn0/catkin_ws/src/yidamsg/srv/Object_Recognition.srv"
    "/home/mahxn0/catkin_ws/src/yidamsg/srv/Observe.srv"
    "/home/mahxn0/catkin_ws/src/yidamsg/srv/Point_Projection.srv"
    "/home/mahxn0/catkin_ws/src/yidamsg/srv/CameraChange.srv"
    "/home/mahxn0/catkin_ws/src/yidamsg/srv/GetBattery.srv"
    "/home/mahxn0/catkin_ws/src/yidamsg/srv/GoHouse.srv"
    "/home/mahxn0/catkin_ws/src/yidamsg/srv/isInAutoCharger.srv"
    "/home/mahxn0/catkin_ws/src/yidamsg/srv/OutHouse.srv"
    "/home/mahxn0/catkin_ws/src/yidamsg/srv/ControlDoor.srv"
    "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskList.srv"
    "/home/mahxn0/catkin_ws/src/yidamsg/srv/RobotStop.srv"
    "/home/mahxn0/catkin_ws/src/yidamsg/srv/Flirone.srv"
    "/home/mahxn0/catkin_ws/src/yidamsg/srv/TaskControl.srv"
    "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_play_audio.srv"
    "/home/mahxn0/catkin_ws/src/yidamsg/srv/walle_audio_broadcase.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yidamsg/cmake" TYPE FILE FILES "/home/mahxn0/catkin_ws/build/yidamsg/catkin_generated/installspace/yidamsg-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mahxn0/catkin_ws/devel/include/yidamsg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mahxn0/catkin_ws/devel/share/roseus/ros/yidamsg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mahxn0/catkin_ws/devel/share/common-lisp/ros/yidamsg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mahxn0/catkin_ws/devel/share/gennodejs/ros/yidamsg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/home/mahxn0/anaconda3/bin/python" -m compileall "/home/mahxn0/catkin_ws/devel/lib/python3/dist-packages/yidamsg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/mahxn0/catkin_ws/devel/lib/python3/dist-packages/yidamsg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mahxn0/catkin_ws/build/yidamsg/catkin_generated/installspace/yidamsg.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yidamsg/cmake" TYPE FILE FILES "/home/mahxn0/catkin_ws/build/yidamsg/catkin_generated/installspace/yidamsg-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yidamsg/cmake" TYPE FILE FILES
    "/home/mahxn0/catkin_ws/build/yidamsg/catkin_generated/installspace/yidamsgConfig.cmake"
    "/home/mahxn0/catkin_ws/build/yidamsg/catkin_generated/installspace/yidamsgConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yidamsg" TYPE FILE FILES "/home/mahxn0/catkin_ws/src/yidamsg/package.xml")
endif()

