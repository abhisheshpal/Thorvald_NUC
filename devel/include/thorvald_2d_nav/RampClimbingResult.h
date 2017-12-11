// Generated by gencpp from file thorvald_2d_nav/RampClimbingResult.msg
// DO NOT EDIT!


#ifndef THORVALD_2D_NAV_MESSAGE_RAMPCLIMBINGRESULT_H
#define THORVALD_2D_NAV_MESSAGE_RAMPCLIMBINGRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace thorvald_2d_nav
{
template <class ContainerAllocator>
struct RampClimbingResult_
{
  typedef RampClimbingResult_<ContainerAllocator> Type;

  RampClimbingResult_()
    : dummy(0)  {
    }
  RampClimbingResult_(const ContainerAllocator& _alloc)
    : dummy(0)  {
  (void)_alloc;
    }



   typedef int64_t _dummy_type;
  _dummy_type dummy;




  typedef boost::shared_ptr< ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator> const> ConstPtr;

}; // struct RampClimbingResult_

typedef ::thorvald_2d_nav::RampClimbingResult_<std::allocator<void> > RampClimbingResult;

typedef boost::shared_ptr< ::thorvald_2d_nav::RampClimbingResult > RampClimbingResultPtr;
typedef boost::shared_ptr< ::thorvald_2d_nav::RampClimbingResult const> RampClimbingResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace thorvald_2d_nav

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'thorvald_2d_nav': ['/home/vigneshnuc/catkin_ws/devel/share/thorvald_2d_nav/msg'], 'move_base_msgs': ['/opt/ros/kinetic/share/move_base_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a62b28fdf54afb8d2ce8b90d7336086";
  }

  static const char* value(const ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a62b28fdf54afb8ULL;
  static const uint64_t static_value2 = 0xd2ce8b90d7336086ULL;
};

template<class ContainerAllocator>
struct DataType< ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "thorvald_2d_nav/RampClimbingResult";
  }

  static const char* value(const ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
int64 dummy \n\
";
  }

  static const char* value(const ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.dummy);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RampClimbingResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::thorvald_2d_nav::RampClimbingResult_<ContainerAllocator>& v)
  {
    s << indent << "dummy: ";
    Printer<int64_t>::stream(s, indent + "  ", v.dummy);
  }
};

} // namespace message_operations
} // namespace ros

#endif // THORVALD_2D_NAV_MESSAGE_RAMPCLIMBINGRESULT_H