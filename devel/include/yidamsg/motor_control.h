// Generated by gencpp from file yidamsg/motor_control.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_MOTOR_CONTROL_H
#define YIDAMSG_MESSAGE_MOTOR_CONTROL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Twist.h>

namespace yidamsg
{
template <class ContainerAllocator>
struct motor_control_
{
  typedef motor_control_<ContainerAllocator> Type;

  motor_control_()
    : direct_angle(0)
    , speed()  {
    }
  motor_control_(const ContainerAllocator& _alloc)
    : direct_angle(0)
    , speed(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _direct_angle_type;
  _direct_angle_type direct_angle;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::yidamsg::motor_control_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::motor_control_<ContainerAllocator> const> ConstPtr;

}; // struct motor_control_

typedef ::yidamsg::motor_control_<std::allocator<void> > motor_control;

typedef boost::shared_ptr< ::yidamsg::motor_control > motor_controlPtr;
typedef boost::shared_ptr< ::yidamsg::motor_control const> motor_controlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::motor_control_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::motor_control_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::yidamsg::motor_control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::motor_control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::motor_control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::motor_control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::motor_control_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::motor_control_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::motor_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "11e242d50e6d6f6742ef1ce74bcc4554";
  }

  static const char* value(const ::yidamsg::motor_control_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x11e242d50e6d6f67ULL;
  static const uint64_t static_value2 = 0x42ef1ce74bcc4554ULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::motor_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/motor_control";
  }

  static const char* value(const ::yidamsg::motor_control_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::motor_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 direct_angle\n\
geometry_msgs/Twist speed\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Twist\n\
# This expresses velocity in free space broken into its linear and angular parts.\n\
Vector3  linear\n\
Vector3  angular\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::yidamsg::motor_control_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::motor_control_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.direct_angle);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct motor_control_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::motor_control_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::motor_control_<ContainerAllocator>& v)
  {
    s << indent << "direct_angle: ";
    Printer<int32_t>::stream(s, indent + "  ", v.direct_angle);
    s << indent << "speed: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_MOTOR_CONTROL_H
