// Generated by gencpp from file yidamsg/TaskListRequest.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_TASKLISTREQUEST_H
#define YIDAMSG_MESSAGE_TASKLISTREQUEST_H


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
struct TaskListRequest_
{
  typedef TaskListRequest_<ContainerAllocator> Type;

  TaskListRequest_()
    : plan()  {
    }
  TaskListRequest_(const ContainerAllocator& _alloc)
    : plan(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _plan_type;
  _plan_type plan;





  typedef boost::shared_ptr< ::yidamsg::TaskListRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::TaskListRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TaskListRequest_

typedef ::yidamsg::TaskListRequest_<std::allocator<void> > TaskListRequest;

typedef boost::shared_ptr< ::yidamsg::TaskListRequest > TaskListRequestPtr;
typedef boost::shared_ptr< ::yidamsg::TaskListRequest const> TaskListRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::TaskListRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::TaskListRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace yidamsg

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsMessage': True, 'IsFixedSize': False, 'HasHeader': False}
// {'yidamsg': ['/home/mahxn0/catkin_ws/src/yidamsg/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsMessage< ::yidamsg::TaskListRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::TaskListRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::TaskListRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::TaskListRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::TaskListRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::TaskListRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::TaskListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cc50643e78ec83e6cd11adcd6225ad09";
  }

  static const char* value(const ::yidamsg::TaskListRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcc50643e78ec83e6ULL;
  static const uint64_t static_value2 = 0xcd11adcd6225ad09ULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::TaskListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/TaskListRequest";
  }

  static const char* value(const ::yidamsg::TaskListRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::TaskListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string plan\n\
";
  }

  static const char* value(const ::yidamsg::TaskListRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::TaskListRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.plan);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TaskListRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::TaskListRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::TaskListRequest_<ContainerAllocator>& v)
  {
    s << indent << "plan: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.plan);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_TASKLISTREQUEST_H