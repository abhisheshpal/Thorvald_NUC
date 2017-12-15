// Generated by gencpp from file thorvald_2d_nav/control_commands.msg
// DO NOT EDIT!


#ifndef THORVALD_2D_NAV_MESSAGE_CONTROL_COMMANDS_H
#define THORVALD_2D_NAV_MESSAGE_CONTROL_COMMANDS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace thorvald_2d_nav
{
template <class ContainerAllocator>
struct control_commands_
{
  typedef control_commands_<ContainerAllocator> Type;

  control_commands_()
    : header()
    , drive_mode(0)
    , vel()
    , position()  {
    }
  control_commands_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , drive_mode(0)
    , vel(_alloc)
    , position(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int16_t _drive_mode_type;
  _drive_mode_type drive_mode;

   typedef std::vector<int16_t, typename ContainerAllocator::template rebind<int16_t>::other >  _vel_type;
  _vel_type vel;

   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _position_type;
  _position_type position;




  typedef boost::shared_ptr< ::thorvald_2d_nav::control_commands_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::thorvald_2d_nav::control_commands_<ContainerAllocator> const> ConstPtr;

}; // struct control_commands_

typedef ::thorvald_2d_nav::control_commands_<std::allocator<void> > control_commands;

typedef boost::shared_ptr< ::thorvald_2d_nav::control_commands > control_commandsPtr;
typedef boost::shared_ptr< ::thorvald_2d_nav::control_commands const> control_commandsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::thorvald_2d_nav::control_commands_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::thorvald_2d_nav::control_commands_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace thorvald_2d_nav

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'thorvald_2d_nav': ['/home/vigneshnuc/catkin_ws/src/thorvald_2d_nav/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::thorvald_2d_nav::control_commands_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::thorvald_2d_nav::control_commands_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::thorvald_2d_nav::control_commands_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::thorvald_2d_nav::control_commands_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::thorvald_2d_nav::control_commands_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::thorvald_2d_nav::control_commands_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::thorvald_2d_nav::control_commands_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ce831b56ace7f536470f4f55811bd8a4";
  }

  static const char* value(const ::thorvald_2d_nav::control_commands_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xce831b56ace7f536ULL;
  static const uint64_t static_value2 = 0x470f4f55811bd8a4ULL;
};

template<class ContainerAllocator>
struct DataType< ::thorvald_2d_nav::control_commands_<ContainerAllocator> >
{
  static const char* value()
  {
    return "thorvald_2d_nav/control_commands";
  }

  static const char* value(const ::thorvald_2d_nav::control_commands_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::thorvald_2d_nav::control_commands_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
int16 drive_mode\n\
int16[] vel\n\
int32[] position\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::thorvald_2d_nav::control_commands_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::thorvald_2d_nav::control_commands_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.drive_mode);
      stream.next(m.vel);
      stream.next(m.position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct control_commands_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::thorvald_2d_nav::control_commands_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::thorvald_2d_nav::control_commands_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "drive_mode: ";
    Printer<int16_t>::stream(s, indent + "  ", v.drive_mode);
    s << indent << "vel[]" << std::endl;
    for (size_t i = 0; i < v.vel.size(); ++i)
    {
      s << indent << "  vel[" << i << "]: ";
      Printer<int16_t>::stream(s, indent + "  ", v.vel[i]);
    }
    s << indent << "position[]" << std::endl;
    for (size_t i = 0; i < v.position.size(); ++i)
    {
      s << indent << "  position[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.position[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // THORVALD_2D_NAV_MESSAGE_CONTROL_COMMANDS_H