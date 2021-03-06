// Generated by gencpp from file berry_pkg/BerrySetPosition.msg
// DO NOT EDIT!


#ifndef BERRY_PKG_MESSAGE_BERRYSETPOSITION_H
#define BERRY_PKG_MESSAGE_BERRYSETPOSITION_H


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
struct BerrySetPosition_
{
  typedef BerrySetPosition_<ContainerAllocator> Type;

  BerrySetPosition_()
    : id1(0)
    , id2(0)
    , id3(0)
    , id4(0)
    , position1(0)
    , position2(0)
    , position3(0)
    , position4(0)  {
    }
  BerrySetPosition_(const ContainerAllocator& _alloc)
    : id1(0)
    , id2(0)
    , id3(0)
    , id4(0)
    , position1(0)
    , position2(0)
    , position3(0)
    , position4(0)  {
  (void)_alloc;
    }



   typedef uint8_t _id1_type;
  _id1_type id1;

   typedef uint8_t _id2_type;
  _id2_type id2;

   typedef uint8_t _id3_type;
  _id3_type id3;

   typedef uint8_t _id4_type;
  _id4_type id4;

   typedef int32_t _position1_type;
  _position1_type position1;

   typedef int32_t _position2_type;
  _position2_type position2;

   typedef int32_t _position3_type;
  _position3_type position3;

   typedef int32_t _position4_type;
  _position4_type position4;





  typedef boost::shared_ptr< ::berry_pkg::BerrySetPosition_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::berry_pkg::BerrySetPosition_<ContainerAllocator> const> ConstPtr;

}; // struct BerrySetPosition_

typedef ::berry_pkg::BerrySetPosition_<std::allocator<void> > BerrySetPosition;

typedef boost::shared_ptr< ::berry_pkg::BerrySetPosition > BerrySetPositionPtr;
typedef boost::shared_ptr< ::berry_pkg::BerrySetPosition const> BerrySetPositionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::berry_pkg::BerrySetPosition_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::berry_pkg::BerrySetPosition_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::berry_pkg::BerrySetPosition_<ContainerAllocator1> & lhs, const ::berry_pkg::BerrySetPosition_<ContainerAllocator2> & rhs)
{
  return lhs.id1 == rhs.id1 &&
    lhs.id2 == rhs.id2 &&
    lhs.id3 == rhs.id3 &&
    lhs.id4 == rhs.id4 &&
    lhs.position1 == rhs.position1 &&
    lhs.position2 == rhs.position2 &&
    lhs.position3 == rhs.position3 &&
    lhs.position4 == rhs.position4;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::berry_pkg::BerrySetPosition_<ContainerAllocator1> & lhs, const ::berry_pkg::BerrySetPosition_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace berry_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::berry_pkg::BerrySetPosition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::berry_pkg::BerrySetPosition_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::berry_pkg::BerrySetPosition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::berry_pkg::BerrySetPosition_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::berry_pkg::BerrySetPosition_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::berry_pkg::BerrySetPosition_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::berry_pkg::BerrySetPosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "82bc2dcea1e1a05f1ca9365af7aea68f";
  }

  static const char* value(const ::berry_pkg::BerrySetPosition_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x82bc2dcea1e1a05fULL;
  static const uint64_t static_value2 = 0x1ca9365af7aea68fULL;
};

template<class ContainerAllocator>
struct DataType< ::berry_pkg::BerrySetPosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "berry_pkg/BerrySetPosition";
  }

  static const char* value(const ::berry_pkg::BerrySetPosition_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::berry_pkg::BerrySetPosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 id1\n"
"uint8 id2\n"
"uint8 id3\n"
"uint8 id4\n"
"int32 position1\n"
"int32 position2\n"
"int32 position3\n"
"int32 position4\n"
;
  }

  static const char* value(const ::berry_pkg::BerrySetPosition_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::berry_pkg::BerrySetPosition_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id1);
      stream.next(m.id2);
      stream.next(m.id3);
      stream.next(m.id4);
      stream.next(m.position1);
      stream.next(m.position2);
      stream.next(m.position3);
      stream.next(m.position4);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BerrySetPosition_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::berry_pkg::BerrySetPosition_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::berry_pkg::BerrySetPosition_<ContainerAllocator>& v)
  {
    s << indent << "id1: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id1);
    s << indent << "id2: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id2);
    s << indent << "id3: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id3);
    s << indent << "id4: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id4);
    s << indent << "position1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.position1);
    s << indent << "position2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.position2);
    s << indent << "position3: ";
    Printer<int32_t>::stream(s, indent + "  ", v.position3);
    s << indent << "position4: ";
    Printer<int32_t>::stream(s, indent + "  ", v.position4);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BERRY_PKG_MESSAGE_BERRYSETPOSITION_H
