// Generated by gencpp from file yidamsg/GPS_data.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_GPS_DATA_H
#define YIDAMSG_MESSAGE_GPS_DATA_H


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
struct GPS_data_
{
  typedef GPS_data_<ContainerAllocator> Type;

  GPS_data_()
    : longitude(0.0)
    , latitude(0.0)  {
    }
  GPS_data_(const ContainerAllocator& _alloc)
    : longitude(0.0)
    , latitude(0.0)  {
  (void)_alloc;
    }



   typedef double _longitude_type;
  _longitude_type longitude;

   typedef double _latitude_type;
  _latitude_type latitude;





  typedef boost::shared_ptr< ::yidamsg::GPS_data_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::GPS_data_<ContainerAllocator> const> ConstPtr;

}; // struct GPS_data_

typedef ::yidamsg::GPS_data_<std::allocator<void> > GPS_data;

typedef boost::shared_ptr< ::yidamsg::GPS_data > GPS_dataPtr;
typedef boost::shared_ptr< ::yidamsg::GPS_data const> GPS_dataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::GPS_data_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::GPS_data_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::yidamsg::GPS_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::GPS_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::GPS_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::GPS_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::GPS_data_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::GPS_data_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::GPS_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fd6c3d0b911e124b1f0b5a2ade9c1a01";
  }

  static const char* value(const ::yidamsg::GPS_data_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfd6c3d0b911e124bULL;
  static const uint64_t static_value2 = 0x1f0b5a2ade9c1a01ULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::GPS_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/GPS_data";
  }

  static const char* value(const ::yidamsg::GPS_data_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::GPS_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 longitude\n\
float64 latitude\n\
\n\
";
  }

  static const char* value(const ::yidamsg::GPS_data_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::GPS_data_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.longitude);
      stream.next(m.latitude);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GPS_data_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::GPS_data_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::GPS_data_<ContainerAllocator>& v)
  {
    s << indent << "longitude: ";
    Printer<double>::stream(s, indent + "  ", v.longitude);
    s << indent << "latitude: ";
    Printer<double>::stream(s, indent + "  ", v.latitude);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_GPS_DATA_H
