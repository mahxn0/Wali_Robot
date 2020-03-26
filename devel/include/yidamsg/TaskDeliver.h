// Generated by gencpp from file yidamsg/TaskDeliver.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_TASKDELIVER_H
#define YIDAMSG_MESSAGE_TASKDELIVER_H


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
struct TaskDeliver_
{
  typedef TaskDeliver_<ContainerAllocator> Type;

  TaskDeliver_()
    : task_history_id(0)
    , robot_id(0)  {
    }
  TaskDeliver_(const ContainerAllocator& _alloc)
    : task_history_id(0)
    , robot_id(0)  {
  (void)_alloc;
    }



   typedef int32_t _task_history_id_type;
  _task_history_id_type task_history_id;

   typedef int32_t _robot_id_type;
  _robot_id_type robot_id;





  typedef boost::shared_ptr< ::yidamsg::TaskDeliver_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::TaskDeliver_<ContainerAllocator> const> ConstPtr;

}; // struct TaskDeliver_

typedef ::yidamsg::TaskDeliver_<std::allocator<void> > TaskDeliver;

typedef boost::shared_ptr< ::yidamsg::TaskDeliver > TaskDeliverPtr;
typedef boost::shared_ptr< ::yidamsg::TaskDeliver const> TaskDeliverConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::TaskDeliver_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::TaskDeliver_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::yidamsg::TaskDeliver_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::TaskDeliver_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::TaskDeliver_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::TaskDeliver_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::TaskDeliver_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::TaskDeliver_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::TaskDeliver_<ContainerAllocator> >
{
  static const char* value()
  {
    return "92ff1021f832a89e5a8dee53b996e8de";
  }

  static const char* value(const ::yidamsg::TaskDeliver_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x92ff1021f832a89eULL;
  static const uint64_t static_value2 = 0x5a8dee53b996e8deULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::TaskDeliver_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/TaskDeliver";
  }

  static const char* value(const ::yidamsg::TaskDeliver_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::TaskDeliver_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 task_history_id\n\
int32 robot_id\n\
";
  }

  static const char* value(const ::yidamsg::TaskDeliver_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::TaskDeliver_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.task_history_id);
      stream.next(m.robot_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TaskDeliver_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::TaskDeliver_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::TaskDeliver_<ContainerAllocator>& v)
  {
    s << indent << "task_history_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.task_history_id);
    s << indent << "robot_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.robot_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_TASKDELIVER_H