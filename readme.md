## 代码说明:
### 依赖环境安装
- python3.5,python3.6(其它python版本未测试)
- [安装siammask](https://github.com/foolwood/SiamMask)
- [安装insightface](https://github.com/deepinsight/insightface)

### 代码目录说明
- Wali_Detect为行人检测模型和代码
- Wali_Face为人脸识别模型和代码
- Wali_Openpose为人体姿态估计模型和代码
- Wali_Reid为行人重识别代码和模型
- Wali_Track为行人跟踪代码和模型
### 代码说明
deploy文件夹:
- 人脸注册代码detectandsave.py:
    FaceFeaturePath为保存的特征文件
    注册过程中先输入id,默认取当前画面中最大的人脸为该id对应的特征,按s注册,注册成功后提示"register success",按q退出
- 人脸识别代码:
    detectandrecog_retinaface_yolov3.py
- 行人检测人脸识别,reid跟踪逻辑代码:detectandrecog_v3.py
    
- 模型下载地址:[下载链接](https://pan.baidu.com/s/1SHim2jMcv34cBYuM3_n4WA)  提取码: rukn



