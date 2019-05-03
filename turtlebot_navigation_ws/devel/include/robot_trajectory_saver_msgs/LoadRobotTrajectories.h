// Generated by gencpp from file robot_trajectory_saver_msgs/LoadRobotTrajectories.msg
// DO NOT EDIT!


#ifndef ROBOT_TRAJECTORY_SAVER_MSGS_MESSAGE_LOADROBOTTRAJECTORIES_H
#define ROBOT_TRAJECTORY_SAVER_MSGS_MESSAGE_LOADROBOTTRAJECTORIES_H

#include <ros/service_traits.h>


#include <robot_trajectory_saver_msgs/LoadRobotTrajectoriesRequest.h>
#include <robot_trajectory_saver_msgs/LoadRobotTrajectoriesResponse.h>


namespace robot_trajectory_saver_msgs
{

struct LoadRobotTrajectories
{

typedef LoadRobotTrajectoriesRequest Request;
typedef LoadRobotTrajectoriesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LoadRobotTrajectories
} // namespace robot_trajectory_saver_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_trajectory_saver_msgs::LoadRobotTrajectories > {
  static const char* value()
  {
    return "9c54a0ae5f11617005a96802ab4d5ff0";
  }

  static const char* value(const ::robot_trajectory_saver_msgs::LoadRobotTrajectories&) { return value(); }
};

template<>
struct DataType< ::robot_trajectory_saver_msgs::LoadRobotTrajectories > {
  static const char* value()
  {
    return "robot_trajectory_saver_msgs/LoadRobotTrajectories";
  }

  static const char* value(const ::robot_trajectory_saver_msgs::LoadRobotTrajectories&) { return value(); }
};


// service_traits::MD5Sum< ::robot_trajectory_saver_msgs::LoadRobotTrajectoriesRequest> should match 
// service_traits::MD5Sum< ::robot_trajectory_saver_msgs::LoadRobotTrajectories > 
template<>
struct MD5Sum< ::robot_trajectory_saver_msgs::LoadRobotTrajectoriesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_trajectory_saver_msgs::LoadRobotTrajectories >::value();
  }
  static const char* value(const ::robot_trajectory_saver_msgs::LoadRobotTrajectoriesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_trajectory_saver_msgs::LoadRobotTrajectoriesRequest> should match 
// service_traits::DataType< ::robot_trajectory_saver_msgs::LoadRobotTrajectories > 
template<>
struct DataType< ::robot_trajectory_saver_msgs::LoadRobotTrajectoriesRequest>
{
  static const char* value()
  {
    return DataType< ::robot_trajectory_saver_msgs::LoadRobotTrajectories >::value();
  }
  static const char* value(const ::robot_trajectory_saver_msgs::LoadRobotTrajectoriesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_trajectory_saver_msgs::LoadRobotTrajectoriesResponse> should match 
// service_traits::MD5Sum< ::robot_trajectory_saver_msgs::LoadRobotTrajectories > 
template<>
struct MD5Sum< ::robot_trajectory_saver_msgs::LoadRobotTrajectoriesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_trajectory_saver_msgs::LoadRobotTrajectories >::value();
  }
  static const char* value(const ::robot_trajectory_saver_msgs::LoadRobotTrajectoriesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_trajectory_saver_msgs::LoadRobotTrajectoriesResponse> should match 
// service_traits::DataType< ::robot_trajectory_saver_msgs::LoadRobotTrajectories > 
template<>
struct DataType< ::robot_trajectory_saver_msgs::LoadRobotTrajectoriesResponse>
{
  static const char* value()
  {
    return DataType< ::robot_trajectory_saver_msgs::LoadRobotTrajectories >::value();
  }
  static const char* value(const ::robot_trajectory_saver_msgs::LoadRobotTrajectoriesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_TRAJECTORY_SAVER_MSGS_MESSAGE_LOADROBOTTRAJECTORIES_H