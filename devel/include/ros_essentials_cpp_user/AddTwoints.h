// Generated by gencpp from file ros_essentials_cpp_user/AddTwoints.msg
// DO NOT EDIT!


#ifndef ROS_ESSENTIALS_CPP_USER_MESSAGE_ADDTWOINTS_H
#define ROS_ESSENTIALS_CPP_USER_MESSAGE_ADDTWOINTS_H

#include <ros/service_traits.h>


#include <ros_essentials_cpp_user/AddTwointsRequest.h>
#include <ros_essentials_cpp_user/AddTwointsResponse.h>


namespace ros_essentials_cpp_user
{

struct AddTwoints
{

typedef AddTwointsRequest Request;
typedef AddTwointsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTwoints
} // namespace ros_essentials_cpp_user


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_essentials_cpp_user::AddTwoints > {
  static const char* value()
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const ::ros_essentials_cpp_user::AddTwoints&) { return value(); }
};

template<>
struct DataType< ::ros_essentials_cpp_user::AddTwoints > {
  static const char* value()
  {
    return "ros_essentials_cpp_user/AddTwoints";
  }

  static const char* value(const ::ros_essentials_cpp_user::AddTwoints&) { return value(); }
};


// service_traits::MD5Sum< ::ros_essentials_cpp_user::AddTwointsRequest> should match 
// service_traits::MD5Sum< ::ros_essentials_cpp_user::AddTwoints > 
template<>
struct MD5Sum< ::ros_essentials_cpp_user::AddTwointsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_essentials_cpp_user::AddTwoints >::value();
  }
  static const char* value(const ::ros_essentials_cpp_user::AddTwointsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_essentials_cpp_user::AddTwointsRequest> should match 
// service_traits::DataType< ::ros_essentials_cpp_user::AddTwoints > 
template<>
struct DataType< ::ros_essentials_cpp_user::AddTwointsRequest>
{
  static const char* value()
  {
    return DataType< ::ros_essentials_cpp_user::AddTwoints >::value();
  }
  static const char* value(const ::ros_essentials_cpp_user::AddTwointsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_essentials_cpp_user::AddTwointsResponse> should match 
// service_traits::MD5Sum< ::ros_essentials_cpp_user::AddTwoints > 
template<>
struct MD5Sum< ::ros_essentials_cpp_user::AddTwointsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_essentials_cpp_user::AddTwoints >::value();
  }
  static const char* value(const ::ros_essentials_cpp_user::AddTwointsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_essentials_cpp_user::AddTwointsResponse> should match 
// service_traits::DataType< ::ros_essentials_cpp_user::AddTwoints > 
template<>
struct DataType< ::ros_essentials_cpp_user::AddTwointsResponse>
{
  static const char* value()
  {
    return DataType< ::ros_essentials_cpp_user::AddTwoints >::value();
  }
  static const char* value(const ::ros_essentials_cpp_user::AddTwointsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_ESSENTIALS_CPP_USER_MESSAGE_ADDTWOINTS_H
