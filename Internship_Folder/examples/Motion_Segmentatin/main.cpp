/*
 * Robust motion segmentation
 * by Jakub Vojvoda, vojvoda@swdeveloper.sk
 * 2016
 *
 * licence: GNU LGPL v3
 * file: main.cpp
 *
 */

#include "src/motionsegmentation.h"
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream> // for standard I/O
#include <string>   // for strings
#include <iomanip>  // for controlling float print precision
#include <sstream>  // string to number conversion
#include <opencv2/core.hpp>     // Basic OpenCV structures (cv::Mat, Scalar)
#include <opencv2/imgproc.hpp>  // Gaussian Blur
#include <opencv2/videoio.hpp>
#include <opencv2/highgui.hpp>  // OpenCV window I/O
#include "opencv2/video/tracking.hpp"

#include <librealsense2/rs.hpp>
#include <librealsense2/rsutil.h>
#include "example.hpp"          // Include short list of convenience function$
#include <math.h>
#include <ctype.h>
#include <vector>

using namespace cv;

int main(int argc, char **argv)
{
        //Contruct a pipeline which abstracts the device
        rs2::pipeline pipe;

        //Create a configuration for configuring the pipeline with a non default profile
        rs2::config cfg;
  
        //Add desired streams to configuration
        cfg.enable_stream(RS2_STREAM_COLOR, 640, 480, RS2_FORMAT_BGR8, 15);
        cfg.enable_stream(RS2_STREAM_INFRARED, 640, 480, RS2_FORMAT_Y8, 15);
        cfg.enable_stream(RS2_STREAM_DEPTH, 640, 480, RS2_FORMAT_Z16, 15);


        //Instruct pipeline to start streaming with the requested configuration
        auto profile = pipe.start(cfg);

        MotionSegmentation motion;
        Mat frame;

    while (1) {

        rs2::frameset frames;
        frames = pipe.wait_for_frames();

        rs2::frame color_frame = frames.get_color_frame();
        Mat COLOR_IMAGE(Size(640, 480), CV_8UC3, (void*)color_frame.get_data(), Mat::AUTO_STEP);
        COLOR_IMAGE.copyTo(frame);

        // TODO: command-line arguments parsing
        Mat segm = motion.segment(frame, 12.0, 0.25, 0.25, 0.25, 0.25);
        Mat result = motion.computeMask(segm, 7, 5, 80.0);

        imshow("Motion segmentation", result);

        if (waitKey(1) > 0) {
            break;
        }
    }
}



