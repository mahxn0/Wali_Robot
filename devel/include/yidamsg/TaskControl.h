// Generated by gencpp from file yidamsg/TaskControl.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_TASKCONTROL_H
#define YIDAMSG_MESSAGE_TASKCONTROL_H

#include <ros/service_traits.h>


#include <yidamsg/TaskControlRequest.h>
#include <yidamsg/TaskControlResponse.h>


namespace yidamsg
{

struct TaskControl
{

typedef TaskControlRequest Request;
typedef TaskControlResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TaskControl
} // namespace yidamsg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::yidamsg::TaskControl > {
  static const char* value()
  {
    return "703f20323013a67a9ef8aed4c09680ee";
  }

  static const char* value(const ::yidamsg::TaskControl&) { return value(); }
};

template<>
struct DataType< ::yidamsg::TaskControl > {
  static const char* value()
  {
    return "yidamsg/TaskControl";
  }

  static const char* value(const ::yidamsg::TaskControl&) { return value(); }
};


// service_traits::MD5Sum< ::yidamsg::TaskControlRequest> should match 
// service_traits::MD5Sum< ::yidamsg::TaskControl > 
template<>
struct MD5Sum< ::yidamsg::TaskControlRequest>
{
  static const char* value()
  {
    return MD5Sum< ::yidamsg::TaskControl >::value();
  }
  static const char* value(const ::yidamsg::TaskControlRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::yidamsg::TaskControlRequest> should match 
// service_traits::DataType< ::yidamsg::TaskControl > 
template<>
struct DataType< ::yidamsg::TaskControlRequest>
{
  static const char* value()
  {
    return DataType< ::yidamsg::TaskControl >::value();
  }
  static const char* value(const ::yidamsg::TaskControlRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::yidamsg::TaskControlResponse> should match 
// service_traits::MD5Sum< ::yidamsg::TaskControl > 
template<>
struct MD5Sum< ::yidamsg::TaskControlResponse>
{
  static const char* value()
  {
    return MD5Sum< ::yidamsg::TaskControl >::value();
  }
  static const char* value(const ::yidamsg::TaskControlResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::yidamsg::TaskControlResponse> should match 
// service_traits::DataType< ::yidamsg::TaskControl > 
template<>
struct DataType< ::yidamsg::TaskControlResponse>
{
  static const char* value()
  {
    return DataType< ::yidamsg::TaskControl >::value();
  }
  static const char* value(const ::yidamsg::TaskControlResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // YIDAMSG_MESSAGE_TASKCONTROL_H