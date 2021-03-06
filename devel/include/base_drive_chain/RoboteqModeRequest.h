// Generated by gencpp from file base_drive_chain/RoboteqModeRequest.msg
// DO NOT EDIT!


#ifndef BASE_DRIVE_CHAIN_MESSAGE_ROBOTEQMODEREQUEST_H
#define BASE_DRIVE_CHAIN_MESSAGE_ROBOTEQMODEREQUEST_H


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
struct RoboteqModeRequest_
{
  typedef RoboteqModeRequest_<ContainerAllocator> Type;

  RoboteqModeRequest_()
    {
    }
  RoboteqModeRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RoboteqModeRequest_

typedef ::base_drive_chain::RoboteqModeRequest_<std::allocator<void> > RoboteqModeRequest;

typedef boost::shared_ptr< ::base_drive_chain::RoboteqModeRequest > RoboteqModeRequestPtr;
typedef boost::shared_ptr< ::base_drive_chain::RoboteqModeRequest const> RoboteqModeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "base_drive_chain/RoboteqModeRequest";
  }

  static const char* value(const ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RoboteqModeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::base_drive_chain::RoboteqModeRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // BASE_DRIVE_CHAIN_MESSAGE_ROBOTEQMODEREQUEST_H
