// Generated by gencpp from file vrep_common/simRosGetObjectHandle.msg
// DO NOT EDIT!


#ifndef VREP_COMMON_MESSAGE_SIMROSGETOBJECTHANDLE_H
#define VREP_COMMON_MESSAGE_SIMROSGETOBJECTHANDLE_H

#include <ros/service_traits.h>


#include <vrep_common/simRosGetObjectHandleRequest.h>
#include <vrep_common/simRosGetObjectHandleResponse.h>


namespace vrep_common
{

struct simRosGetObjectHandle
{

typedef simRosGetObjectHandleRequest Request;
typedef simRosGetObjectHandleResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct simRosGetObjectHandle
} // namespace vrep_common


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vrep_common::simRosGetObjectHandle > {
  static const char* value()
  {
    return "5ede8bf5f32716bfd1ea7a68b46333e8";
  }

  static const char* value(const ::vrep_common::simRosGetObjectHandle&) { return value(); }
};

template<>
struct DataType< ::vrep_common::simRosGetObjectHandle > {
  static const char* value()
  {
    return "vrep_common/simRosGetObjectHandle";
  }

  static const char* value(const ::vrep_common::simRosGetObjectHandle&) { return value(); }
};


// service_traits::MD5Sum< ::vrep_common::simRosGetObjectHandleRequest> should match 
// service_traits::MD5Sum< ::vrep_common::simRosGetObjectHandle > 
template<>
struct MD5Sum< ::vrep_common::simRosGetObjectHandleRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vrep_common::simRosGetObjectHandle >::value();
  }
  static const char* value(const ::vrep_common::simRosGetObjectHandleRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vrep_common::simRosGetObjectHandleRequest> should match 
// service_traits::DataType< ::vrep_common::simRosGetObjectHandle > 
template<>
struct DataType< ::vrep_common::simRosGetObjectHandleRequest>
{
  static const char* value()
  {
    return DataType< ::vrep_common::simRosGetObjectHandle >::value();
  }
  static const char* value(const ::vrep_common::simRosGetObjectHandleRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vrep_common::simRosGetObjectHandleResponse> should match 
// service_traits::MD5Sum< ::vrep_common::simRosGetObjectHandle > 
template<>
struct MD5Sum< ::vrep_common::simRosGetObjectHandleResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vrep_common::simRosGetObjectHandle >::value();
  }
  static const char* value(const ::vrep_common::simRosGetObjectHandleResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vrep_common::simRosGetObjectHandleResponse> should match 
// service_traits::DataType< ::vrep_common::simRosGetObjectHandle > 
template<>
struct DataType< ::vrep_common::simRosGetObjectHandleResponse>
{
  static const char* value()
  {
    return DataType< ::vrep_common::simRosGetObjectHandle >::value();
  }
  static const char* value(const ::vrep_common::simRosGetObjectHandleResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VREP_COMMON_MESSAGE_SIMROSGETOBJECTHANDLE_H