# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build

# Include any dependencies generated for this target.
include 2024041908/CMakeFiles/08_coordinate_systems.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include 2024041908/CMakeFiles/08_coordinate_systems.dir/compiler_depend.make

# Include the progress variables for this target.
include 2024041908/CMakeFiles/08_coordinate_systems.dir/progress.make

# Include the compile flags for this target's objects.
include 2024041908/CMakeFiles/08_coordinate_systems.dir/flags.make

2024041908/CMakeFiles/08_coordinate_systems.dir/08_coordinate_systems.cpp.o: 2024041908/CMakeFiles/08_coordinate_systems.dir/flags.make
2024041908/CMakeFiles/08_coordinate_systems.dir/08_coordinate_systems.cpp.o: ../2024041908/08_coordinate_systems.cpp
2024041908/CMakeFiles/08_coordinate_systems.dir/08_coordinate_systems.cpp.o: 2024041908/CMakeFiles/08_coordinate_systems.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object 2024041908/CMakeFiles/08_coordinate_systems.dir/08_coordinate_systems.cpp.o"
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041908 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT 2024041908/CMakeFiles/08_coordinate_systems.dir/08_coordinate_systems.cpp.o -MF CMakeFiles/08_coordinate_systems.dir/08_coordinate_systems.cpp.o.d -o CMakeFiles/08_coordinate_systems.dir/08_coordinate_systems.cpp.o -c /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/2024041908/08_coordinate_systems.cpp

2024041908/CMakeFiles/08_coordinate_systems.dir/08_coordinate_systems.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/08_coordinate_systems.dir/08_coordinate_systems.cpp.i"
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041908 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/2024041908/08_coordinate_systems.cpp > CMakeFiles/08_coordinate_systems.dir/08_coordinate_systems.cpp.i

2024041908/CMakeFiles/08_coordinate_systems.dir/08_coordinate_systems.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/08_coordinate_systems.dir/08_coordinate_systems.cpp.s"
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041908 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/2024041908/08_coordinate_systems.cpp -o CMakeFiles/08_coordinate_systems.dir/08_coordinate_systems.cpp.s

# Object files for target 08_coordinate_systems
08_coordinate_systems_OBJECTS = \
"CMakeFiles/08_coordinate_systems.dir/08_coordinate_systems.cpp.o"

# External object files for target 08_coordinate_systems
08_coordinate_systems_EXTERNAL_OBJECTS =

2024041908/08_coordinate_systems: 2024041908/CMakeFiles/08_coordinate_systems.dir/08_coordinate_systems.cpp.o
2024041908/08_coordinate_systems: 2024041908/CMakeFiles/08_coordinate_systems.dir/build.make
2024041908/08_coordinate_systems: libglad.a
2024041908/08_coordinate_systems: ../lib/libglm.a
2024041908/08_coordinate_systems: 2024041908/CMakeFiles/08_coordinate_systems.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 08_coordinate_systems"
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041908 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/08_coordinate_systems.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
2024041908/CMakeFiles/08_coordinate_systems.dir/build: 2024041908/08_coordinate_systems
.PHONY : 2024041908/CMakeFiles/08_coordinate_systems.dir/build

2024041908/CMakeFiles/08_coordinate_systems.dir/clean:
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041908 && $(CMAKE_COMMAND) -P CMakeFiles/08_coordinate_systems.dir/cmake_clean.cmake
.PHONY : 2024041908/CMakeFiles/08_coordinate_systems.dir/clean

2024041908/CMakeFiles/08_coordinate_systems.dir/depend:
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/2024041908 /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041908 /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041908/CMakeFiles/08_coordinate_systems.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 2024041908/CMakeFiles/08_coordinate_systems.dir/depend
