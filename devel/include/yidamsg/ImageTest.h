// Generated by gencpp from file yidamsg/ImageTest.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_IMAGETEST_H
#define YIDAMSG_MESSAGE_IMAGETEST_H


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
struct ImageTest_
{
  typedef ImageTest_<ContainerAllocator> Type;

  ImageTest_()
    : image()
    , len(0)
    , x(0.0)  {
    }
  ImageTest_(const ContainerAllocator& _alloc)
    : image(_alloc)
    , len(0)
    , x(0.0)  {
  (void)_alloc;
    }



   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _image_type;
  _image_type image;

   typedef int32_t _len_type;
  _len_type len;

   typedef float _x_type;
  _x_type x;





  typedef boost::shared_ptr< ::yidamsg::ImageTest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::ImageTest_<ContainerAllocator> const> ConstPtr;

}; // struct ImageTest_

typedef ::yidamsg::ImageTest_<std::allocator<void> > ImageTest;

typedef boost::shared_ptr< ::yidamsg::ImageTest > ImageTestPtr;
typedef boost::shared_ptr< ::yidamsg::ImageTest const> ImageTestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::ImageTest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::ImageTest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::yidamsg::ImageTest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::ImageTest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::ImageTest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::ImageTest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::ImageTest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::ImageTest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::ImageTest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e6ec7279285993bebecee3c8ef8bc36c";
  }

  static const char* value(const ::yidamsg::ImageTest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe6ec7279285993beULL;
  static const uint64_t static_value2 = 0xbecee3c8ef8bc36cULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::ImageTest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/ImageTest";
  }

  static const char* value(const ::yidamsg::ImageTest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::ImageTest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8[] image\n\
int32 len\n\
float32 x\n\
";
  }

  static const char* value(const ::yidamsg::ImageTest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::ImageTest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.image);
      stream.next(m.len);
      stream.next(m.x);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ImageTest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::ImageTest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::ImageTest_<ContainerAllocator>& v)
  {
    s << indent << "image[]" << std::endl;
    for (size_t i = 0; i < v.image.size(); ++i)
    {
      s << indent << "  image[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.image[i]);
    }
    s << indent << "len: ";
    Printer<int32_t>::stream(s, indent + "  ", v.len);
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_IMAGETEST_H
