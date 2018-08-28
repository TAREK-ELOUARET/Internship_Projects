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
    
    unsigned int a = 1; 
    //Contruct a pipeline which abstracts the device
    rs2::pipeline pipe;

    //Create a configuration for configuring the pipeline with a non default profile
    rs2::config cfg;

    //Add desired streams to configuration
    cfg.enable_stream(RS2_STREAM_INFRARED, 640, 480, RS2_FORMAT_Y8, 60);
    cfg.enable_stream(RS2_STREAM_DEPTH, 640, 480, RS2_FORMAT_Z16, 60);

    //Instruct pipeline to start streaming with the requested configuration
    pipe.start(cfg);

    String filename = "live.avi";
    VideoWriter video;

    while (true) {

    rs2::frameset frames;
    for(int i = 0; i < 30; i++)
    {
        //Wait for all configured streams to produce a frame
        frames = pipe.wait_for_frames();
    }

    //Get each frame
    rs2::frame ir_frame = frames.first(RS2_STREAM_INFRARED);
    //rs2::frame depth_frame = frames.get_depth_frame();

    // Creating OpenCV matrix from IR image
    Mat ir(Size(640, 480), CV_8UC1, (void*)ir_frame.get_data(), Mat::AUTO_STEP);

    // Apply Histogram Equalization
    equalizeHist( ir, ir );
    applyColorMap(ir, ir, COLORMAP_JET);

     if (a == 1) {
    video.open(filename, CV_FOURCC('M', 'J', 'P', 'G'), 60, ir.size(), ir.type() == CV_8UC3); a=0; }
    video.write(ir);
    imshow("Live", ir);
    ////////////////////////////////////////////////////////////////////

    char c = (char) waitKey(25);
    if (c==27) break;
    
    }

    return 0;
}
