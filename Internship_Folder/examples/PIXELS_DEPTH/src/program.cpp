#include <iostream>
#include <vector>
#include <stdio.h>
// include the librealsense C++ header file
#include <librealsense2/rs.hpp>

// include OpenCV header file
#include <opencv2/opencv.hpp>

using namespace std;
using namespace cv;


int main()
{
    
    //Contruct a pipeline which abstracts the device
    rs2::pipeline pipe;

    //Create a configuration for configuring the pipeline with a non default profile
    rs2::config cfg;

    //Add desired streams to configuration
    cfg.enable_stream(RS2_STREAM_INFRARED, 640, 480, RS2_FORMAT_Y8, 30);
    cfg.enable_stream(RS2_STREAM_DEPTH, 640, 480, RS2_FORMAT_Z16, 30);

    //Instruct pipeline to start streaming with the requested configuration
    pipe.start(cfg);

    while (true) {

    rs2::frameset frames;
    for(int i = 0; i < 30; i++)
    {
        //Wait for all configured streams to produce a frame
        frames = pipe.wait_for_frames();
    }

    //Get each frame
    rs2::frame ir_frame = frames.first(RS2_STREAM_INFRARED);
    rs2::frame depth_frame = frames.get_depth_frame();

    // Creating OpenCV matrix from IR image
    Mat ir(Size(640, 480), CV_8UC1, (void*)depth_frame.get_data(), Mat::AUTO_STEP);

    // Apply Histogram Equalization
    equalizeHist( ir, ir );
    applyColorMap(ir, ir, COLORMAP_JET);

    

   /* for (int i=0; i<ir.rows; i++){
       for (int j=0; j<ir.cols; j++){
         if (ir.at<Vec3b>(i,j) > 50)
             cout<<"The depth_Distance = "<<ir.at<Vec3b>(i,j)<< " (m)"<<endl; }}

    */
    //imwrite("/home/odroid/Pictures/live.jpg", ir);
 
    //namedWindow("Display DEpth", WINDOW_AUTOSIZE);
    //imshow("Display Depth", ir);
  
    char c = (char) waitKey(25);
    if (c==27) break;
    
    }

    return 0;
}





