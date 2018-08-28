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

using namespace std;
using namespace cv;


static void drawOptFlowMap(const Mat& flow, Mat& cflowmap, double scale, int step, const Scalar& color)
{
	for (int y = 0; y < cflowmap.rows; y += step)
		for (int x = 0; x < cflowmap.cols; x += step)
		{
			const Point2f& fxy = flow.at<Point2f>(y, x) * scale;
			line(cflowmap, Point(x, y), Point(cvRound(x + fxy.x), cvRound(y + fxy.y)), color);
			circle(cflowmap, Point(x, y), 2, color, -1);
		}
}

int main(int argc, char** argv)
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
	

	Mat flow, cflow, frame, gray, prevgray;
	vector<vector<Point> > contours;
	vector<Vec4i> hierarchy; 

	namedWindow("flow", 1);

	for (;;)
	{
		rs2::frameset frames;
                frames = pipe.wait_for_frames();

                rs2::frame color_frame = frames.get_color_frame();
                Mat COLOR_IMAGE(Size(640, 480), CV_8UC3, (void*)color_frame.get_data(), Mat::AUTO_STEP);
                COLOR_IMAGE.copyTo(frame);
                cvtColor(frame, gray, COLOR_BGR2GRAY);

		if (!prevgray.empty())
		{
			//calcOpticalFlowFarneback(prevgray, gray, flow, 0.5, 5, 16, 3, 5, 1.2, OPTFLOW_FARNEBACK_GAUSSIAN);
			// calculate dense optical flow
			calcOpticalFlowFarneback(
				prevgray,
				gray,
				flow, // computed flow image that has the same size as prev and type CV_32FC2
				0.5,  // image scale: < 1 to build pyramids for each image. 0.5 means a
					  // classical pyramid, where each next layer is twice smalller than the
					  // previous one
				5,    // number of pyramid layers
				15,   // averaging windows size. larger values increase the algorithm robustness
					  // to image noise and give more chances for fast motion detection, but
					  // yields more blurred motion field
				3,    // number of iterations for each pyramid level
				5,    // size of the pixel neighborhood used to find the polynomial expansion
					  // in each pixel
				1.1,  // standard deviation of the Gaussian used to smooth derivations
				OPTFLOW_FARNEBACK_GAUSSIAN     // flags
			);

			cvtColor(prevgray, cflow, COLOR_GRAY2BGR);
			drawOptFlowMap(flow, cflow, 1.5, 16, CV_RGB(0, 255, 0));
			imshow("flow", cflow);
                 }
         		char c = (char)waitKey(5);
			if (c == 27) break;
		std::swap(prevgray, gray);

	}
	return 0;
}

