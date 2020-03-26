// Generated by gencpp from file yidamsg/GetBatteryResponse.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_GETBATTERYRESPONSE_H
#define YIDAMSG_MESSAGE_GETBATTERYRESPONSE_H


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
struct GetBatteryResponse_
{
  typedef GetBatteryResponse_<ContainerAllocator> Type;

  GetBatteryResponse_()
    : battery(0)  {
    }
  GetBatteryResponse_(const ContainerAllocator& _alloc)
    : battery(0)  {
  (void)_alloc;
    }



   typedef int32_t _battery_type;
  _battery_type battery;





  typedef boost::shared_ptr< ::yidamsg::GetBatteryResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::GetBatteryResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetBatteryResponse_

typedef ::yidamsg::GetBatteryResponse_<std::allocator<void> > GetBatteryResponse;

typedef boost::shared_ptr< ::yidamsg::GetBatteryResponse > GetBatteryResponsePtr;
typedef boost::shared_ptr< ::yidamsg::GetBatteryResponse const> GetBatteryResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::GetBatteryResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::GetBatteryResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::yidamsg::GetBatteryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::GetBatteryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::GetBatteryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::GetBatteryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::GetBatteryResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::GetBatteryResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::GetBatteryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "295e87f732e03ed6443766199f72b602";
  }

  static const char* value(const ::yidamsg::GetBatteryResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x295e87f732e03ed6ULL;
  static const uint64_t static_value2 = 0x443766199f72b602ULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::GetBatteryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/GetBatteryResponse";
  }

  static const char* value(const ::yidamsg::GetBatteryResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::GetBatteryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 battery\n\
\n\
";
  }

  static const char* value(const ::yidamsg::GetBatteryResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::GetBatteryResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.battery);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetBatteryResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::GetBatteryResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::GetBatteryResponse_<ContainerAllocator>& v)
  {
    s << indent << "battery: ";
    Printer<int32_t>::stream(s, indent + "  ", v.battery);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_GETBATTERYRESPONSE_H
