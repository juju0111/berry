// Generated by gencpp from file berry_pkg/GetPositionResponse.msg
// DO NOT EDIT!


#ifndef BERRY_PKG_MESSAGE_GETPOSITIONRESPONSE_H
#define BERRY_PKG_MESSAGE_GETPOSITIONRESPONSE_H


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
struct GetPositionResponse_
{
  typedef GetPositionResponse_<ContainerAllocator> Type;

  GetPositionResponse_()
    : position(0)  {
    }
  GetPositionResponse_(const ContainerAllocator& _alloc)
    : position(0)  {
  (void)_alloc;
    }



   typedef int32_t _position_type;
  _position_type position;





  typedef boost::shared_ptr< ::berry_pkg::GetPositionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::berry_pkg::GetPositionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetPositionResponse_

typedef ::berry_pkg::GetPositionResponse_<std::allocator<void> > GetPositionResponse;

typedef boost::shared_ptr< ::berry_pkg::GetPositionResponse > GetPositionResponsePtr;
typedef boost::shared_ptr< ::berry_pkg::GetPositionResponse const> GetPositionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::berry_pkg::GetPositionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::berry_pkg::GetPositionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::berry_pkg::GetPositionResponse_<ContainerAllocator1> & lhs, const ::berry_pkg::GetPositionResponse_<ContainerAllocator2> & rhs)
{
  return lhs.position == rhs.position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::berry_pkg::GetPositionResponse_<ContainerAllocator1> & lhs, const ::berry_pkg::GetPositionResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace berry_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::berry_pkg::GetPositionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::berry_pkg::GetPositionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::berry_pkg::GetPositionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::berry_pkg::GetPositionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::berry_pkg::GetPositionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::berry_pkg::GetPositionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::berry_pkg::GetPositionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ada70156e12e6e31948c64c60d8bb212";
  }

  static const char* value(const ::berry_pkg::GetPositionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xada70156e12e6e31ULL;
  static const uint64_t static_value2 = 0x948c64c60d8bb212ULL;
};

template<class ContainerAllocator>
struct DataType< ::berry_pkg::GetPositionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "berry_pkg/GetPositionResponse";
  }

  static const char* value(const ::berry_pkg::GetPositionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::berry_pkg::GetPositionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 position\n"
"\n"
;
  }

  static const char* value(const ::berry_pkg::GetPositionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::berry_pkg::GetPositionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPositionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::berry_pkg::GetPositionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::berry_pkg::GetPositionResponse_<ContainerAllocator>& v)
  {
    s << indent << "position: ";
    Printer<int32_t>::stream(s, indent + "  ", v.position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BERRY_PKG_MESSAGE_GETPOSITIONRESPONSE_H