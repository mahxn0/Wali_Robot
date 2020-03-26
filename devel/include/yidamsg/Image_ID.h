// Generated by gencpp from file yidamsg/Image_ID.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_IMAGE_ID_H
#define YIDAMSG_MESSAGE_IMAGE_ID_H


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
struct Image_ID_
{
  typedef Image_ID_<ContainerAllocator> Type;

  Image_ID_()
    : id(0)  {
    }
  Image_ID_(const ContainerAllocator& _alloc)
    : id(0)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;





  typedef boost::shared_ptr< ::yidamsg::Image_ID_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::Image_ID_<ContainerAllocator> const> ConstPtr;

}; // struct Image_ID_

typedef ::yidamsg::Image_ID_<std::allocator<void> > Image_ID;

typedef boost::shared_ptr< ::yidamsg::Image_ID > Image_IDPtr;
typedef boost::shared_ptr< ::yidamsg::Image_ID const> Image_IDConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::Image_ID_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::Image_ID_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::yidamsg::Image_ID_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::Image_ID_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::Image_ID_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::Image_ID_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::Image_ID_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::Image_ID_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::Image_ID_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c5e4a7d59c68f74eabcec876a00216aa";
  }

  static const char* value(const ::yidamsg::Image_ID_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc5e4a7d59c68f74eULL;
  static const uint64_t static_value2 = 0xabcec876a00216aaULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::Image_ID_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/Image_ID";
  }

  static const char* value(const ::yidamsg::Image_ID_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::Image_ID_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 id\n\
";
  }

  static const char* value(const ::yidamsg::Image_ID_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::Image_ID_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Image_ID_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::Image_ID_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::Image_ID_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_IMAGE_ID_H
