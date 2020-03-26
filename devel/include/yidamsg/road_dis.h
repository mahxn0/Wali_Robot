// Generated by gencpp from file yidamsg/road_dis.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_ROAD_DIS_H
#define YIDAMSG_MESSAGE_ROAD_DIS_H


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
struct road_dis_
{
  typedef road_dis_<ContainerAllocator> Type;

  road_dis_()
    : left(0)
    , right(0)  {
    }
  road_dis_(const ContainerAllocator& _alloc)
    : left(0)
    , right(0)  {
  (void)_alloc;
    }



   typedef int32_t _left_type;
  _left_type left;

   typedef int32_t _right_type;
  _right_type right;





  typedef boost::shared_ptr< ::yidamsg::road_dis_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::road_dis_<ContainerAllocator> const> ConstPtr;

}; // struct road_dis_

typedef ::yidamsg::road_dis_<std::allocator<void> > road_dis;

typedef boost::shared_ptr< ::yidamsg::road_dis > road_disPtr;
typedef boost::shared_ptr< ::yidamsg::road_dis const> road_disConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::road_dis_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::road_dis_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::yidamsg::road_dis_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::road_dis_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::road_dis_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::road_dis_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::road_dis_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::road_dis_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::road_dis_<ContainerAllocator> >
{
  static const char* value()
  {
    return "febc810ab9cc360ca3f47fcee4f2ba71";
  }

  static const char* value(const ::yidamsg::road_dis_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfebc810ab9cc360cULL;
  static const uint64_t static_value2 = 0xa3f47fcee4f2ba71ULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::road_dis_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/road_dis";
  }

  static const char* value(const ::yidamsg::road_dis_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::road_dis_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 left\n\
int32 right\n\
";
  }

  static const char* value(const ::yidamsg::road_dis_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::road_dis_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.left);
      stream.next(m.right);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct road_dis_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::road_dis_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::road_dis_<ContainerAllocator>& v)
  {
    s << indent << "left: ";
    Printer<int32_t>::stream(s, indent + "  ", v.left);
    s << indent << "right: ";
    Printer<int32_t>::stream(s, indent + "  ", v.right);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_ROAD_DIS_H