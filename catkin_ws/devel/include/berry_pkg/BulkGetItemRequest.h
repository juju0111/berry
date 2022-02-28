// Generated by gencpp from file berry_pkg/BulkGetItemRequest.msg
// DO NOT EDIT!


#ifndef BERRY_PKG_MESSAGE_BULKGETITEMREQUEST_H
#define BERRY_PKG_MESSAGE_BULKGETITEMREQUEST_H


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
struct BulkGetItemRequest_
{
  typedef BulkGetItemRequest_<ContainerAllocator> Type;

  BulkGetItemRequest_()
    : id1(0)
    , id2(0)
    , item1()
    , item2()  {
    }
  BulkGetItemRequest_(const ContainerAllocator& _alloc)
    : id1(0)
    , id2(0)
    , item1(_alloc)
    , item2(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _id1_type;
  _id1_type id1;

   typedef uint8_t _id2_type;
  _id2_type id2;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _item1_type;
  _item1_type item1;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _item2_type;
  _item2_type item2;





  typedef boost::shared_ptr< ::berry_pkg::BulkGetItemRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::berry_pkg::BulkGetItemRequest_<ContainerAllocator> const> ConstPtr;

}; // struct BulkGetItemRequest_

typedef ::berry_pkg::BulkGetItemRequest_<std::allocator<void> > BulkGetItemRequest;

typedef boost::shared_ptr< ::berry_pkg::BulkGetItemRequest > BulkGetItemRequestPtr;
typedef boost::shared_ptr< ::berry_pkg::BulkGetItemRequest const> BulkGetItemRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::berry_pkg::BulkGetItemRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::berry_pkg::BulkGetItemRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::berry_pkg::BulkGetItemRequest_<ContainerAllocator1> & lhs, const ::berry_pkg::BulkGetItemRequest_<ContainerAllocator2> & rhs)
{
  return lhs.id1 == rhs.id1 &&
    lhs.id2 == rhs.id2 &&
    lhs.item1 == rhs.item1 &&
    lhs.item2 == rhs.item2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::berry_pkg::BulkGetItemRequest_<ContainerAllocator1> & lhs, const ::berry_pkg::BulkGetItemRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace berry_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::berry_pkg::BulkGetItemRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::berry_pkg::BulkGetItemRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::berry_pkg::BulkGetItemRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::berry_pkg::BulkGetItemRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::berry_pkg::BulkGetItemRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::berry_pkg::BulkGetItemRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::berry_pkg::BulkGetItemRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f55042aa3aa499ad4bb778a05d278e5e";
  }

  static const char* value(const ::berry_pkg::BulkGetItemRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf55042aa3aa499adULL;
  static const uint64_t static_value2 = 0x4bb778a05d278e5eULL;
};

template<class ContainerAllocator>
struct DataType< ::berry_pkg::BulkGetItemRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "berry_pkg/BulkGetItemRequest";
  }

  static const char* value(const ::berry_pkg::BulkGetItemRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::berry_pkg::BulkGetItemRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 id1\n"
"uint8 id2\n"
"string item1\n"
"string item2\n"
;
  }

  static const char* value(const ::berry_pkg::BulkGetItemRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::berry_pkg::BulkGetItemRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id1);
      stream.next(m.id2);
      stream.next(m.item1);
      stream.next(m.item2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BulkGetItemRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::berry_pkg::BulkGetItemRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::berry_pkg::BulkGetItemRequest_<ContainerAllocator>& v)
  {
    s << indent << "id1: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id1);
    s << indent << "id2: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id2);
    s << indent << "item1: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.item1);
    s << indent << "item2: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.item2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BERRY_PKG_MESSAGE_BULKGETITEMREQUEST_H