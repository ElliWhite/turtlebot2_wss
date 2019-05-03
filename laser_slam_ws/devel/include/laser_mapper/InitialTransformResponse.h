// Generated by gencpp from file laser_mapper/InitialTransformResponse.msg
// DO NOT EDIT!


#ifndef LASER_MAPPER_MESSAGE_INITIALTRANSFORMRESPONSE_H
#define LASER_MAPPER_MESSAGE_INITIALTRANSFORMRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Bool.h>

namespace laser_mapper
{
template <class ContainerAllocator>
struct InitialTransformResponse_
{
  typedef InitialTransformResponse_<ContainerAllocator> Type;

  InitialTransformResponse_()
    : success()  {
    }
  InitialTransformResponse_(const ContainerAllocator& _alloc)
    : success(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Bool_<ContainerAllocator>  _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::laser_mapper::InitialTransformResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::laser_mapper::InitialTransformResponse_<ContainerAllocator> const> ConstPtr;

}; // struct InitialTransformResponse_

typedef ::laser_mapper::InitialTransformResponse_<std::allocator<void> > InitialTransformResponse;

typedef boost::shared_ptr< ::laser_mapper::InitialTransformResponse > InitialTransformResponsePtr;
typedef boost::shared_ptr< ::laser_mapper::InitialTransformResponse const> InitialTransformResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::laser_mapper::InitialTransformResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::laser_mapper::InitialTransformResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace laser_mapper

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'roscpp': ['/opt/ros/kinetic/share/roscpp/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg'], 'tf': ['/opt/ros/kinetic/share/tf/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::laser_mapper::InitialTransformResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::laser_mapper::InitialTransformResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::laser_mapper::InitialTransformResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::laser_mapper::InitialTransformResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::laser_mapper::InitialTransformResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::laser_mapper::InitialTransformResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::laser_mapper::InitialTransformResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5f31cb2e813cfb0e488c574c3b5d9dbe";
  }

  static const char* value(const ::laser_mapper::InitialTransformResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5f31cb2e813cfb0eULL;
  static const uint64_t static_value2 = 0x488c574c3b5d9dbeULL;
};

template<class ContainerAllocator>
struct DataType< ::laser_mapper::InitialTransformResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "laser_mapper/InitialTransformResponse";
  }

  static const char* value(const ::laser_mapper::InitialTransformResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::laser_mapper::InitialTransformResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
std_msgs/Bool success\n\
\n\
================================================================================\n\
MSG: std_msgs/Bool\n\
bool data\n\
";
  }

  static const char* value(const ::laser_mapper::InitialTransformResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::laser_mapper::InitialTransformResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct InitialTransformResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::laser_mapper::InitialTransformResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::laser_mapper::InitialTransformResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LASER_MAPPER_MESSAGE_INITIALTRANSFORMRESPONSE_H