// Generated by gencpp from file berry_pkg/SyncGetPositionResponse.msg
// DO NOT EDIT!


#ifndef BERRY_PKG_MESSAGE_SYNCGETPOSITIONRESPONSE_H
#define BERRY_PKG_MESSAGE_SYNCGETPOSITIONRESPONSE_H


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
struct SyncGetPositionResponse_
{
  typedef SyncGetPositionResponse_<ContainerAllocator> Type;

  SyncGetPositionResponse_()
    : position1(0)
    , position2(0)  {
    }
  SyncGetPositionResponse_(const ContainerAllocator& _alloc)
    : position1(0)
    , position2(0)  {
  (void)_alloc;
    }



   typedef int32_t _position1_type;
  _position1_type position1;

   typedef int32_t _position2_type;
  _position2_type position2;





  typedef boost::shared_ptr< ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SyncGetPositionResponse_

typedef ::berry_pkg::SyncGetPositionResponse_<std::allocator<void> > SyncGetPositionResponse;

typedef boost::shared_ptr< ::berry_pkg::SyncGetPositionResponse > SyncGetPositionResponsePtr;
typedef boost::shared_ptr< ::berry_pkg::SyncGetPositionResponse const> SyncGetPositionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator1> & lhs, const ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator2> & rhs)
{
  return lhs.position1 == rhs.position1 &&
    lhs.position2 == rhs.position2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator1> & lhs, const ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace berry_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a1a390f5c43969c5caaab57cf13dc84b";
  }

  static const char* value(const ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa1a390f5c43969c5ULL;
  static const uint64_t static_value2 = 0xcaaab57cf13dc84bULL;
};

template<class ContainerAllocator>
struct DataType< ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "berry_pkg/SyncGetPositionResponse";
  }

  static const char* value(const ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 position1\n"
"int32 position2\n"
"\n"
;
  }

  static const char* value(const ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position1);
      stream.next(m.position2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SyncGetPositionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::berry_pkg::SyncGetPositionResponse_<ContainerAllocator>& v)
  {
    s << indent << "position1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.position1);
    s << indent << "position2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.position2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BERRY_PKG_MESSAGE_SYNCGETPOSITIONRESPONSE_H