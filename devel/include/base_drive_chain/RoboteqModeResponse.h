// Generated by gencpp from file base_drive_chain/RoboteqModeResponse.msg
// DO NOT EDIT!


#ifndef BASE_DRIVE_CHAIN_MESSAGE_ROBOTEQMODERESPONSE_H
#define BASE_DRIVE_CHAIN_MESSAGE_ROBOTEQMODERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace base_drive_chain
{
template <class ContainerAllocator>
struct RoboteqModeResponse_
{
  typedef RoboteqModeResponse_<ContainerAllocator> Type;

  RoboteqModeResponse_()
    : status(0)  {
    }
  RoboteqModeResponse_(const ContainerAllocator& _alloc)
    : status(0)  {
  (void)_alloc;
    }



   typedef int64_t _status_type;
  _status_type status;




  typedef boost::shared_ptr< ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator> const> ConstPtr;

}; // struct RoboteqModeResponse_

typedef ::base_drive_chain::RoboteqModeResponse_<std::allocator<void> > RoboteqModeResponse;

typedef boost::shared_ptr< ::base_drive_chain::RoboteqModeResponse > RoboteqModeResponsePtr;
typedef boost::shared_ptr< ::base_drive_chain::RoboteqModeResponse const> RoboteqModeResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace base_drive_chain

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'base_drive_chain': ['/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4107476a6271fc2684d94be17d33f854";
  }

  static const char* value(const ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4107476a6271fc26ULL;
  static const uint64_t static_value2 = 0x84d94be17d33f854ULL;
};

template<class ContainerAllocator>
struct DataType< ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "base_drive_chain/RoboteqModeResponse";
  }

  static const char* value(const ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 status\n\
\n\
";
  }

  static const char* value(const ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RoboteqModeResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::base_drive_chain::RoboteqModeResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<int64_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BASE_DRIVE_CHAIN_MESSAGE_ROBOTEQMODERESPONSE_H
