// Generated by gencpp from file base_drive_chain/RoboteqMode.msg
// DO NOT EDIT!


#ifndef BASE_DRIVE_CHAIN_MESSAGE_ROBOTEQMODE_H
#define BASE_DRIVE_CHAIN_MESSAGE_ROBOTEQMODE_H

#include <ros/service_traits.h>


#include <base_drive_chain/RoboteqModeRequest.h>
#include <base_drive_chain/RoboteqModeResponse.h>


namespace base_drive_chain
{

struct RoboteqMode
{

typedef RoboteqModeRequest Request;
typedef RoboteqModeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct RoboteqMode
} // namespace base_drive_chain


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::base_drive_chain::RoboteqMode > {
  static const char* value()
  {
    return "4107476a6271fc2684d94be17d33f854";
  }

  static const char* value(const ::base_drive_chain::RoboteqMode&) { return value(); }
};

template<>
struct DataType< ::base_drive_chain::RoboteqMode > {
  static const char* value()
  {
    return "base_drive_chain/RoboteqMode";
  }

  static const char* value(const ::base_drive_chain::RoboteqMode&) { return value(); }
};


// service_traits::MD5Sum< ::base_drive_chain::RoboteqModeRequest> should match 
// service_traits::MD5Sum< ::base_drive_chain::RoboteqMode > 
template<>
struct MD5Sum< ::base_drive_chain::RoboteqModeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::base_drive_chain::RoboteqMode >::value();
  }
  static const char* value(const ::base_drive_chain::RoboteqModeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::base_drive_chain::RoboteqModeRequest> should match 
// service_traits::DataType< ::base_drive_chain::RoboteqMode > 
template<>
struct DataType< ::base_drive_chain::RoboteqModeRequest>
{
  static const char* value()
  {
    return DataType< ::base_drive_chain::RoboteqMode >::value();
  }
  static const char* value(const ::base_drive_chain::RoboteqModeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::base_drive_chain::RoboteqModeResponse> should match 
// service_traits::MD5Sum< ::base_drive_chain::RoboteqMode > 
template<>
struct MD5Sum< ::base_drive_chain::RoboteqModeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::base_drive_chain::RoboteqMode >::value();
  }
  static const char* value(const ::base_drive_chain::RoboteqModeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::base_drive_chain::RoboteqModeResponse> should match 
// service_traits::DataType< ::base_drive_chain::RoboteqMode > 
template<>
struct DataType< ::base_drive_chain::RoboteqModeResponse>
{
  static const char* value()
  {
    return DataType< ::base_drive_chain::RoboteqMode >::value();
  }
  static const char* value(const ::base_drive_chain::RoboteqModeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BASE_DRIVE_CHAIN_MESSAGE_ROBOTEQMODE_H
