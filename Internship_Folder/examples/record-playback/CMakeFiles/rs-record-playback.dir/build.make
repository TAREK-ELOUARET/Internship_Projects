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
include examples/record-playback/CMakeFiles/rs-record-playback.dir/depend.make

# Include the progress variables for this target.
include examples/record-playback/CMakeFiles/rs-record-playback.dir/progress.make

# Include the compile flags for this target's objects.
include examples/record-playback/CMakeFiles/rs-record-playback.dir/flags.make

examples/record-playback/CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.o: examples/record-playback/CMakeFiles/rs-record-playback.dir/flags.make
examples/record-playback/CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.o: examples/record-playback/rs-record-playback.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/odroid/librealsense-2.10.0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/record-playback/CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.o"
	cd /home/odroid/librealsense-2.10.0/examples/record-playback && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.o -c /home/odroid/librealsense-2.10.0/examples/record-playback/rs-record-playback.cpp

examples/record-playback/CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.i"
	cd /home/odroid/librealsense-2.10.0/examples/record-playback && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/odroid/librealsense-2.10.0/examples/record-playback/rs-record-playback.cpp > CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.i

examples/record-playback/CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.s"
	cd /home/odroid/librealsense-2.10.0/examples/record-playback && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/odroid/librealsense-2.10.0/examples/record-playback/rs-record-playback.cpp -o CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.s

examples/record-playback/CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.o.requires:

.PHONY : examples/record-playback/CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.o.requires

examples/record-playback/CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.o.provides: examples/record-playback/CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.o.requires
	$(MAKE) -f examples/record-playback/CMakeFiles/rs-record-playback.dir/build.make examples/record-playback/CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.o.provides.build
.PHONY : examples/record-playback/CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.o.provides

examples/record-playback/CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.o.provides.build: examples/record-playback/CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.o


examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.o: examples/record-playback/CMakeFiles/rs-record-playback.dir/flags.make
examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.o: third-party/imgui/imgui.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/odroid/librealsense-2.10.0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.o"
	cd /home/odroid/librealsense-2.10.0/examples/record-playback && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.o -c /home/odroid/librealsense-2.10.0/third-party/imgui/imgui.cpp

examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.i"
	cd /home/odroid/librealsense-2.10.0/examples/record-playback && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/odroid/librealsense-2.10.0/third-party/imgui/imgui.cpp > CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.i

examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.s"
	cd /home/odroid/librealsense-2.10.0/examples/record-playback && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/odroid/librealsense-2.10.0/third-party/imgui/imgui.cpp -o CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.s

examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.o.requires:

.PHONY : examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.o.requires

examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.o.provides: examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.o.requires
	$(MAKE) -f examples/record-playback/CMakeFiles/rs-record-playback.dir/build.make examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.o.provides.build
.PHONY : examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.o.provides

examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.o.provides.build: examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.o


examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.o: examples/record-playback/CMakeFiles/rs-record-playback.dir/flags.make
examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.o: third-party/imgui/imgui_draw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/odroid/librealsense-2.10.0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.o"
	cd /home/odroid/librealsense-2.10.0/examples/record-playback && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.o -c /home/odroid/librealsense-2.10.0/third-party/imgui/imgui_draw.cpp

examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.i"
	cd /home/odroid/librealsense-2.10.0/examples/record-playback && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/odroid/librealsense-2.10.0/third-party/imgui/imgui_draw.cpp > CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.i

examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.s"
	cd /home/odroid/librealsense-2.10.0/examples/record-playback && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/odroid/librealsense-2.10.0/third-party/imgui/imgui_draw.cpp -o CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.s

examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.o.requires:

.PHONY : examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.o.requires

examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.o.provides: examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.o.requires
	$(MAKE) -f examples/record-playback/CMakeFiles/rs-record-playback.dir/build.make examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.o.provides.build
.PHONY : examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.o.provides

examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.o.provides.build: examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.o


examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o: examples/record-playback/CMakeFiles/rs-record-playback.dir/flags.make
examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o: third-party/imgui/imgui_impl_glfw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/odroid/librealsense-2.10.0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o"
	cd /home/odroid/librealsense-2.10.0/examples/record-playback && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o -c /home/odroid/librealsense-2.10.0/third-party/imgui/imgui_impl_glfw.cpp

examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.i"
	cd /home/odroid/librealsense-2.10.0/examples/record-playback && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/odroid/librealsense-2.10.0/third-party/imgui/imgui_impl_glfw.cpp > CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.i

examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.s"
	cd /home/odroid/librealsense-2.10.0/examples/record-playback && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/odroid/librealsense-2.10.0/third-party/imgui/imgui_impl_glfw.cpp -o CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.s

examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o.requires:

.PHONY : examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o.requires

examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o.provides: examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o.requires
	$(MAKE) -f examples/record-playback/CMakeFiles/rs-record-playback.dir/build.make examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o.provides.build
.PHONY : examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o.provides

examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o.provides.build: examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o


# Object files for target rs-record-playback
rs__record__playback_OBJECTS = \
"CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.o" \
"CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.o" \
"CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.o" \
"CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o"

# External object files for target rs-record-playback
rs__record__playback_EXTERNAL_OBJECTS =

examples/record-playback/rs-record-playback: examples/record-playback/CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.o
examples/record-playback/rs-record-playback: examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.o
examples/record-playback/rs-record-playback: examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.o
examples/record-playback/rs-record-playback: examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o
examples/record-playback/rs-record-playback: examples/record-playback/CMakeFiles/rs-record-playback.dir/build.make
examples/record-playback/rs-record-playback: librealsense2.so.2.10.0
examples/record-playback/rs-record-playback: /usr/lib/arm-linux-gnueabihf/libGL.so
examples/record-playback/rs-record-playback: /usr/lib/arm-linux-gnueabihf/libGLU.so
examples/record-playback/rs-record-playback: /usr/local/lib/libglfw.so
examples/record-playback/rs-record-playback: examples/record-playback/CMakeFiles/rs-record-playback.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/odroid/librealsense-2.10.0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable rs-record-playback"
	cd /home/odroid/librealsense-2.10.0/examples/record-playback && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rs-record-playback.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/record-playback/CMakeFiles/rs-record-playback.dir/build: examples/record-playback/rs-record-playback

.PHONY : examples/record-playback/CMakeFiles/rs-record-playback.dir/build

examples/record-playback/CMakeFiles/rs-record-playback.dir/requires: examples/record-playback/CMakeFiles/rs-record-playback.dir/rs-record-playback.cpp.o.requires
examples/record-playback/CMakeFiles/rs-record-playback.dir/requires: examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui.cpp.o.requires
examples/record-playback/CMakeFiles/rs-record-playback.dir/requires: examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_draw.cpp.o.requires
examples/record-playback/CMakeFiles/rs-record-playback.dir/requires: examples/record-playback/CMakeFiles/rs-record-playback.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o.requires

.PHONY : examples/record-playback/CMakeFiles/rs-record-playback.dir/requires

examples/record-playback/CMakeFiles/rs-record-playback.dir/clean:
	cd /home/odroid/librealsense-2.10.0/examples/record-playback && $(CMAKE_COMMAND) -P CMakeFiles/rs-record-playback.dir/cmake_clean.cmake
.PHONY : examples/record-playback/CMakeFiles/rs-record-playback.dir/clean

examples/record-playback/CMakeFiles/rs-record-playback.dir/depend:
	cd /home/odroid/librealsense-2.10.0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/odroid/librealsense-2.10.0 /home/odroid/librealsense-2.10.0/examples/record-playback /home/odroid/librealsense-2.10.0 /home/odroid/librealsense-2.10.0/examples/record-playback /home/odroid/librealsense-2.10.0/examples/record-playback/CMakeFiles/rs-record-playback.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/record-playback/CMakeFiles/rs-record-playback.dir/depend

