// Generated by gencpp from file yidamsg/yuntai_control.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_YUNTAI_CONTROL_H
#define YIDAMSG_MESSAGE_YUNTAI_CONTROL_H


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
struct yuntai_control_
{
  typedef yuntai_control_<ContainerAllocator> Type;

  yuntai_control_()
    : direction()
    , number(0)
    , step(0)  {
    }
  yuntai_control_(const ContainerAllocator& _alloc)
    : direction(_alloc)
    , number(0)
    , step(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _direction_type;
  _direction_type direction;

   typedef int32_t _number_type;
  _number_type number;

   typedef int32_t _step_type;
  _step_type step;





  typedef boost::shared_ptr< ::yidamsg::yuntai_control_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::yuntai_control_<ContainerAllocator> const> ConstPtr;

}; // struct yuntai_control_

typedef ::yidamsg::yuntai_control_<std::allocator<void> > yuntai_control;

typedef boost::shared_ptr< ::yidamsg::yuntai_control > yuntai_controlPtr;
typedef boost::shared_ptr< ::yidamsg::yuntai_control const> yuntai_controlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::yuntai_control_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::yuntai_control_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::yidamsg::yuntai_control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::yuntai_control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::yuntai_control_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::yuntai_control_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::yuntai_control_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::yuntai_control_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::yuntai_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "156cafb639634b7b2cda09c35c8b845f";
  }

  static const char* value(const ::yidamsg::yuntai_control_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x156cafb639634b7bULL;
  static const uint64_t static_value2 = 0x2cda09c35c8b845fULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::yuntai_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/yuntai_control";
  }

  static const char* value(const ::yidamsg::yuntai_control_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::yuntai_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string direction\n\
int32 number\n\
int32 step\n\
";
  }

  static const char* value(const ::yidamsg::yuntai_control_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::yuntai_control_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.direction);
      stream.next(m.number);
      stream.next(m.step);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct yuntai_control_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::yuntai_control_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::yuntai_control_<ContainerAllocator>& v)
  {
    s << indent << "direction: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.direction);
    s << indent << "number: ";
    Printer<int32_t>::stream(s, indent + "  ", v.number);
    s << indent << "step: ";
    Printer<int32_t>::stream(s, indent + "  ", v.step);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_YUNTAI_CONTROL_H