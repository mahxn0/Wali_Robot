// Generated by gencpp from file yidamsg/cradle.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_CRADLE_H
#define YIDAMSG_MESSAGE_CRADLE_H


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
struct cradle_
{
  typedef cradle_<ContainerAllocator> Type;

  cradle_()
    : id(0)
    , x(0.0)
    , y(0.0)
    , z(0.0)  {
    }
  cradle_(const ContainerAllocator& _alloc)
    : id(0)
    , x(0.0)
    , y(0.0)
    , z(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;





  typedef boost::shared_ptr< ::yidamsg::cradle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::cradle_<ContainerAllocator> const> ConstPtr;

}; // struct cradle_

typedef ::yidamsg::cradle_<std::allocator<void> > cradle;

typedef boost::shared_ptr< ::yidamsg::cradle > cradlePtr;
typedef boost::shared_ptr< ::yidamsg::cradle const> cradleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::cradle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::cradle_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::yidamsg::cradle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::cradle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::cradle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::cradle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::cradle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::cradle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::cradle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b067c0be18a7365e18e4485283d0819e";
  }

  static const char* value(const ::yidamsg::cradle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb067c0be18a7365eULL;
  static const uint64_t static_value2 = 0x18e4485283d0819eULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::cradle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/cradle";
  }

  static const char* value(const ::yidamsg::cradle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::cradle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 id\n\
float32 x\n\
float32 y\n\
float32 z\n\
";
  }

  static const char* value(const ::yidamsg::cradle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::cradle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct cradle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::cradle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::cradle_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_CRADLE_H
