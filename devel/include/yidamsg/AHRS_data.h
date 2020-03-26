// Generated by gencpp from file yidamsg/AHRS_data.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_AHRS_DATA_H
#define YIDAMSG_MESSAGE_AHRS_DATA_H


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
struct AHRS_data_
{
  typedef AHRS_data_<ContainerAllocator> Type;

  AHRS_data_()
    : anglex(0.0)
    , angley(0.0)
    , anglez(0.0)  {
    }
  AHRS_data_(const ContainerAllocator& _alloc)
    : anglex(0.0)
    , angley(0.0)
    , anglez(0.0)  {
  (void)_alloc;
    }



   typedef float _anglex_type;
  _anglex_type anglex;

   typedef float _angley_type;
  _angley_type angley;

   typedef float _anglez_type;
  _anglez_type anglez;





  typedef boost::shared_ptr< ::yidamsg::AHRS_data_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::AHRS_data_<ContainerAllocator> const> ConstPtr;

}; // struct AHRS_data_

typedef ::yidamsg::AHRS_data_<std::allocator<void> > AHRS_data;

typedef boost::shared_ptr< ::yidamsg::AHRS_data > AHRS_dataPtr;
typedef boost::shared_ptr< ::yidamsg::AHRS_data const> AHRS_dataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::AHRS_data_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::AHRS_data_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::yidamsg::AHRS_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::AHRS_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::AHRS_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::AHRS_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::AHRS_data_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::AHRS_data_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::AHRS_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "013b565a7d88e68adfcd16c0a3dea0d7";
  }

  static const char* value(const ::yidamsg::AHRS_data_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x013b565a7d88e68aULL;
  static const uint64_t static_value2 = 0xdfcd16c0a3dea0d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::AHRS_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/AHRS_data";
  }

  static const char* value(const ::yidamsg::AHRS_data_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::AHRS_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 anglex\n\
float32 angley\n\
float32 anglez\n\
";
  }

  static const char* value(const ::yidamsg::AHRS_data_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::AHRS_data_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.anglex);
      stream.next(m.angley);
      stream.next(m.anglez);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AHRS_data_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::AHRS_data_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::AHRS_data_<ContainerAllocator>& v)
  {
    s << indent << "anglex: ";
    Printer<float>::stream(s, indent + "  ", v.anglex);
    s << indent << "angley: ";
    Printer<float>::stream(s, indent + "  ", v.angley);
    s << indent << "anglez: ";
    Printer<float>::stream(s, indent + "  ", v.anglez);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_AHRS_DATA_H