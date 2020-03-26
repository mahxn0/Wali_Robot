// Generated by gencpp from file yidamsg/Observe.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_OBSERVE_H
#define YIDAMSG_MESSAGE_OBSERVE_H

#include <ros/service_traits.h>


#include <yidamsg/ObserveRequest.h>
#include <yidamsg/ObserveResponse.h>


namespace yidamsg
{

struct Observe
{

typedef ObserveRequest Request;
typedef ObserveResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Observe
} // namespace yidamsg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::yidamsg::Observe > {
  static const char* value()
  {
    return "c4427e54c9720d51c72d87bfd85f52ac";
  }

  static const char* value(const ::yidamsg::Observe&) { return value(); }
};

template<>
struct DataType< ::yidamsg::Observe > {
  static const char* value()
  {
    return "yidamsg/Observe";
  }

  static const char* value(const ::yidamsg::Observe&) { return value(); }
};


// service_traits::MD5Sum< ::yidamsg::ObserveRequest> should match 
// service_traits::MD5Sum< ::yidamsg::Observe > 
template<>
struct MD5Sum< ::yidamsg::ObserveRequest>
{
  static const char* value()
  {
    return MD5Sum< ::yidamsg::Observe >::value();
  }
  static const char* value(const ::yidamsg::ObserveRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::yidamsg::ObserveRequest> should match 
// service_traits::DataType< ::yidamsg::Observe > 
template<>
struct DataType< ::yidamsg::ObserveRequest>
{
  static const char* value()
  {
    return DataType< ::yidamsg::Observe >::value();
  }
  static const char* value(const ::yidamsg::ObserveRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::yidamsg::ObserveResponse> should match 
// service_traits::MD5Sum< ::yidamsg::Observe > 
template<>
struct MD5Sum< ::yidamsg::ObserveResponse>
{
  static const char* value()
  {
    return MD5Sum< ::yidamsg::Observe >::value();
  }
  static const char* value(const ::yidamsg::ObserveResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::yidamsg::ObserveResponse> should match 
// service_traits::DataType< ::yidamsg::Observe > 
template<>
struct DataType< ::yidamsg::ObserveResponse>
{
  static const char* value()
  {
    return DataType< ::yidamsg::Observe >::value();
  }
  static const char* value(const ::yidamsg::ObserveResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // YIDAMSG_MESSAGE_OBSERVE_H
