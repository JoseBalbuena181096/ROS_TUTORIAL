// Generated by gencpp from file ros_service_assignment/RectangleAreaResponse.msg
// DO NOT EDIT!


#ifndef ROS_SERVICE_ASSIGNMENT_MESSAGE_RECTANGLEAREARESPONSE_H
#define ROS_SERVICE_ASSIGNMENT_MESSAGE_RECTANGLEAREARESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_service_assignment
{
template <class ContainerAllocator>
struct RectangleAreaResponse_
{
  typedef RectangleAreaResponse_<ContainerAllocator> Type;

  RectangleAreaResponse_()
    : area(0.0)  {
    }
  RectangleAreaResponse_(const ContainerAllocator& _alloc)
    : area(0.0)  {
  (void)_alloc;
    }



   typedef float _area_type;
  _area_type area;





  typedef boost::shared_ptr< ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator> const> ConstPtr;

}; // struct RectangleAreaResponse_

typedef ::ros_service_assignment::RectangleAreaResponse_<std::allocator<void> > RectangleAreaResponse;

typedef boost::shared_ptr< ::ros_service_assignment::RectangleAreaResponse > RectangleAreaResponsePtr;
typedef boost::shared_ptr< ::ros_service_assignment::RectangleAreaResponse const> RectangleAreaResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_service_assignment

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ba46cd039de682077b3eaa09c3500c5c";
  }

  static const char* value(const ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xba46cd039de68207ULL;
  static const uint64_t static_value2 = 0x7b3eaa09c3500c5cULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_service_assignment/RectangleAreaResponse";
  }

  static const char* value(const ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 area\n\
\n\
\n\
";
  }

  static const char* value(const ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.area);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RectangleAreaResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_service_assignment::RectangleAreaResponse_<ContainerAllocator>& v)
  {
    s << indent << "area: ";
    Printer<float>::stream(s, indent + "  ", v.area);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_SERVICE_ASSIGNMENT_MESSAGE_RECTANGLEAREARESPONSE_H
