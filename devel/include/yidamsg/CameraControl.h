// Generated by gencpp from file yidamsg/CameraControl.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_CAMERACONTROL_H
#define YIDAMSG_MESSAGE_CAMERACONTROL_H

#include <ros/service_traits.h>


#include <yidamsg/CameraControlRequest.h>
#include <yidamsg/CameraControlResponse.h>


namespace yidamsg
{

struct CameraControl
{

typedef CameraControlRequest Request;
typedef CameraControlResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CameraControl
} // namespace yidamsg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::yidamsg::CameraControl > {
  static const char* value()
  {
    return "291785b183a47905a91e359c078b67b2";
  }

  static const char* value(const ::yidamsg::CameraControl&) { return value(); }
};

template<>
struct DataType< ::yidamsg::CameraControl > {
  static const char* value()
  {
    return "yidamsg/CameraControl";
  }

  static const char* value(const ::yidamsg::CameraControl&) { return value(); }
};


// service_traits::MD5Sum< ::yidamsg::CameraControlRequest> should match 
// service_traits::MD5Sum< ::yidamsg::CameraControl > 
template<>
struct MD5Sum< ::yidamsg::CameraControlRequest>
{
  static const char* value()
  {
    return MD5Sum< ::yidamsg::CameraControl >::value();
  }
  static const char* value(const ::yidamsg::CameraControlRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::yidamsg::CameraControlRequest> should match 
// service_traits::DataType< ::yidamsg::CameraControl > 
template<>
struct DataType< ::yidamsg::CameraControlRequest>
{
  static const char* value()
  {
    return DataType< ::yidamsg::CameraControl >::value();
  }
  static const char* value(const ::yidamsg::CameraControlRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::yidamsg::CameraControlResponse> should match 
// service_traits::MD5Sum< ::yidamsg::CameraControl > 
template<>
struct MD5Sum< ::yidamsg::CameraControlResponse>
{
  static const char* value()
  {
    return MD5Sum< ::yidamsg::CameraControl >::value();
  }
  static const char* value(const ::yidamsg::CameraControlResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::yidamsg::CameraControlResponse> should match 
// service_traits::DataType< ::yidamsg::CameraControl > 
template<>
struct DataType< ::yidamsg::CameraControlResponse>
{
  static const char* value()
  {
    return DataType< ::yidamsg::CameraControl >::value();
  }
  static const char* value(const ::yidamsg::CameraControlResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // YIDAMSG_MESSAGE_CAMERACONTROL_H