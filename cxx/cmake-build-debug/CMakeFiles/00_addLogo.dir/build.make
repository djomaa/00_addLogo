# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /home/djoma/Documents/jetBrains/clion-2017.3.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/djoma/Documents/jetBrains/clion-2017.3.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/djoma/projects/00_addLogo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/djoma/projects/00_addLogo/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/00_addLogo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/00_addLogo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/00_addLogo.dir/flags.make

CMakeFiles/00_addLogo.dir/main.cpp.o: CMakeFiles/00_addLogo.dir/flags.make
CMakeFiles/00_addLogo.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/djoma/projects/00_addLogo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/00_addLogo.dir/main.cpp.o"
	i686-w64-mingw32-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/00_addLogo.dir/main.cpp.o -c /home/djoma/projects/00_addLogo/main.cpp

CMakeFiles/00_addLogo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/00_addLogo.dir/main.cpp.i"
	i686-w64-mingw32-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/djoma/projects/00_addLogo/main.cpp > CMakeFiles/00_addLogo.dir/main.cpp.i

CMakeFiles/00_addLogo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/00_addLogo.dir/main.cpp.s"
	i686-w64-mingw32-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/djoma/projects/00_addLogo/main.cpp -o CMakeFiles/00_addLogo.dir/main.cpp.s

CMakeFiles/00_addLogo.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/00_addLogo.dir/main.cpp.o.requires

CMakeFiles/00_addLogo.dir/main.cpp.o.provides: CMakeFiles/00_addLogo.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/00_addLogo.dir/build.make CMakeFiles/00_addLogo.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/00_addLogo.dir/main.cpp.o.provides

CMakeFiles/00_addLogo.dir/main.cpp.o.provides.build: CMakeFiles/00_addLogo.dir/main.cpp.o


# Object files for target 00_addLogo
00_addLogo_OBJECTS = \
"CMakeFiles/00_addLogo.dir/main.cpp.o"

# External object files for target 00_addLogo
00_addLogo_EXTERNAL_OBJECTS =

00_addLogo: CMakeFiles/00_addLogo.dir/main.cpp.o
00_addLogo: CMakeFiles/00_addLogo.dir/build.make
00_addLogo: /usr/lib/x86_64-linux-gnu/libMagick++.so
00_addLogo: CMakeFiles/00_addLogo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/djoma/projects/00_addLogo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 00_addLogo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/00_addLogo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/00_addLogo.dir/build: 00_addLogo

.PHONY : CMakeFiles/00_addLogo.dir/build

CMakeFiles/00_addLogo.dir/requires: CMakeFiles/00_addLogo.dir/main.cpp.o.requires

.PHONY : CMakeFiles/00_addLogo.dir/requires

CMakeFiles/00_addLogo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/00_addLogo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/00_addLogo.dir/clean

CMakeFiles/00_addLogo.dir/depend:
	cd /home/djoma/projects/00_addLogo/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/djoma/projects/00_addLogo /home/djoma/projects/00_addLogo /home/djoma/projects/00_addLogo/cmake-build-debug /home/djoma/projects/00_addLogo/cmake-build-debug /home/djoma/projects/00_addLogo/cmake-build-debug/CMakeFiles/00_addLogo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/00_addLogo.dir/depend

