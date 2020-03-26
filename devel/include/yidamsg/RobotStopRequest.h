// Generated by gencpp from file yidamsg/RobotStopRequest.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_ROBOTSTOPREQUEST_H
#define YIDAMSG_MESSAGE_ROBOTSTOPREQUEST_H


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
struct RobotStopRequest_
{
  typedef RobotStopRequest_<ContainerAllocator> Type;

  RobotStopRequest_()
    : control(false)  {
    }
  RobotStopRequest_(const ContainerAllocator& _alloc)
    : control(false)  {
  (void)_alloc;
    }



   typedef uint8_t _control_type;
  _control_type control;





  typedef boost::shared_ptr< ::yidamsg::RobotStopRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::RobotStopRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RobotStopRequest_

typedef ::yidamsg::RobotStopRequest_<std::allocator<void> > RobotStopRequest;

typedef boost::shared_ptr< ::yidamsg::RobotStopRequest > RobotStopRequestPtr;
typedef boost::shared_ptr< ::yidamsg::RobotStopRequest const> RobotStopRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::RobotStopRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::RobotStopRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::yidamsg::RobotStopRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::RobotStopRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::RobotStopRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::RobotStopRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::RobotStopRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::RobotStopRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::RobotStopRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f389a8d6f25586fd72021c6ff159f449";
  }

  static const char* value(const ::yidamsg::RobotStopRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf389a8d6f25586fdULL;
  static const uint64_t static_value2 = 0x72021c6ff159f449ULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::RobotStopRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/RobotStopRequest";
  }

  static const char* value(const ::yidamsg::RobotStopRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::RobotStopRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool control\n\
";
  }

  static const char* value(const ::yidamsg::RobotStopRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::RobotStopRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.control);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotStopRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::RobotStopRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::RobotStopRequest_<ContainerAllocator>& v)
  {
    s << indent << "control: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.control);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_ROBOTSTOPREQUEST_H