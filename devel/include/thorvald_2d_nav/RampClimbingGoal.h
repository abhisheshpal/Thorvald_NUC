// Generated by gencpp from file thorvald_2d_nav/RampClimbingGoal.msg
// DO NOT EDIT!


#ifndef THORVALD_2D_NAV_MESSAGE_RAMPCLIMBINGGOAL_H
#define THORVALD_2D_NAV_MESSAGE_RAMPCLIMBINGGOAL_H


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
struct RampClimbingGoal_
{
  typedef RampClimbingGoal_<ContainerAllocator> Type;

  RampClimbingGoal_()
    : timeOut(0)  {
    }
  RampClimbingGoal_(const ContainerAllocator& _alloc)
    : timeOut(0)  {
  (void)_alloc;
    }



   typedef int64_t _timeOut_type;
  _timeOut_type timeOut;




  typedef boost::shared_ptr< ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator> const> ConstPtr;

}; // struct RampClimbingGoal_

typedef ::thorvald_2d_nav::RampClimbingGoal_<std::allocator<void> > RampClimbingGoal;

typedef boost::shared_ptr< ::thorvald_2d_nav::RampClimbingGoal > RampClimbingGoalPtr;
typedef boost::shared_ptr< ::thorvald_2d_nav::RampClimbingGoal const> RampClimbingGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "23ef38af95c519c40b2c7d883c44616f";
  }

  static const char* value(const ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x23ef38af95c519c4ULL;
  static const uint64_t static_value2 = 0x0b2c7d883c44616fULL;
};

template<class ContainerAllocator>
struct DataType< ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "thorvald_2d_nav/RampClimbingGoal";
  }

  static const char* value(const ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
int64 timeOut \n\
";
  }

  static const char* value(const ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.timeOut);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RampClimbingGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::thorvald_2d_nav::RampClimbingGoal_<ContainerAllocator>& v)
  {
    s << indent << "timeOut: ";
    Printer<int64_t>::stream(s, indent + "  ", v.timeOut);
  }
};

} // namespace message_operations
} // namespace ros

#endif // THORVALD_2D_NAV_MESSAGE_RAMPCLIMBINGGOAL_H
