#include <ros/ros.h>
#include "std_msgs/String.h"
 
#include <sstream>

class SubscribeAndPublish
{
public:
  SubscribeAndPublish()
  {
    //Topic you want to publish
    pub = n.advertise<std_msgs::String>("chatter", 1000);
    ros::Rate loop_rate(10);

    int count = 0;
    while (ros::ok())
    {
     std_msgs::String msg;
     std::stringstream ss;
     ss << "count is " << count;
     msg.data = ss.str();
 
     ROS_INFO("%s", msg.data.c_str());
 
     pub.publish(msg);
     ros::spinOnce();
 
     loop_rate.sleep();
     ++count;
    }

    //Topic you want to subscribe
    sub = n.subscribe("chatter", 1000, &SubscribeAndPublish::callback, this);
  }

  void callback(const std_msgs::String::ConstPtr& msg)
  {
    ROS_INFO("I heard: [%s]", msg->data.c_str());
  }

private:
  ros::NodeHandle n; 
  ros::Publisher pub;
  ros::Subscriber sub;

};//End of class SubscribeAndPublish

int main(int argc, char **argv)
{
  //Initiate ROS
  ros::init(argc, argv, "pubandsub");

  //Create an object of class SubscribeAndPublish that will take care of everything
  SubscribeAndPublish SAPObject;

  //ros::spin();

  return 0;
}
