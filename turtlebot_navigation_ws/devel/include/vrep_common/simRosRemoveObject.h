// Generated by gencpp from file vrep_common/simRosRemoveObject.msg
// DO NOT EDIT!


#ifndef VREP_COMMON_MESSAGE_SIMROSREMOVEOBJECT_H
#define VREP_COMMON_MESSAGE_SIMROSREMOVEOBJECT_H

#include <ros/service_traits.h>


#include <vrep_common/simRosRemoveObjectRequest.h>
#include <vrep_common/simRosRemoveObjectResponse.h>


namespace vrep_common
{

struct simRosRemoveObject
{

typedef simRosRemoveObjectRequest Request;
typedef simRosRemoveObjectResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct simRosRemoveObject
} // namespace vrep_common


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vrep_common::simRosRemoveObject > {
  static const char* value()
  {
    return "6833353cd429b83819dab869600ce745";
  }

  static const char* value(const ::vrep_common::simRosRemoveObject&) { return value(); }
};

template<>
struct DataType< ::vrep_common::simRosRemoveObject > {
  static const char* value()
  {
    return "vrep_common/simRosRemoveObject";
  }

  static const char* value(const ::vrep_common::simRosRemoveObject&) { return value(); }
};


// service_traits::MD5Sum< ::vrep_common::simRosRemoveObjectRequest> should match 
// service_traits::MD5Sum< ::vrep_common::simRosRemoveObject > 
template<>
struct MD5Sum< ::vrep_common::simRosRemoveObjectRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vrep_common::simRosRemoveObject >::value();
  }
  static const char* value(const ::vrep_common::simRosRemoveObjectRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vrep_common::simRosRemoveObjectRequest> should match 
// service_traits::DataType< ::vrep_common::simRosRemoveObject > 
template<>
struct DataType< ::vrep_common::simRosRemoveObjectRequest>
{
  static const char* value()
  {
    return DataType< ::vrep_common::simRosRemoveObject >::value();
  }
  static const char* value(const ::vrep_common::simRosRemoveObjectRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vrep_common::simRosRemoveObjectResponse> should match 
// service_traits::MD5Sum< ::vrep_common::simRosRemoveObject > 
template<>
struct MD5Sum< ::vrep_common::simRosRemoveObjectResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vrep_common::simRosRemoveObject >::value();
  }
  static const char* value(const ::vrep_common::simRosRemoveObjectResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vrep_common::simRosRemoveObjectResponse> should match 
// service_traits::DataType< ::vrep_common::simRosRemoveObject > 
template<>
struct DataType< ::vrep_common::simRosRemoveObjectResponse>
{
  static const char* value()
  {
    return DataType< ::vrep_common::simRosRemoveObject >::value();
  }
  static const char* value(const ::vrep_common::simRosRemoveObjectResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VREP_COMMON_MESSAGE_SIMROSREMOVEOBJECT_H