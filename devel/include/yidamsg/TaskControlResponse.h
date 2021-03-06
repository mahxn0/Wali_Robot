// Generated by gencpp from file yidamsg/TaskControlResponse.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_TASKCONTROLRESPONSE_H
#define YIDAMSG_MESSAGE_TASKCONTROLRESPONSE_H


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
struct TaskControlResponse_
{
  typedef TaskControlResponse_<ContainerAllocator> Type;

  TaskControlResponse_()
    {
    }
  TaskControlResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::yidamsg::TaskControlResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::TaskControlResponse_<ContainerAllocator> const> ConstPtr;

}; // struct TaskControlResponse_

typedef ::yidamsg::TaskControlResponse_<std::allocator<void> > TaskControlResponse;

typedef boost::shared_ptr< ::yidamsg::TaskControlResponse > TaskControlResponsePtr;
typedef boost::shared_ptr< ::yidamsg::TaskControlResponse const> TaskControlResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::TaskControlResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::TaskControlResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::yidamsg::TaskControlResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::TaskControlResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::TaskControlResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::TaskControlResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::TaskControlResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::TaskControlResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::TaskControlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::yidamsg::TaskControlResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::TaskControlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/TaskControlResponse";
  }

  static const char* value(const ::yidamsg::TaskControlResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::TaskControlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::yidamsg::TaskControlResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::TaskControlResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TaskControlResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::TaskControlResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::yidamsg::TaskControlResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_TASKCONTROLRESPONSE_H
