// Generated by gencpp from file ros_essentials_cpp_user/AddTwointsResponse.msg
// DO NOT EDIT!


#ifndef ROS_ESSENTIALS_CPP_USER_MESSAGE_ADDTWOINTSRESPONSE_H
#define ROS_ESSENTIALS_CPP_USER_MESSAGE_ADDTWOINTSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_essentials_cpp_user
{
template <class ContainerAllocator>
struct AddTwointsResponse_
{
  typedef AddTwointsResponse_<ContainerAllocator> Type;

  AddTwointsResponse_()
    : sum(0)  {
    }
  AddTwointsResponse_(const ContainerAllocator& _alloc)
    : sum(0)  {
  (void)_alloc;
    }



   typedef int64_t _sum_type;
  _sum_type sum;





  typedef boost::shared_ptr< ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct AddTwointsResponse_

typedef ::ros_essentials_cpp_user::AddTwointsResponse_<std::allocator<void> > AddTwointsResponse;

typedef boost::shared_ptr< ::ros_essentials_cpp_user::AddTwointsResponse > AddTwointsResponsePtr;
typedef boost::shared_ptr< ::ros_essentials_cpp_user::AddTwointsResponse const> AddTwointsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_essentials_cpp_user

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'ros_essentials_cpp_user': ['/home/jose/catkin_ws/src/ros_essentials_cpp_user/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b88405221c77b1878a3cbbfff53428d7";
  }

  static const char* value(const ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb88405221c77b187ULL;
  static const uint64_t static_value2 = 0x8a3cbbfff53428d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_essentials_cpp_user/AddTwointsResponse";
  }

  static const char* value(const ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 sum\n\
\n\
";
  }

  static const char* value(const ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AddTwointsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_essentials_cpp_user::AddTwointsResponse_<ContainerAllocator>& v)
  {
    s << indent << "sum: ";
    Printer<int64_t>::stream(s, indent + "  ", v.sum);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_ESSENTIALS_CPP_USER_MESSAGE_ADDTWOINTSRESPONSE_H
