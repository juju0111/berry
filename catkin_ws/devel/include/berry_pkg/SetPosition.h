// Generated by gencpp from file berry_pkg/SetPosition.msg
// DO NOT EDIT!


#ifndef BERRY_PKG_MESSAGE_SETPOSITION_H
#define BERRY_PKG_MESSAGE_SETPOSITION_H


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
struct SetPosition_
{
  typedef SetPosition_<ContainerAllocator> Type;

  SetPosition_()
    : id(0)
    , position(0)  {
    }
  SetPosition_(const ContainerAllocator& _alloc)
    : id(0)
    , position(0)  {
  (void)_alloc;
    }



   typedef uint8_t _id_type;
  _id_type id;

   typedef int32_t _position_type;
  _position_type position;





  typedef boost::shared_ptr< ::berry_pkg::SetPosition_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::berry_pkg::SetPosition_<ContainerAllocator> const> ConstPtr;

}; // struct SetPosition_

typedef ::berry_pkg::SetPosition_<std::allocator<void> > SetPosition;

typedef boost::shared_ptr< ::berry_pkg::SetPosition > SetPositionPtr;
typedef boost::shared_ptr< ::berry_pkg::SetPosition const> SetPositionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::berry_pkg::SetPosition_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::berry_pkg::SetPosition_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::berry_pkg::SetPosition_<ContainerAllocator1> & lhs, const ::berry_pkg::SetPosition_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.position == rhs.position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::berry_pkg::SetPosition_<ContainerAllocator1> & lhs, const ::berry_pkg::SetPosition_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace berry_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::berry_pkg::SetPosition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::berry_pkg::SetPosition_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::berry_pkg::SetPosition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::berry_pkg::SetPosition_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::berry_pkg::SetPosition_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::berry_pkg::SetPosition_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::berry_pkg::SetPosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0a775458729eb3272bc88b4f5f764cc8";
  }

  static const char* value(const ::berry_pkg::SetPosition_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0a775458729eb327ULL;
  static const uint64_t static_value2 = 0x2bc88b4f5f764cc8ULL;
};

template<class ContainerAllocator>
struct DataType< ::berry_pkg::SetPosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "berry_pkg/SetPosition";
  }

  static const char* value(const ::berry_pkg::SetPosition_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::berry_pkg::SetPosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 id\n"
"int32 position\n"
;
  }

  static const char* value(const ::berry_pkg::SetPosition_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::berry_pkg::SetPosition_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetPosition_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::berry_pkg::SetPosition_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::berry_pkg::SetPosition_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id);
    s << indent << "position: ";
    Printer<int32_t>::stream(s, indent + "  ", v.position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BERRY_PKG_MESSAGE_SETPOSITION_H
