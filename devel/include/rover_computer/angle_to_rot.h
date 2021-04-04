// Generated by gencpp from file rover_computer/angle_to_rot.msg
// DO NOT EDIT!


#ifndef ROVER_COMPUTER_MESSAGE_ANGLE_TO_ROT_H
#define ROVER_COMPUTER_MESSAGE_ANGLE_TO_ROT_H

#include <ros/service_traits.h>


#include <rover_computer/angle_to_rotRequest.h>
#include <rover_computer/angle_to_rotResponse.h>


namespace rover_computer
{

struct angle_to_rot
{

typedef angle_to_rotRequest Request;
typedef angle_to_rotResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct angle_to_rot
} // namespace rover_computer


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rover_computer::angle_to_rot > {
  static const char* value()
  {
    return "c9b6a830186d1c75fbda1fb5dd9334cf";
  }

  static const char* value(const ::rover_computer::angle_to_rot&) { return value(); }
};

template<>
struct DataType< ::rover_computer::angle_to_rot > {
  static const char* value()
  {
    return "rover_computer/angle_to_rot";
  }

  static const char* value(const ::rover_computer::angle_to_rot&) { return value(); }
};


// service_traits::MD5Sum< ::rover_computer::angle_to_rotRequest> should match
// service_traits::MD5Sum< ::rover_computer::angle_to_rot >
template<>
struct MD5Sum< ::rover_computer::angle_to_rotRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rover_computer::angle_to_rot >::value();
  }
  static const char* value(const ::rover_computer::angle_to_rotRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rover_computer::angle_to_rotRequest> should match
// service_traits::DataType< ::rover_computer::angle_to_rot >
template<>
struct DataType< ::rover_computer::angle_to_rotRequest>
{
  static const char* value()
  {
    return DataType< ::rover_computer::angle_to_rot >::value();
  }
  static const char* value(const ::rover_computer::angle_to_rotRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rover_computer::angle_to_rotResponse> should match
// service_traits::MD5Sum< ::rover_computer::angle_to_rot >
template<>
struct MD5Sum< ::rover_computer::angle_to_rotResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rover_computer::angle_to_rot >::value();
  }
  static const char* value(const ::rover_computer::angle_to_rotResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rover_computer::angle_to_rotResponse> should match
// service_traits::DataType< ::rover_computer::angle_to_rot >
template<>
struct DataType< ::rover_computer::angle_to_rotResponse>
{
  static const char* value()
  {
    return DataType< ::rover_computer::angle_to_rot >::value();
  }
  static const char* value(const ::rover_computer::angle_to_rotResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROVER_COMPUTER_MESSAGE_ANGLE_TO_ROT_H
