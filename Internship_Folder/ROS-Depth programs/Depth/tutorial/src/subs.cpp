#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>
#include <std_msgs/Float32.h>
#include <iostream> 
 
//ros::Publisher distance;
void chatterCallback(const std_msgs::Float32::ConstPtr& msg)
{
    ROS_INFO("Distance: %f", msg->data);
    //distance.publish(msg);
    
}
 
 
int main(int argc, char **argv){
 
    ros::init(argc, argv, "cordonnes");
    //ros::NodeHandle n("~");
    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("pc2", 10, chatterCallback);
    
    /*distance = n.advertise<std_msgs::Float32>("Arduino_distance", 10);
    ros::Rate loop_rate(50);
   
    while (ros::ok()) {

    ros::spinOnce();
    loop_rate.sleep();
    } */
    ros::spin();
    return 0;
} 



