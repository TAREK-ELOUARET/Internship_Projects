#include "ros/ros.h"
#include <pcl/point_types.h>
#include "sensor_msgs/PointCloud2.h"
#include <pcl/point_cloud.h>
#include <pcl_conversions/pcl_conversions.h>
#include <sweep/sweep.hpp>
#include <std_msgs/Float32.h>
#include <std_msgs/String.h>

void publish_scan(ros::Publisher *pub,
                  const sweep::scan *scan, std::string frame_id)
{
    pcl::PointCloud <pcl::PointXYZ> cloud;
    sensor_msgs::PointCloud2 cloud_msg;
    ros::Time ros_now = ros::Time::now();

    float angle;
    int32_t range;
    float x;
    float y;
    int i = 0;

    cloud.height = 1;
    cloud.width = scan->samples.size();
    cloud.points.resize(cloud.width * cloud.height);

    for (const sweep::sample& sample : scan->samples)
    {
        range = sample.distance;
        angle = ((float)sample.angle / 1000); //millidegrees to degrees

        //Polar to Cartesian Conversion
        x = (range * cos(DEG2RAD(angle))) / 100;
        y = (range * sin(DEG2RAD(angle))) / 100;

        cloud.points[i].x = x;
        cloud.points[i].y = y;
        i++;

        std_msgs::Float32 msg;
        msg.data = range;
        pub->publish(msg);
    }

    //Convert pcl PC to ROS PC2
    pcl::toROSMsg(cloud, cloud_msg);
    cloud_msg.header.frame_id = frame_id;
    cloud_msg.header.stamp = ros_now;

    ROS_DEBUG("Publishing a full scan");
    //pub->publish(cloud_msg);  
    
}


int main(int argc, char *argv[]) try
{
    //Initialize Node and handles
    ros::init(argc, argv, "sweep_node");
    ros::NodeHandle nh;
    ros::NodeHandle nh_private("~");

    //Get Serial Parameters
    std::string serial_port;
    nh_private.param<std::string>("serial_port", serial_port, "/dev/ttyUSB0");
    int serial_baudrate;
    nh_private.param<int>("serial_baudrate", serial_baudrate, 115200);

    //Get Scanner Parameters
    int rotation_speed;
    nh_private.param<int>("rotation_speed", rotation_speed, 5);

    int sample_rate;
    nh_private.param<int>("sample_rate", sample_rate, 500);

    //Get frame id Parameters
    std::string frame_id;
    nh_private.param<std::string>("frame_id", frame_id, "laser_frame");

    //Setup Publisher

    ros::Publisher scan_pub = nh.advertise<std_msgs::Float32>("pc2", 1000);

    //Create Sweep Driver Object
    sweep::sweep device{serial_port.c_str()};

    //Send Rotation Speed
    device.set_motor_speed(rotation_speed);

    //Send Sample Rate
    device.set_sample_rate(sample_rate);

    ROS_INFO("expected rotation frequency: %d (Hz)", rotation_speed);

    //Start Scan
    device.start_scanning();

    while (ros::ok())
    {
        //Grab Full Scan
        const sweep::scan scan = device.get_scan();

        publish_scan(&scan_pub, &scan, frame_id);

        ros::spinOnce();
    }


    //Stop Scanning & Destroy Driver
    device.stop_scanning();
}

    catch (const sweep::device_error& e) {
      std::cerr << "Error: " << e.what() << std::endl;
}