#include<iostream>
#include<stdio.h>
#include<cstdlib>
#include "ros/ros.h"
#include "image_transport/image_transport.h"
#include "cv_bridge/cv_bridge.h"

#include <unistd.h>
#include <opencv2/opencv.hpp>
#include "jpeglib.h"
#include "jerror.h"
#include <setjmp.h>
#include<pthread.h>
#include<time.h>
#include <jpeglib.h>

using namespace std;
using namespace cv;

image_transport::Publisher pub;

int main(int argc, char **argv)  
{  
    ros::init(argc, argv, argv[3]);
    ros::NodeHandle n;
    ros::Rate loop_rate(10);
    image_transport::ImageTransport it(n);
    pub = it.advertise(argv[2], 1);
    
    int id = int(argv[1][0] - '0');  
    CvCapture *camera = cvCaptureFromCAM(id);  
    if(NULL == camera)
    {  
	cout <<"Open camera failed"<<endl;  
	return 0;
    }     
    cvSetCaptureProperty(camera , CV_CAP_PROP_FRAME_WIDTH , 1280);  
    cvSetCaptureProperty(camera , CV_CAP_PROP_FRAME_HEIGHT , 720);  
    while(1)
    {  
	IplImage * img = cvQueryFrame(camera); 
	Mat image, im;
	image = cvarrToMat(img);
	resize(image, im, Size(640, 480)); 
	sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", image).toImageMsg();
	pub.publish(msg);
        loop_rate.sleep();
	imshow("webcam",im);  
	waitKey(1);  
    }  
//     VideoCapture cap(1);  
//     cap.set(CV_CAP_PROP_FRAME_WIDTH, 1080);
//     cap.set(CV_CAP_PROP_FRAME_WIDTH, 720);
//     if (!cap.isOpened())  
//     {  
// 	cerr << "webCam could't be opened successfully" << endl;  
// 	return EXIT_FAILURE;  
//     }  
//    
//     namedWindow("webcam"); 
//     while (char(waitKey(1)) != 'q'&&cap.isOpened())  
//     while (char(waitKey(1)) != 'q')  
//     {  
// 
// 	Mat frame;  
// 	cap >> frame;  
// 	if (frame.empty())  
// 	{  
// 	    cout << "Video over" << endl;  
// 	    break;  
// 	}  
// 	imshow("webcam", frame);  
//     }  
    return 0;  
}  
  
