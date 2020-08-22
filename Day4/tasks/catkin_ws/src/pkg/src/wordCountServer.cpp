#include "ros/ros.h"
#include "pkg/wordCount.h"
#include <iostream>
#include <string.h>
 
bool add(pkg::wordCount::Request  &req,
          pkg::wordCount::Response &res)
{
   int c = 0;
   for (int i = 0; i <= req.words.length() ; i++)
   {
	if(req.words[i] == ' ')
	   c++;
   }
   if(req.words[req.words.length()-1] != ' ')
	c++;

   res.count = c;
   ROS_INFO("request: %s", req.words.c_str());
   ROS_INFO("sending back response: [%ld]", (long int)res.count);
   return true;
}
 
int main(int argc, char **argv)
{
   ros::init(argc, argv, "word_count_service");
   ros::NodeHandle n;
 
   ros::ServiceServer service = n.advertiseService("word_count", add);
   ROS_INFO("Ready to count words");
   ros::spin();
 
   return 0;
}
