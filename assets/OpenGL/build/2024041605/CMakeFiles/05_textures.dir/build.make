# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build

# Include any dependencies generated for this target.
include 2024041605/CMakeFiles/05_textures.dir/depend.make

# Include the progress variables for this target.
include 2024041605/CMakeFiles/05_textures.dir/progress.make

# Include the compile flags for this target's objects.
include 2024041605/CMakeFiles/05_textures.dir/flags.make

2024041605/CMakeFiles/05_textures.dir/05_textures.cpp.o: 2024041605/CMakeFiles/05_textures.dir/flags.make
2024041605/CMakeFiles/05_textures.dir/05_textures.cpp.o: ../2024041605/05_textures.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object 2024041605/CMakeFiles/05_textures.dir/05_textures.cpp.o"
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041605 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/05_textures.dir/05_textures.cpp.o -c /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/2024041605/05_textures.cpp

2024041605/CMakeFiles/05_textures.dir/05_textures.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/05_textures.dir/05_textures.cpp.i"
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041605 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/2024041605/05_textures.cpp > CMakeFiles/05_textures.dir/05_textures.cpp.i

2024041605/CMakeFiles/05_textures.dir/05_textures.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/05_textures.dir/05_textures.cpp.s"
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041605 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/2024041605/05_textures.cpp -o CMakeFiles/05_textures.dir/05_textures.cpp.s

# Object files for target 05_textures
05_textures_OBJECTS = \
"CMakeFiles/05_textures.dir/05_textures.cpp.o"

# External object files for target 05_textures
05_textures_EXTERNAL_OBJECTS =

2024041605/05_textures: 2024041605/CMakeFiles/05_textures.dir/05_textures.cpp.o
2024041605/05_textures: 2024041605/CMakeFiles/05_textures.dir/build.make
2024041605/05_textures: libglad.a
2024041605/05_textures: ../lib/libglm.a
2024041605/05_textures: 2024041605/CMakeFiles/05_textures.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 05_textures"
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041605 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/05_textures.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
2024041605/CMakeFiles/05_textures.dir/build: 2024041605/05_textures

.PHONY : 2024041605/CMakeFiles/05_textures.dir/build

2024041605/CMakeFiles/05_textures.dir/clean:
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041605 && $(CMAKE_COMMAND) -P CMakeFiles/05_textures.dir/cmake_clean.cmake
.PHONY : 2024041605/CMakeFiles/05_textures.dir/clean

2024041605/CMakeFiles/05_textures.dir/depend:
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/2024041605 /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041605 /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041605/CMakeFiles/05_textures.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 2024041605/CMakeFiles/05_textures.dir/depend
