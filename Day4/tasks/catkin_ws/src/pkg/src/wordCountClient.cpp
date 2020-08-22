#include "ros/ros.h"
#include "pkg/wordCount.h"
#include <cstdlib>
#include <string.h>

int main(int argc, char **argv)
{
   ros::init(argc, argv, "word_count_client");

   ros::NodeHandle n;
   ros::ServiceClient client = n.serviceClient<pkg::wordCount>("word_count");
   pkg::wordCount srv;
   getline(std::cin, srv.request.words);
   //srv.request.words = argv[0];
   if (client.call(srv))
   {
     ROS_INFO("count: %ld", (long int)srv.response.count);
   }
   else
   {
     ROS_ERROR("Failed to call service word_count");
     return 1;
   }
 
   return 0;
}
