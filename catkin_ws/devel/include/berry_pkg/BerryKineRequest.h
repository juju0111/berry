// Generated by gencpp from file berry_pkg/BerryKineRequest.msg
// DO NOT EDIT!


#ifndef BERRY_PKG_MESSAGE_BERRYKINEREQUEST_H
#define BERRY_PKG_MESSAGE_BERRYKINEREQUEST_H


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
struct BerryKineRequest_
{
  typedef BerryKineRequest_<ContainerAllocator> Type;

  BerryKineRequest_()
    : th1(0.0)
    , th2(0.0)
    , th3(0.0)
    , th4(0.0)  {
    }
  BerryKineRequest_(const ContainerAllocator& _alloc)
    : th1(0.0)
    , th2(0.0)
    , th3(0.0)
    , th4(0.0)  {
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





  typedef boost::shared_ptr< ::berry_pkg::BerryKineRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::berry_pkg::BerryKineRequest_<ContainerAllocator> const> ConstPtr;

}; // struct BerryKineRequest_

typedef ::berry_pkg::BerryKineRequest_<std::allocator<void> > BerryKineRequest;

typedef boost::shared_ptr< ::berry_pkg::BerryKineRequest > BerryKineRequestPtr;
typedef boost::shared_ptr< ::berry_pkg::BerryKineRequest const> BerryKineRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::berry_pkg::BerryKineRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::berry_pkg::BerryKineRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::berry_pkg::BerryKineRequest_<ContainerAllocator1> & lhs, const ::berry_pkg::BerryKineRequest_<ContainerAllocator2> & rhs)
{
  return lhs.th1 == rhs.th1 &&
    lhs.th2 == rhs.th2 &&
    lhs.th3 == rhs.th3 &&
    lhs.th4 == rhs.th4;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::berry_pkg::BerryKineRequest_<ContainerAllocator1> & lhs, const ::berry_pkg::BerryKineRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace berry_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::berry_pkg::BerryKineRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::berry_pkg::BerryKineRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::berry_pkg::BerryKineRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::berry_pkg::BerryKineRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::berry_pkg::BerryKineRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::berry_pkg::BerryKineRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::berry_pkg::BerryKineRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "594612446cef3f3c199cf8e08890d836";
  }

  static const char* value(const ::berry_pkg::BerryKineRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x594612446cef3f3cULL;
  static const uint64_t static_value2 = 0x199cf8e08890d836ULL;
};

template<class ContainerAllocator>
struct DataType< ::berry_pkg::BerryKineRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "berry_pkg/BerryKineRequest";
  }

  static const char* value(const ::berry_pkg::BerryKineRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::berry_pkg::BerryKineRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 th1\n"
"float32 th2\n"
"float32 th3\n"
"float32 th4\n"
;
  }

  static const char* value(const ::berry_pkg::BerryKineRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::berry_pkg::BerryKineRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.th1);
      stream.next(m.th2);
      stream.next(m.th3);
      stream.next(m.th4);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BerryKineRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::berry_pkg::BerryKineRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::berry_pkg::BerryKineRequest_<ContainerAllocator>& v)
  {
    s << indent << "th1: ";
    Printer<float>::stream(s, indent + "  ", v.th1);
    s << indent << "th2: ";
    Printer<float>::stream(s, indent + "  ", v.th2);
    s << indent << "th3: ";
    Printer<float>::stream(s, indent + "  ", v.th3);
    s << indent << "th4: ";
    Printer<float>::stream(s, indent + "  ", v.th4);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BERRY_PKG_MESSAGE_BERRYKINEREQUEST_H
