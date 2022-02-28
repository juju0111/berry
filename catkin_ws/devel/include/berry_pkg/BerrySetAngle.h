// Generated by gencpp from file berry_pkg/BerrySetAngle.msg
// DO NOT EDIT!


#ifndef BERRY_PKG_MESSAGE_BERRYSETANGLE_H
#define BERRY_PKG_MESSAGE_BERRYSETANGLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace berry_pkg
{
template <class ContainerAllocator>
struct BerrySetAngle_
{
  typedef BerrySetAngle_<ContainerAllocator> Type;

  BerrySetAngle_()
    : th1(0.0)
    , th2(0.0)
    , th3(0.0)
    , th4(0.0)
    , angle1(0.0)
    , angle2(0.0)
    , angle3(0.0)
    , angle4(0.0)  {
    }
  BerrySetAngle_(const ContainerAllocator& _alloc)
    : th1(0.0)
    , th2(0.0)
    , th3(0.0)
    , th4(0.0)
    , angle1(0.0)
    , angle2(0.0)
    , angle3(0.0)
    , angle4(0.0)  {
  (void)_alloc;
    }



   typedef float _th1_type;
  _th1_type th1;

   typedef float _th2_type;
  _th2_type th2;

   typedef float _th3_type;
  _th3_type th3;

   typedef float _th4_type;
  _th4_type th4;

   typedef float _angle1_type;
  _angle1_type angle1;

   typedef float _angle2_type;
  _angle2_type angle2;

   typedef float _angle3_type;
  _angle3_type angle3;

   typedef float _angle4_type;
  _angle4_type angle4;





  typedef boost::shared_ptr< ::berry_pkg::BerrySetAngle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::berry_pkg::BerrySetAngle_<ContainerAllocator> const> ConstPtr;

}; // struct BerrySetAngle_

typedef ::berry_pkg::BerrySetAngle_<std::allocator<void> > BerrySetAngle;

typedef boost::shared_ptr< ::berry_pkg::BerrySetAngle > BerrySetAnglePtr;
typedef boost::shared_ptr< ::berry_pkg::BerrySetAngle const> BerrySetAngleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::berry_pkg::BerrySetAngle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::berry_pkg::BerrySetAngle_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::berry_pkg::BerrySetAngle_<ContainerAllocator1> & lhs, const ::berry_pkg::BerrySetAngle_<ContainerAllocator2> & rhs)
{
  return lhs.th1 == rhs.th1 &&
    lhs.th2 == rhs.th2 &&
    lhs.th3 == rhs.th3 &&
    lhs.th4 == rhs.th4 &&
    lhs.angle1 == rhs.angle1 &&
    lhs.angle2 == rhs.angle2 &&
    lhs.angle3 == rhs.angle3 &&
    lhs.angle4 == rhs.angle4;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::berry_pkg::BerrySetAngle_<ContainerAllocator1> & lhs, const ::berry_pkg::BerrySetAngle_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace berry_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::berry_pkg::BerrySetAngle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::berry_pkg::BerrySetAngle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::berry_pkg::BerrySetAngle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::berry_pkg::BerrySetAngle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::berry_pkg::BerrySetAngle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::berry_pkg::BerrySetAngle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::berry_pkg::BerrySetAngle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "97b3b82c09f87a6730ecaae04f0b974e";
  }

  static const char* value(const ::berry_pkg::BerrySetAngle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x97b3b82c09f87a67ULL;
  static const uint64_t static_value2 = 0x30ecaae04f0b974eULL;
};

template<class ContainerAllocator>
struct DataType< ::berry_pkg::BerrySetAngle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "berry_pkg/BerrySetAngle";
  }

  static const char* value(const ::berry_pkg::BerrySetAngle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::berry_pkg::BerrySetAngle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 th1\n"
"float32 th2\n"
"float32 th3\n"
"float32 th4\n"
"float32 angle1\n"
"float32 angle2\n"
"float32 angle3\n"
"float32 angle4\n"
;
  }

  static const char* value(const ::berry_pkg::BerrySetAngle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::berry_pkg::BerrySetAngle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.th1);
      stream.next(m.th2);
      stream.next(m.th3);
      stream.next(m.th4);
      stream.next(m.angle1);
      stream.next(m.angle2);
      stream.next(m.angle3);
      stream.next(m.angle4);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BerrySetAngle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::berry_pkg::BerrySetAngle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::berry_pkg::BerrySetAngle_<ContainerAllocator>& v)
  {
    s << indent << "th1: ";
    Printer<float>::stream(s, indent + "  ", v.th1);
    s << indent << "th2: ";
    Printer<float>::stream(s, indent + "  ", v.th2);
    s << indent << "th3: ";
    Printer<float>::stream(s, indent + "  ", v.th3);
    s << indent << "th4: ";
    Printer<float>::stream(s, indent + "  ", v.th4);
    s << indent << "angle1: ";
    Printer<float>::stream(s, indent + "  ", v.angle1);
    s << indent << "angle2: ";
    Printer<float>::stream(s, indent + "  ", v.angle2);
    s << indent << "angle3: ";
    Printer<float>::stream(s, indent + "  ", v.angle3);
    s << indent << "angle4: ";
    Printer<float>::stream(s, indent + "  ", v.angle4);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BERRY_PKG_MESSAGE_BERRYSETANGLE_H
