#include "ros/ros.h"
#include "ros_essentials_cpp_user/AddTwoints.h"
bool add(ros_essentials_cpp_user::AddTwoints::Request &req,ros_essentials_cpp_user::AddTwoints::Response &res){
    res.sum=req.a+req.b;
    ROS_INFO("request x=%ld , y=%ld",(long int)req.a,(long int)req.b);
    ROS_INFO("seding back response: [%ld]",(long int)res.sum);
    return true;
}

int main(int argc,char **argv){
    ros::init(argc,argv,"add_two_init_server");
    ros::NodeHandle n;

    ros::ServiceServer service=n.advertiseService("add_two_ints",add);

    ROS_INFO("Ready to add two inits");
    ros::spin();
    return 0;
}