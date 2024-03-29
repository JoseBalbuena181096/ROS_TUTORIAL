#include "ros/ros.h"
#include "ros_essentials_cpp_user/AddTwoints.h"
#include <cstdlib>
int main(int argc,char **argv){
    ros::init(argc,argv,"add_two_inits_client");
    if(argc!=3){
        ROS_INFO("usage:add_two_inits_client");
        return 1;
    }
    ros::NodeHandle n;
    ros::ServiceClient client=n.serviceClient<ros_essentials_cpp_user::AddTwoints>("add_two_ints");
    ros_essentials_cpp_user::AddTwoints srv;
    srv.request.a=atoll(argv[1]);
    srv.request.b=atoll(argv[2]);
    if(client.call(srv)){
        ROS_INFO("Sum: %ld",(long int)srv.response.sum);
    }
    else{
        ROS_ERROR("Field to call service add_two_ints");
        return 1;
    }
    return 0;
}