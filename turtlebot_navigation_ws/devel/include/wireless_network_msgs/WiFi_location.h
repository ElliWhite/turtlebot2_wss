// Generated by gencpp from file wireless_network_msgs/WiFi_location.msg
// DO NOT EDIT!


#ifndef WIRELESS_NETWORK_MSGS_MESSAGE_WIFI_LOCATION_H
#define WIRELESS_NETWORK_MSGS_MESSAGE_WIFI_LOCATION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace wireless_network_msgs
{
template <class ContainerAllocator>
struct WiFi_location_
{
  typedef WiFi_location_<ContainerAllocator> Type;

  WiFi_location_()
    : header()
    , ssid()
    , rssi(0.0)
    , xposition(0.0)
    , yposition(0.0)
    , zposition(0.0)
    , orientation(0.0)  {
    }
  WiFi_location_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , ssid(_alloc)
    , rssi(0.0)
    , xposition(0.0)
    , yposition(0.0)
    , zposition(0.0)
    , orientation(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _ssid_type;
  _ssid_type ssid;

   typedef float _rssi_type;
  _rssi_type rssi;

   typedef float _xposition_type;
  _xposition_type xposition;

   typedef float _yposition_type;
  _yposition_type yposition;

   typedef float _zposition_type;
  _zposition_type zposition;

   typedef float _orientation_type;
  _orientation_type orientation;





  typedef boost::shared_ptr< ::wireless_network_msgs::WiFi_location_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wireless_network_msgs::WiFi_location_<ContainerAllocator> const> ConstPtr;

}; // struct WiFi_location_

typedef ::wireless_network_msgs::WiFi_location_<std::allocator<void> > WiFi_location;

typedef boost::shared_ptr< ::wireless_network_msgs::WiFi_location > WiFi_locationPtr;
typedef boost::shared_ptr< ::wireless_network_msgs::WiFi_location const> WiFi_locationConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wireless_network_msgs::WiFi_location_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wireless_network_msgs::WiFi_location_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace wireless_network_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'wireless_network_msgs': ['/home/elliottwhite/turtlebot2_wss/turtlebot_navigation_ws/src/tradr-msgs/wireless_network_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::wireless_network_msgs::WiFi_location_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wireless_network_msgs::WiFi_location_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wireless_network_msgs::WiFi_location_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wireless_network_msgs::WiFi_location_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wireless_network_msgs::WiFi_location_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wireless_network_msgs::WiFi_location_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wireless_network_msgs::WiFi_location_<ContainerAllocator> >
{
  static const char* value()
  {
    return "94d5d3c9a19adc224442c55f1c86cff6";
  }

  static const char* value(const ::wireless_network_msgs::WiFi_location_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x94d5d3c9a19adc22ULL;
  static const uint64_t static_value2 = 0x4442c55f1c86cff6ULL;
};

template<class ContainerAllocator>
struct DataType< ::wireless_network_msgs::WiFi_location_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wireless_network_msgs/WiFi_location";
  }

  static const char* value(const ::wireless_network_msgs::WiFi_location_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wireless_network_msgs::WiFi_location_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
# SSID of the WiFi network\n\
string ssid \n\
\n\
# Received Signal Strength (RSS) in dBm\n\
float32 rssi \n\
\n\
# X Position of the robot\n\
float32 xposition\n\
\n\
# Y Positon of the robot\n\
float32 yposition\n\
\n\
# Z Position of the robot\n\
float32 zposition\n\
\n\
# Orientation of the robot (in radians) in robot frame\n\
float32 orientation\n\
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

  static const char* value(const ::wireless_network_msgs::WiFi_location_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wireless_network_msgs::WiFi_location_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.ssid);
      stream.next(m.rssi);
      stream.next(m.xposition);
      stream.next(m.yposition);
      stream.next(m.zposition);
      stream.next(m.orientation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WiFi_location_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wireless_network_msgs::WiFi_location_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wireless_network_msgs::WiFi_location_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "ssid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.ssid);
    s << indent << "rssi: ";
    Printer<float>::stream(s, indent + "  ", v.rssi);
    s << indent << "xposition: ";
    Printer<float>::stream(s, indent + "  ", v.xposition);
    s << indent << "yposition: ";
    Printer<float>::stream(s, indent + "  ", v.yposition);
    s << indent << "zposition: ";
    Printer<float>::stream(s, indent + "  ", v.zposition);
    s << indent << "orientation: ";
    Printer<float>::stream(s, indent + "  ", v.orientation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WIRELESS_NETWORK_MSGS_MESSAGE_WIFI_LOCATION_H