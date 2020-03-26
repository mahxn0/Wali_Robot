// Generated by gencpp from file yidamsg/ControlDoorResponse.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_CONTROLDOORRESPONSE_H
#define YIDAMSG_MESSAGE_CONTROLDOORRESPONSE_H


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
struct ControlDoorResponse_
{
  typedef ControlDoorResponse_<ContainerAllocator> Type;

  ControlDoorResponse_()
    : success(false)  {
    }
  ControlDoorResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::yidamsg::ControlDoorResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::ControlDoorResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ControlDoorResponse_

typedef ::yidamsg::ControlDoorResponse_<std::allocator<void> > ControlDoorResponse;

typedef boost::shared_ptr< ::yidamsg::ControlDoorResponse > ControlDoorResponsePtr;
typedef boost::shared_ptr< ::yidamsg::ControlDoorResponse const> ControlDoorResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::ControlDoorResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::ControlDoorResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::yidamsg::ControlDoorResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::ControlDoorResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::ControlDoorResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::ControlDoorResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::ControlDoorResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::ControlDoorResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::ControlDoorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::yidamsg::ControlDoorResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::ControlDoorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/ControlDoorResponse";
  }

  static const char* value(const ::yidamsg::ControlDoorResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::ControlDoorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n\
\n\
";
  }

  static const char* value(const ::yidamsg::ControlDoorResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::ControlDoorResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ControlDoorResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::ControlDoorResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::ControlDoorResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_CONTROLDOORRESPONSE_H