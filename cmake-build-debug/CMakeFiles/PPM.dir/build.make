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
CMAKE_COMMAND = /snap/clion/114/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/114/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ronaikovacs/Prog/PPM

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ronaikovacs/Prog/PPM/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/PPM.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PPM.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PPM.dir/flags.make

CMakeFiles/PPM.dir/main.cpp.o: CMakeFiles/PPM.dir/flags.make
CMakeFiles/PPM.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ronaikovacs/Prog/PPM/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PPM.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PPM.dir/main.cpp.o -c /home/ronaikovacs/Prog/PPM/main.cpp

CMakeFiles/PPM.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PPM.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ronaikovacs/Prog/PPM/main.cpp > CMakeFiles/PPM.dir/main.cpp.i

CMakeFiles/PPM.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PPM.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ronaikovacs/Prog/PPM/main.cpp -o CMakeFiles/PPM.dir/main.cpp.s

# Object files for target PPM
PPM_OBJECTS = \
"CMakeFiles/PPM.dir/main.cpp.o"

# External object files for target PPM
PPM_EXTERNAL_OBJECTS =

PPM: CMakeFiles/PPM.dir/main.cpp.o
PPM: CMakeFiles/PPM.dir/build.make
PPM: CMakeFiles/PPM.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ronaikovacs/Prog/PPM/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PPM"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PPM.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PPM.dir/build: PPM

.PHONY : CMakeFiles/PPM.dir/build

CMakeFiles/PPM.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PPM.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PPM.dir/clean

CMakeFiles/PPM.dir/depend:
	cd /home/ronaikovacs/Prog/PPM/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ronaikovacs/Prog/PPM /home/ronaikovacs/Prog/PPM /home/ronaikovacs/Prog/PPM/cmake-build-debug /home/ronaikovacs/Prog/PPM/cmake-build-debug /home/ronaikovacs/Prog/PPM/cmake-build-debug/CMakeFiles/PPM.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PPM.dir/depend
