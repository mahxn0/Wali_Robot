// Generated by gencpp from file yidamsg/FlironeRequest.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_FLIRONEREQUEST_H
#define YIDAMSG_MESSAGE_FLIRONEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace yidamsg
{
template <class ContainerAllocator>
struct FlironeRequest_
{
  typedef FlironeRequest_<ContainerAllocator> Type;

  FlironeRequest_()
    : x(0)
    , y(0)  {
    }
  FlironeRequest_(const ContainerAllocator& _alloc)
    : x(0)
    , y(0)  {
  (void)_alloc;
    }



   typedef int32_t _x_type;
  _x_type x;

   typedef int32_t _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::yidamsg::FlironeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::FlironeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct FlironeRequest_

typedef ::yidamsg::FlironeRequest_<std::allocator<void> > FlironeRequest;

typedef boost::shared_ptr< ::yidamsg::FlironeRequest > FlironeRequestPtr;
typedef boost::shared_ptr< ::yidamsg::FlironeRequest const> FlironeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::FlironeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::FlironeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace yidamsg

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsMessage': True, 'IsFixedSize': True, 'HasHeader': False}
// {'yidamsg': ['/home/mahxn0/catkin_ws/src/yidamsg/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsMessage< ::yidamsg::FlironeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::FlironeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::FlironeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::FlironeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::FlironeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::FlironeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::FlironeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd7b43fd41d4c47bf5c703cc7d016709";
  }

  static const char* value(const ::yidamsg::FlironeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbd7b43fd41d4c47bULL;
  static const uint64_t static_value2 = 0xf5c703cc7d016709ULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::FlironeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/FlironeRequest";
  }

  static const char* value(const ::yidamsg::FlironeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::FlironeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 x\n\
int32 y\n\
";
  }

  static const char* value(const ::yidamsg::FlironeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::FlironeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FlironeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::FlironeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::FlironeRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_FLIRONEREQUEST_H
