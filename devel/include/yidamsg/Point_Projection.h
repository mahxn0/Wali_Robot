// Generated by gencpp from file yidamsg/Point_Projection.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_POINT_PROJECTION_H
#define YIDAMSG_MESSAGE_POINT_PROJECTION_H

#include <ros/service_traits.h>


#include <yidamsg/Point_ProjectionRequest.h>
#include <yidamsg/Point_ProjectionResponse.h>


namespace yidamsg
{

struct Point_Projection
{

typedef Point_ProjectionRequest Request;
typedef Point_ProjectionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Point_Projection
} // namespace yidamsg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::yidamsg::Point_Projection > {
  static const char* value()
  {
    return "e1bcbee91e599262133249ba6a7c9a32";
  }

  static const char* value(const ::yidamsg::Point_Projection&) { return value(); }
};

template<>
struct DataType< ::yidamsg::Point_Projection > {
  static const char* value()
  {
    return "yidamsg/Point_Projection";
  }

  static const char* value(const ::yidamsg::Point_Projection&) { return value(); }
};


// service_traits::MD5Sum< ::yidamsg::Point_ProjectionRequest> should match 
// service_traits::MD5Sum< ::yidamsg::Point_Projection > 
template<>
struct MD5Sum< ::yidamsg::Point_ProjectionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::yidamsg::Point_Projection >::value();
  }
  static const char* value(const ::yidamsg::Point_ProjectionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::yidamsg::Point_ProjectionRequest> should match 
// service_traits::DataType< ::yidamsg::Point_Projection > 
template<>
struct DataType< ::yidamsg::Point_ProjectionRequest>
{
  static const char* value()
  {
    return DataType< ::yidamsg::Point_Projection >::value();
  }
  static const char* value(const ::yidamsg::Point_ProjectionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::yidamsg::Point_ProjectionResponse> should match 
// service_traits::MD5Sum< ::yidamsg::Point_Projection > 
template<>
struct MD5Sum< ::yidamsg::Point_ProjectionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::yidamsg::Point_Projection >::value();
  }
  static const char* value(const ::yidamsg::Point_ProjectionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::yidamsg::Point_ProjectionResponse> should match 
// service_traits::DataType< ::yidamsg::Point_Projection > 
template<>
struct DataType< ::yidamsg::Point_ProjectionResponse>
{
  static const char* value()
  {
    return DataType< ::yidamsg::Point_Projection >::value();
  }
  static const char* value(const ::yidamsg::Point_ProjectionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // YIDAMSG_MESSAGE_POINT_PROJECTION_H