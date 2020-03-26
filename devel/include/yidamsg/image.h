// Generated by gencpp from file yidamsg/image.msg
// DO NOT EDIT!


#ifndef YIDAMSG_MESSAGE_IMAGE_H
#define YIDAMSG_MESSAGE_IMAGE_H


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
struct image_
{
  typedef image_<ContainerAllocator> Type;

  image_()
    : pImgBuf1()
    , pImgBuf2()
    , width(0)
    , height(0)
    , id1(0)
    , id2(0)
    , length1(0)
    , length2(0)  {
      pImgBuf1.assign(0);

      pImgBuf2.assign(0);
  }
  image_(const ContainerAllocator& _alloc)
    : pImgBuf1()
    , pImgBuf2()
    , width(0)
    , height(0)
    , id1(0)
    , id2(0)
    , length1(0)
    , length2(0)  {
  (void)_alloc;
      pImgBuf1.assign(0);

      pImgBuf2.assign(0);
  }



   typedef boost::array<uint8_t, 200000>  _pImgBuf1_type;
  _pImgBuf1_type pImgBuf1;

   typedef boost::array<uint8_t, 200000>  _pImgBuf2_type;
  _pImgBuf2_type pImgBuf2;

   typedef int32_t _width_type;
  _width_type width;

   typedef int32_t _height_type;
  _height_type height;

   typedef int32_t _id1_type;
  _id1_type id1;

   typedef int32_t _id2_type;
  _id2_type id2;

   typedef int32_t _length1_type;
  _length1_type length1;

   typedef int32_t _length2_type;
  _length2_type length2;





  typedef boost::shared_ptr< ::yidamsg::image_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yidamsg::image_<ContainerAllocator> const> ConstPtr;

}; // struct image_

typedef ::yidamsg::image_<std::allocator<void> > image;

typedef boost::shared_ptr< ::yidamsg::image > imagePtr;
typedef boost::shared_ptr< ::yidamsg::image const> imageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yidamsg::image_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yidamsg::image_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::yidamsg::image_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yidamsg::image_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::image_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yidamsg::image_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::image_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yidamsg::image_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yidamsg::image_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d49f80c06464cb3dde6b4fc6f30be9fc";
  }

  static const char* value(const ::yidamsg::image_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd49f80c06464cb3dULL;
  static const uint64_t static_value2 = 0xde6b4fc6f30be9fcULL;
};

template<class ContainerAllocator>
struct DataType< ::yidamsg::image_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yidamsg/image";
  }

  static const char* value(const ::yidamsg::image_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yidamsg::image_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8[200000] pImgBuf1\n\
uint8[200000] pImgBuf2\n\
int32 width\n\
int32 height\n\
int32 id1\n\
int32 id2\n\
int32 length1\n\
int32 length2\n\
\n\
";
  }

  static const char* value(const ::yidamsg::image_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yidamsg::image_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pImgBuf1);
      stream.next(m.pImgBuf2);
      stream.next(m.width);
      stream.next(m.height);
      stream.next(m.id1);
      stream.next(m.id2);
      stream.next(m.length1);
      stream.next(m.length2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct image_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yidamsg::image_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yidamsg::image_<ContainerAllocator>& v)
  {
    s << indent << "pImgBuf1[]" << std::endl;
    for (size_t i = 0; i < v.pImgBuf1.size(); ++i)
    {
      s << indent << "  pImgBuf1[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.pImgBuf1[i]);
    }
    s << indent << "pImgBuf2[]" << std::endl;
    for (size_t i = 0; i < v.pImgBuf2.size(); ++i)
    {
      s << indent << "  pImgBuf2[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.pImgBuf2[i]);
    }
    s << indent << "width: ";
    Printer<int32_t>::stream(s, indent + "  ", v.width);
    s << indent << "height: ";
    Printer<int32_t>::stream(s, indent + "  ", v.height);
    s << indent << "id1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id1);
    s << indent << "id2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id2);
    s << indent << "length1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.length1);
    s << indent << "length2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.length2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YIDAMSG_MESSAGE_IMAGE_H