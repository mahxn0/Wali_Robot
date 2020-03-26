// Generated by gencpp from file yidamsg/Object_Recognition.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_OBJECT_RECOGNITION_H
#define YIDAMSG_MESSAGE_OBJECT_RECOGNITION_H

#include <ros/service_traits.h>


#include <yidamsg/Object_RecognitionRequest.h>
#include <yidamsg/Object_RecognitionResponse.h>


namespace yidamsg
{

struct Object_Recognition
{

typedef Object_RecognitionRequest Request;
typedef Object_RecognitionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Object_Recognition
} // namespace yidamsg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::yidamsg::Object_Recognition > {
  static const char* value()
  {
    return "0304abb62c1d15138b7d0bfcf0865362";
  }

  static const char* value(const ::yidamsg::Object_Recognition&) { return value(); }
};

template<>
struct DataType< ::yidamsg::Object_Recognition > {
  static const char* value()
  {
    return "yidamsg/Object_Recognition";
  }

  static const char* value(const ::yidamsg::Object_Recognition&) { return value(); }
};


// service_traits::MD5Sum< ::yidamsg::Object_RecognitionRequest> should match 
// service_traits::MD5Sum< ::yidamsg::Object_Recognition > 
template<>
struct MD5Sum< ::yidamsg::Object_RecognitionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::yidamsg::Object_Recognition >::value();
  }
  static const char* value(const ::yidamsg::Object_RecognitionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::yidamsg::Object_RecognitionRequest> should match 
// service_traits::DataType< ::yidamsg::Object_Recognition > 
template<>
struct DataType< ::yidamsg::Object_RecognitionRequest>
{
  static const char* value()
  {
    return DataType< ::yidamsg::Object_Recognition >::value();
  }
  static const char* value(const ::yidamsg::Object_RecognitionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::yidamsg::Object_RecognitionResponse> should match 
// service_traits::MD5Sum< ::yidamsg::Object_Recognition > 
template<>
struct MD5Sum< ::yidamsg::Object_RecognitionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::yidamsg::Object_Recognition >::value();
  }
  static const char* value(const ::yidamsg::Object_RecognitionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::yidamsg::Object_RecognitionResponse> should match 
// service_traits::DataType< ::yidamsg::Object_Recognition > 
template<>
struct DataType< ::yidamsg::Object_RecognitionResponse>
{
  static const char* value()
  {
    return DataType< ::yidamsg::Object_Recognition >::value();
  }
  static const char* value(const ::yidamsg::Object_RecognitionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // YIDAMSG_MESSAGE_OBJECT_RECOGNITION_H