cmake_minimum_required(VERSION 2.8.3)
project(webcam)
#SET(CMAKE_MODULE_PATH
#  ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmakeFindModules)
LIST(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmakeFindModules)

set(OpenCV_LIBS "/home/mahxn0/opencv-3.4.0/build/lib")
set(OpenCV_DIR "/home/mahxn0/opencv-3.4.0/build")
set(OpenCV_INCLUDE_DIRS "/home/mahxn0/opencv-3.4.0/include")

set(JPEG_LIBRARIES "/home/mahxn0/anaconda3/pkgs/jpeg-8d-2/lib/libjpeg.so")
set(JPEG_INCLUDE_DIR "/home/mahxn0/anaconda3/pkgs/jpeg-8d-2/include/*.h")
find_package( OpenCV 3.4.0 REQUIRED )

find_package(OpenGL REQUIRED)
find_package(GLUT REQUIRED)
#find_package(Glew REQUIRED)
#find_package(JPEG REQUIRED)


find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  yidamsg
  cv_bridge
  image_transport
  #compressed_image_transport
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES beginner_tutorials
#  CATKIN_DEPENDS roscpp rospy std_msgs
#  DEPENDS system_lib
)
# SiftGPU：手动设置其头文件与库文件所在位置
include_directories(${OpenGL_INCLUDE_DIR} ${PROJECT_SOURCE_DIR}/include ${catkin_INCLUDE_DIRS} ${JPEG_INCLUDE_DIR})
#set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)
#set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)


add_executable(webcam_node src/main.cpp )
target_link_libraries(webcam_node
    ${OpenCV_LIBS}
    ${GLEW_LIBRARY} 
    ${GLUT_LIBRARIES}
    ${OPENGL_LIBRARIES}
    ${JPEG_LIBRARIES}
    ${CORE_LIBRARY} 
    ${catkin_LIBRARIES}
)


