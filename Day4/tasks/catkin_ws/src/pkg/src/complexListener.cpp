#include "ros/ros.h"
#include "std_msgs/String.h"
#include "pkg/complexMsg.h"

void chatterCallback(const pkg::complexMsg msg)
{
   ROS_INFO("I heard: [%s]", msg.output.c_str());
}
 
int main(int argc, char **argv)
{

   ros::init(argc, argv, "complistener");

   ros::NodeHandle n;

   ros::Subscriber sub = n.subscribe("compChatter", 1000, chatterCallback);

   ros::spin();
 
   return 0;
 }
