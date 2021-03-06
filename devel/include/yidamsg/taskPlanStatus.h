// Generated by gencpp from file yidamsg/taskPlanStatus.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_TASKPLANSTATUS_H
#define YIDAMSG_MESSAGE_TASKPLANSTATUS_H


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
struct taskPlanStatus_
{
  typedef taskPlanStatus_<ContainerAllocator> Type;

  taskPlanStatus_()
    : taskId(0)
    , robotId()
    , status(0)  {
    }
  taskPlanStatus_(const ContainerAllocator& _alloc)
    : taskId(0)
    , robotId(_alloc)
    , status(0)  {
  (void)_alloc;
    }



   typedef int32_t _taskId_type;
  _taskId_type taskId;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _robotId_type;
  _robotId_type robotId;

   typedef int32_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::yidamsg::taskPlanStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::taskPlanStatus_<ContainerAllocator> const> ConstPtr;

}; // struct taskPlanStatus_

typedef ::yidamsg::taskPlanStatus_<std::allocator<void> > taskPlanStatus;

typedef boost::shared_ptr< ::yidamsg::taskPlanStatus > taskPlanStatusPtr;
typedef boost::shared_ptr< ::yidamsg::taskPlanStatus const> taskPlanStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::taskPlanStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::taskPlanStatus_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::yidamsg::taskPlanStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::taskPlanStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::taskPlanStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::taskPlanStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::taskPlanStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::taskPlanStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::taskPlanStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "592a22bb6712716461dc6dd5022389ab";
  }

  static const char* value(const ::yidamsg::taskPlanStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x592a22bb67127164ULL;
  static const uint64_t static_value2 = 0x61dc6dd5022389abULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::taskPlanStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/taskPlanStatus";
  }

  static const char* value(const ::yidamsg::taskPlanStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::taskPlanStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 taskId\n\
string robotId\n\
int32 status\n\
";
  }

  static const char* value(const ::yidamsg::taskPlanStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::taskPlanStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.taskId);
      stream.next(m.robotId);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct taskPlanStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::taskPlanStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::taskPlanStatus_<ContainerAllocator>& v)
  {
    s << indent << "taskId: ";
    Printer<int32_t>::stream(s, indent + "  ", v.taskId);
    s << indent << "robotId: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.robotId);
    s << indent << "status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_TASKPLANSTATUS_H
