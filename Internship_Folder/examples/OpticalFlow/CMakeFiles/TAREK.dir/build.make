# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/odroid/librealsense-2.10.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/odroid/librealsense-2.10.0

# Include any dependencies generated for this target.
include examples/OpticalFlow/CMakeFiles/TAREK.dir/depend.make

# Include the progress variables for this target.
include examples/OpticalFlow/CMakeFiles/TAREK.dir/progress.make

# Include the compile flags for this target's objects.
include examples/OpticalFlow/CMakeFiles/TAREK.dir/flags.make

examples/OpticalFlow/CMakeFiles/TAREK.dir/src/program.cpp.o: examples/OpticalFlow/CMakeFiles/TAREK.dir/flags.make
examples/OpticalFlow/CMakeFiles/TAREK.dir/src/program.cpp.o: examples/OpticalFlow/src/program.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/odroid/librealsense-2.10.0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/OpticalFlow/CMakeFiles/TAREK.dir/src/program.cpp.o"
	cd /home/odroid/librealsense-2.10.0/examples/OpticalFlow && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TAREK.dir/src/program.cpp.o -c /home/odroid/librealsense-2.10.0/examples/OpticalFlow/src/program.cpp

examples/OpticalFlow/CMakeFiles/TAREK.dir/src/program.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TAREK.dir/src/program.cpp.i"
	cd /home/odroid/librealsense-2.10.0/examples/OpticalFlow && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/odroid/librealsense-2.10.0/examples/OpticalFlow/src/program.cpp > CMakeFiles/TAREK.dir/src/program.cpp.i

examples/OpticalFlow/CMakeFiles/TAREK.dir/src/program.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TAREK.dir/src/program.cpp.s"
	cd /home/odroid/librealsense-2.10.0/examples/OpticalFlow && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/odroid/librealsense-2.10.0/examples/OpticalFlow/src/program.cpp -o CMakeFiles/TAREK.dir/src/program.cpp.s

examples/OpticalFlow/CMakeFiles/TAREK.dir/src/program.cpp.o.requires:

.PHONY : examples/OpticalFlow/CMakeFiles/TAREK.dir/src/program.cpp.o.requires

examples/OpticalFlow/CMakeFiles/TAREK.dir/src/program.cpp.o.provides: examples/OpticalFlow/CMakeFiles/TAREK.dir/src/program.cpp.o.requires
	$(MAKE) -f examples/OpticalFlow/CMakeFiles/TAREK.dir/build.make examples/OpticalFlow/CMakeFiles/TAREK.dir/src/program.cpp.o.provides.build
.PHONY : examples/OpticalFlow/CMakeFiles/TAREK.dir/src/program.cpp.o.provides

examples/OpticalFlow/CMakeFiles/TAREK.dir/src/program.cpp.o.provides.build: examples/OpticalFlow/CMakeFiles/TAREK.dir/src/program.cpp.o


# Object files for target TAREK
TAREK_OBJECTS = \
"CMakeFiles/TAREK.dir/src/program.cpp.o"

# External object files for target TAREK
TAREK_EXTERNAL_OBJECTS =

examples/OpticalFlow/TAREK: examples/OpticalFlow/CMakeFiles/TAREK.dir/src/program.cpp.o
examples/OpticalFlow/TAREK: examples/OpticalFlow/CMakeFiles/TAREK.dir/build.make
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_stitching.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_videostab.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_superres.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_hfs.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_dnn_objdetect.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_freetype.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_img_hash.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_face.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_structured_light.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_line_descriptor.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_bioinspired.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_tracking.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_reg.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_saliency.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_rgbd.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_optflow.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_aruco.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_xfeatures2d.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_ccalib.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_dpm.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_surface_matching.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_stereo.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_xphoto.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_fuzzy.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_bgsegm.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_datasets.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_plot.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_xobjdetect.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_phase_unwrapping.so.3.4.2
examples/OpticalFlow/TAREK: librealsense2.so.2.10.0
examples/OpticalFlow/TAREK: /usr/lib/arm-linux-gnueabihf/libGL.so
examples/OpticalFlow/TAREK: /usr/lib/arm-linux-gnueabihf/libGLU.so
examples/OpticalFlow/TAREK: /usr/local/lib/libglfw.so
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_shape.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_photo.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_text.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_dnn.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_ml.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_ximgproc.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_video.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_calib3d.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_features2d.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_highgui.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_flann.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_videoio.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_objdetect.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_imgcodecs.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_imgproc.so.3.4.2
examples/OpticalFlow/TAREK: /usr/local/lib/libopencv_core.so.3.4.2
examples/OpticalFlow/TAREK: examples/OpticalFlow/CMakeFiles/TAREK.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/odroid/librealsense-2.10.0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TAREK"
	cd /home/odroid/librealsense-2.10.0/examples/OpticalFlow && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TAREK.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/OpticalFlow/CMakeFiles/TAREK.dir/build: examples/OpticalFlow/TAREK

.PHONY : examples/OpticalFlow/CMakeFiles/TAREK.dir/build

examples/OpticalFlow/CMakeFiles/TAREK.dir/requires: examples/OpticalFlow/CMakeFiles/TAREK.dir/src/program.cpp.o.requires

.PHONY : examples/OpticalFlow/CMakeFiles/TAREK.dir/requires

examples/OpticalFlow/CMakeFiles/TAREK.dir/clean:
	cd /home/odroid/librealsense-2.10.0/examples/OpticalFlow && $(CMAKE_COMMAND) -P CMakeFiles/TAREK.dir/cmake_clean.cmake
.PHONY : examples/OpticalFlow/CMakeFiles/TAREK.dir/clean

examples/OpticalFlow/CMakeFiles/TAREK.dir/depend:
	cd /home/odroid/librealsense-2.10.0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/odroid/librealsense-2.10.0 /home/odroid/librealsense-2.10.0/examples/OpticalFlow /home/odroid/librealsense-2.10.0 /home/odroid/librealsense-2.10.0/examples/OpticalFlow /home/odroid/librealsense-2.10.0/examples/OpticalFlow/CMakeFiles/TAREK.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/OpticalFlow/CMakeFiles/TAREK.dir/depend

