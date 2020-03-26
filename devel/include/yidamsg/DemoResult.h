// Generated by gencpp from file yidamsg/DemoResult.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_DEMORESULT_H
#define YIDAMSG_MESSAGE_DEMORESULT_H


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
struct DemoResult_
{
  typedef DemoResult_<ContainerAllocator> Type;

  DemoResult_()
    : camid(0)
    , picid(0)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , surfaceimage()
    , equipimage()
    , nameplates()
    , equipid()
    , result()
    , timestamp()
    , success(false)  {
    }
  DemoResult_(const ContainerAllocator& _alloc)
    : camid(0)
    , picid(0)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , surfaceimage(_alloc)
    , equipimage(_alloc)
    , nameplates(_alloc)
    , equipid(_alloc)
    , result(_alloc)
    , timestamp()
    , success(false)  {
  (void)_alloc;
    }



   typedef int32_t _camid_type;
  _camid_type camid;

   typedef int32_t _picid_type;
  _picid_type picid;

   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _surfaceimage_type;
  _surfaceimage_type surfaceimage;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _equipimage_type;
  _equipimage_type equipimage;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _nameplates_type;
  _nameplates_type nameplates;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _equipid_type;
  _equipid_type equipid;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _result_type;
  _result_type result;

   typedef ros::Time _timestamp_type;
  _timestamp_type timestamp;

   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::yidamsg::DemoResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::DemoResult_<ContainerAllocator> const> ConstPtr;

}; // struct DemoResult_

typedef ::yidamsg::DemoResult_<std::allocator<void> > DemoResult;

typedef boost::shared_ptr< ::yidamsg::DemoResult > DemoResultPtr;
typedef boost::shared_ptr< ::yidamsg::DemoResult const> DemoResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::DemoResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::DemoResult_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::yidamsg::DemoResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::DemoResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::DemoResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::DemoResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::DemoResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::DemoResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::DemoResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "24d2d03877545f95c0d6d31f886a5d9e";
  }

  static const char* value(const ::yidamsg::DemoResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x24d2d03877545f95ULL;
  static const uint64_t static_value2 = 0xc0d6d31f886a5d9eULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::DemoResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/DemoResult";
  }

  static const char* value(const ::yidamsg::DemoResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::DemoResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 camid\n\
int32 picid\n\
float32 x\n\
float32 y\n\
float32 z\n\
uint8[] surfaceimage\n\
uint8[] equipimage\n\
uint8[] nameplates\n\
uint8[] equipid\n\
string result\n\
time timestamp\n\
bool success\n\
";
  }

  static const char* value(const ::yidamsg::DemoResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::DemoResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.camid);
      stream.next(m.picid);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.surfaceimage);
      stream.next(m.equipimage);
      stream.next(m.nameplates);
      stream.next(m.equipid);
      stream.next(m.result);
      stream.next(m.timestamp);
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DemoResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::DemoResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::DemoResult_<ContainerAllocator>& v)
  {
    s << indent << "camid: ";
    Printer<int32_t>::stream(s, indent + "  ", v.camid);
    s << indent << "picid: ";
    Printer<int32_t>::stream(s, indent + "  ", v.picid);
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
    s << indent << "surfaceimage[]" << std::endl;
    for (size_t i = 0; i < v.surfaceimage.size(); ++i)
    {
      s << indent << "  surfaceimage[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.surfaceimage[i]);
    }
    s << indent << "equipimage[]" << std::endl;
    for (size_t i = 0; i < v.equipimage.size(); ++i)
    {
      s << indent << "  equipimage[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.equipimage[i]);
    }
    s << indent << "nameplates[]" << std::endl;
    for (size_t i = 0; i < v.nameplates.size(); ++i)
    {
      s << indent << "  nameplates[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.nameplates[i]);
    }
    s << indent << "equipid[]" << std::endl;
    for (size_t i = 0; i < v.equipid.size(); ++i)
    {
      s << indent << "  equipid[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.equipid[i]);
    }
    s << indent << "result: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.result);
    s << indent << "timestamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.timestamp);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_DEMORESULT_H
