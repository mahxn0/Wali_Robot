// Generated by gencpp from file yidamsg/CameraChange.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_CAMERACHANGE_H
#define YIDAMSG_MESSAGE_CAMERACHANGE_H

#include <ros/service_traits.h>


#include <yidamsg/CameraChangeRequest.h>
#include <yidamsg/CameraChangeResponse.h>


namespace yidamsg
{

struct CameraChange
{

typedef CameraChangeRequest Request;
typedef CameraChangeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CameraChange
} // namespace yidamsg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::yidamsg::CameraChange > {
  static const char* value()
  {
    return "1ec93149d55d1527cff5331cb7a5fe0a";
  }

  static const char* value(const ::yidamsg::CameraChange&) { return value(); }
};

template<>
struct DataType< ::yidamsg::CameraChange > {
  static const char* value()
  {
    return "yidamsg/CameraChange";
  }

  static const char* value(const ::yidamsg::CameraChange&) { return value(); }
};


// service_traits::MD5Sum< ::yidamsg::CameraChangeRequest> should match 
// service_traits::MD5Sum< ::yidamsg::CameraChange > 
template<>
struct MD5Sum< ::yidamsg::CameraChangeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::yidamsg::CameraChange >::value();
  }
  static const char* value(const ::yidamsg::CameraChangeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::yidamsg::CameraChangeRequest> should match 
// service_traits::DataType< ::yidamsg::CameraChange > 
template<>
struct DataType< ::yidamsg::CameraChangeRequest>
{
  static const char* value()
  {
    return DataType< ::yidamsg::CameraChange >::value();
  }
  static const char* value(const ::yidamsg::CameraChangeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::yidamsg::CameraChangeResponse> should match 
// service_traits::MD5Sum< ::yidamsg::CameraChange > 
template<>
struct MD5Sum< ::yidamsg::CameraChangeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::yidamsg::CameraChange >::value();
  }
  static const char* value(const ::yidamsg::CameraChangeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::yidamsg::CameraChangeResponse> should match 
// service_traits::DataType< ::yidamsg::CameraChange > 
template<>
struct DataType< ::yidamsg::CameraChangeResponse>
{
  static const char* value()
  {
    return DataType< ::yidamsg::CameraChange >::value();
  }
  static const char* value(const ::yidamsg::CameraChangeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // YIDAMSG_MESSAGE_CAMERACHANGE_H
