# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nakul/Desktop/bur/ros2_ws/src/2023-2024/state-estimation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nakul/Desktop/bur/ros2_ws/src/2023-2024/state-estimation/build/state-estimation

# Include any dependencies generated for this target.
include CMakeFiles/ESKF.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ESKF.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ESKF.dir/flags.make

CMakeFiles/ESKF.dir/src/ESKF.cpp.o: CMakeFiles/ESKF.dir/flags.make
CMakeFiles/ESKF.dir/src/ESKF.cpp.o: ../../src/ESKF.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nakul/Desktop/bur/ros2_ws/src/2023-2024/state-estimation/build/state-estimation/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ESKF.dir/src/ESKF.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ESKF.dir/src/ESKF.cpp.o -c /home/nakul/Desktop/bur/ros2_ws/src/2023-2024/state-estimation/src/ESKF.cpp

CMakeFiles/ESKF.dir/src/ESKF.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ESKF.dir/src/ESKF.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nakul/Desktop/bur/ros2_ws/src/2023-2024/state-estimation/src/ESKF.cpp > CMakeFiles/ESKF.dir/src/ESKF.cpp.i

CMakeFiles/ESKF.dir/src/ESKF.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ESKF.dir/src/ESKF.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nakul/Desktop/bur/ros2_ws/src/2023-2024/state-estimation/src/ESKF.cpp -o CMakeFiles/ESKF.dir/src/ESKF.cpp.s

# Object files for target ESKF
ESKF_OBJECTS = \
"CMakeFiles/ESKF.dir/src/ESKF.cpp.o"

# External object files for target ESKF
ESKF_EXTERNAL_OBJECTS =

libESKF.so: CMakeFiles/ESKF.dir/src/ESKF.cpp.o
libESKF.so: CMakeFiles/ESKF.dir/build.make
libESKF.so: CMakeFiles/ESKF.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nakul/Desktop/bur/ros2_ws/src/2023-2024/state-estimation/build/state-estimation/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libESKF.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ESKF.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ESKF.dir/build: libESKF.so

.PHONY : CMakeFiles/ESKF.dir/build

CMakeFiles/ESKF.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ESKF.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ESKF.dir/clean

CMakeFiles/ESKF.dir/depend:
	cd /home/nakul/Desktop/bur/ros2_ws/src/2023-2024/state-estimation/build/state-estimation && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nakul/Desktop/bur/ros2_ws/src/2023-2024/state-estimation /home/nakul/Desktop/bur/ros2_ws/src/2023-2024/state-estimation /home/nakul/Desktop/bur/ros2_ws/src/2023-2024/state-estimation/build/state-estimation /home/nakul/Desktop/bur/ros2_ws/src/2023-2024/state-estimation/build/state-estimation /home/nakul/Desktop/bur/ros2_ws/src/2023-2024/state-estimation/build/state-estimation/CMakeFiles/ESKF.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ESKF.dir/depend

