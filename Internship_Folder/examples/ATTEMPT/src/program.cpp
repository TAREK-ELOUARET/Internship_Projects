// include the librealsense C++ header file
#include <librealsense2/rs.hpp>
#include <librealsense2/rsutil.h>
#include "example.hpp"          // Include short list of convenience function$

#include <iostream>
#include <vector>
// include OpenCV header file
#include <opencv2/opencv.hpp>
#include <math.h>

using namespace std;
using namespace cv;


float dist_3d(const rs2::depth_frame& frame);
/*int main()
{
    //Contruct a pipeline which abstracts the device
    rs2::pipeline pipe;

    rs2::config cfg;
    //Instruct pipeline to start streaming with the requested configuration
    pipe.start(cfg);
    while (true) {

    rs2::frameset frames = pipe.wait_for_frames();

    rs2::depth_frame depth = frames.get_depth_frame();

    float width = depth.get_width();
    float height = depth.get_height();
    float dist_to_center = depth.get_distance(width/2, height/2);
    cout<<" The camera is facing object " << dist_to_center<<"  meters away \r";
    }
    return 0;
}*/

float darray [480 * 640];


int main()
{
    Mat gray,image;
    float upixel[2]; // From pixel
    float upoint[3]; // From point (in 3D)

    float vpixel[2]; // To pixel
    float vpoint[3]; // To point (in 3D)

    // Copy pixels into the arrays (to match rsutil signatures)
    upixel[0] = 230;
    upixel[1] = 300;
    vpixel[0] = 240;
    vpixel[1] = 315;
//vector <vector<int>> darray;
//darray.resize(640, vector<int>(480));

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

//namedWindow("Colour", WINDOW_AUTOSIZE); namedWindow("IR", WINDOW_AUTOSIZE);


while (1) {

  rs2::frameset frames;

   //Wait for all configured streams to produce a frame
   frames = pipe.wait_for_frames();

   // Try to get a frame of a depth image
   rs2::depth_frame frame = frames.get_depth_frame();

   // darray contains distance meters of all the x,y


   //darray[i + (j * 640)] = d.get_distance(i, j);
   //cout << d.get_distance(320, 158) <<endl;


    // Query the frame for distance
    // Note: this can be optimized
    // It is not recommended to issue an API call for each pixel
    // (since the compiler can't inline these)
    // However, in this example it is not one of the bottlenecks
    auto udist = frame.get_distance(upixel[0], upixel[1]);
    auto vdist = frame.get_distance(vpixel[0], vpixel[1]);

    // Deproject from pixel to point in 3D
    auto stream = profile.get_stream(RS2_STREAM_DEPTH).as<rs2::video_stream_profile>();
    auto intr = stream.get_intrinsics(); // Calibration data

    rs2_deproject_pixel_to_point(upoint, &intr, upixel, udist);
    rs2_deproject_pixel_to_point(vpoint, &intr, vpixel, vdist);

    // Calculate euclidean distance between the two points
    float air_dist= sqrt(pow(upoint[0] - vpoint[0], 2) + pow(upoint[1] - vpoint[1], 2) + pow(upoint[2] - vpoint[2], 2));
    cout << air_dist <<endl;

   /* rs2::frame color_frame = frames.get_color_frame();
    Mat color(Size(640, 480), CV_8UC3, (void*)color_frame.get_data(), Mat::AUTO_STEP);
    cvtColor(color,gray,COLOR_BGR2GRAY);
    for ( int i=0; i<gray.rows; i++)
        for ( int j=0; j< gray.cols; j++)
    cout << gray.at<uchar>(i,j) << endl; // access each each pixel to display its value */
    //imshow("Colour", gray);

    //cout << "Image= " <<endl << " " << color << endl <<endl;
    /*// Access each pixel 
    for ( int i=0; i<color.rows; i++)
        for ( int j=0; j< color.cols; j++)
            cout << frame.at<Vec3b>(i,j)[0] << " " << frame.at<Vec3b>(i,j)[1] << " " << frame.at<Vec3b>(i,j)[2] << endl;

  //Get each frame
  rs2::frame color_frame = frames.get_color_frame();
  rs2::frame ir_frame = frames.first(RS2_STREAM_INFRARED);

   // Creating OpenCV Matrix from a color image
  Mat color(Size(640, 480), CV_8UC3, (void*)color_frame.get_data(), Mat::AUTO_STEP);
  Mat ir(Size(640, 480), CV_8UC1, (void*)ir_frame.get_data(), Mat::AUTO_STEP);


  // Display in a GUI


  imshow("Colour", color); imshow("IR", ir);*/

  char key = waitKey(30);
  if (key == 27) {
   cout << "key pressed" << endl;

   //color.release(); ir.release();

   break;
  }

}

destroyAllWindows();

return 0;
}

