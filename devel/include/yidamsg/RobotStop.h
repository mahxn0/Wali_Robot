// Generated by gencpp from file yidamsg/RobotStop.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_ROBOTSTOP_H
#define YIDAMSG_MESSAGE_ROBOTSTOP_H

#include <ros/service_traits.h>


#include <yidamsg/RobotStopRequest.h>
#include <yidamsg/RobotStopResponse.h>


namespace yidamsg
{

struct RobotStop
{

typedef RobotStopRequest Request;
typedef RobotStopResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct RobotStop
} // namespace yidamsg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::yidamsg::RobotStop > {
  static const char* value()
  {
    return "fa5b653280beb40079fadd2d89b1b31e";
  }

  static const char* value(const ::yidamsg::RobotStop&) { return value(); }
};

template<>
struct DataType< ::yidamsg::RobotStop > {
  static const char* value()
  {
    return "yidamsg/RobotStop";
  }

  static const char* value(const ::yidamsg::RobotStop&) { return value(); }
};


// service_traits::MD5Sum< ::yidamsg::RobotStopRequest> should match 
// service_traits::MD5Sum< ::yidamsg::RobotStop > 
template<>
struct MD5Sum< ::yidamsg::RobotStopRequest>
{
  static const char* value()
  {
    return MD5Sum< ::yidamsg::RobotStop >::value();
  }
  static const char* value(const ::yidamsg::RobotStopRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::yidamsg::RobotStopRequest> should match 
// service_traits::DataType< ::yidamsg::RobotStop > 
template<>
struct DataType< ::yidamsg::RobotStopRequest>
{
  static const char* value()
  {
    return DataType< ::yidamsg::RobotStop >::value();
  }
  static const char* value(const ::yidamsg::RobotStopRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::yidamsg::RobotStopResponse> should match 
// service_traits::MD5Sum< ::yidamsg::RobotStop > 
template<>
struct MD5Sum< ::yidamsg::RobotStopResponse>
{
  static const char* value()
  {
    return MD5Sum< ::yidamsg::RobotStop >::value();
  }
  static const char* value(const ::yidamsg::RobotStopResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::yidamsg::RobotStopResponse> should match 
// service_traits::DataType< ::yidamsg::RobotStop > 
template<>
struct DataType< ::yidamsg::RobotStopResponse>
{
  static const char* value()
  {
    return DataType< ::yidamsg::RobotStop >::value();
  }
  static const char* value(const ::yidamsg::RobotStopResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // YIDAMSG_MESSAGE_ROBOTSTOP_H
