#include "ros/ros.h"
#include "std_msgs/String.h"
#include "pkg/complexMsg.h" 
#include <sstream>

int main(int argc, char **argv)
{
   ros::init(argc, argv, "comptalker"); 
   ros::NodeHandle n;

   ros::Publisher chatter_pub = n.advertise<pkg::complexMsg>("compChatter", 100);

   ros::Rate loop_rate(10);

   while (ros::ok())
   {
     pkg::complexMsg comp;
     std::cout << "enter the real number";
     std::cin >> comp.first;
     std::cout << "enter the imaginary number";
     std::cin >> comp.second;

     //std_msgs::String msg;
     //std::stringstream ss;
     comp.output = "the complex number is: " + std::to_string(comp.first) + " + " + std::to_string(comp.second) + "i";
     //msg.data = ss.str();
     
     //ROS_INFO("%s", comp.output.c_str());
 
     chatter_pub.publish(comp);
     ros::spinOnce();
 
     loop_rate.sleep();
     
   }
 
   return 0;
}
