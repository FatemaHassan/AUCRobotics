// Generated by gencpp from file pkg/msgs.msg
// DO NOT EDIT!


#ifndef PKG_MESSAGE_MSGS_H
#define PKG_MESSAGE_MSGS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pkg
{
template <class ContainerAllocator>
struct msgs_
{
  typedef msgs_<ContainerAllocator> Type;

  msgs_()
    : first(0)
    , second(0)
    , ouput()  {
    }
  msgs_(const ContainerAllocator& _alloc)
    : first(0)
    , second(0)
    , ouput(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _first_type;
  _first_type first;

   typedef uint32_t _second_type;
  _second_type second;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _ouput_type;
  _ouput_type ouput;





  typedef boost::shared_ptr< ::pkg::msgs_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pkg::msgs_<ContainerAllocator> const> ConstPtr;

}; // struct msgs_

typedef ::pkg::msgs_<std::allocator<void> > msgs;

typedef boost::shared_ptr< ::pkg::msgs > msgsPtr;
typedef boost::shared_ptr< ::pkg::msgs const> msgsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pkg::msgs_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pkg::msgs_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pkg::msgs_<ContainerAllocator1> & lhs, const ::pkg::msgs_<ContainerAllocator2> & rhs)
{
  return lhs.first == rhs.first &&
    lhs.second == rhs.second &&
    lhs.ouput == rhs.ouput;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pkg::msgs_<ContainerAllocator1> & lhs, const ::pkg::msgs_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pkg::msgs_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg::msgs_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg::msgs_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg::msgs_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg::msgs_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg::msgs_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pkg::msgs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f79bb8aaacd7d31ffc3bb63e0298610a";
  }

  static const char* value(const ::pkg::msgs_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf79bb8aaacd7d31fULL;
  static const uint64_t static_value2 = 0xfc3bb63e0298610aULL;
};

template<class ContainerAllocator>
struct DataType< ::pkg::msgs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pkg/msgs";
  }

  static const char* value(const ::pkg::msgs_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pkg::msgs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 first\n"
"uint32 second\n"
"string ouput\n"
;
  }

  static const char* value(const ::pkg::msgs_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pkg::msgs_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.first);
      stream.next(m.second);
      stream.next(m.ouput);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct msgs_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pkg::msgs_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pkg::msgs_<ContainerAllocator>& v)
  {
    s << indent << "first: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.first);
    s << indent << "second: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.second);
    s << indent << "ouput: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.ouput);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PKG_MESSAGE_MSGS_H
