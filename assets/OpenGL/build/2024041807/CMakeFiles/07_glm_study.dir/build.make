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
include 2024041807/CMakeFiles/07_glm_study.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include 2024041807/CMakeFiles/07_glm_study.dir/compiler_depend.make

# Include the progress variables for this target.
include 2024041807/CMakeFiles/07_glm_study.dir/progress.make

# Include the compile flags for this target's objects.
include 2024041807/CMakeFiles/07_glm_study.dir/flags.make

2024041807/CMakeFiles/07_glm_study.dir/07_glm_study.cpp.o: 2024041807/CMakeFiles/07_glm_study.dir/flags.make
2024041807/CMakeFiles/07_glm_study.dir/07_glm_study.cpp.o: ../2024041807/07_glm_study.cpp
2024041807/CMakeFiles/07_glm_study.dir/07_glm_study.cpp.o: 2024041807/CMakeFiles/07_glm_study.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object 2024041807/CMakeFiles/07_glm_study.dir/07_glm_study.cpp.o"
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041807 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT 2024041807/CMakeFiles/07_glm_study.dir/07_glm_study.cpp.o -MF CMakeFiles/07_glm_study.dir/07_glm_study.cpp.o.d -o CMakeFiles/07_glm_study.dir/07_glm_study.cpp.o -c /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/2024041807/07_glm_study.cpp

2024041807/CMakeFiles/07_glm_study.dir/07_glm_study.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/07_glm_study.dir/07_glm_study.cpp.i"
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041807 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/2024041807/07_glm_study.cpp > CMakeFiles/07_glm_study.dir/07_glm_study.cpp.i

2024041807/CMakeFiles/07_glm_study.dir/07_glm_study.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/07_glm_study.dir/07_glm_study.cpp.s"
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041807 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/2024041807/07_glm_study.cpp -o CMakeFiles/07_glm_study.dir/07_glm_study.cpp.s

# Object files for target 07_glm_study
07_glm_study_OBJECTS = \
"CMakeFiles/07_glm_study.dir/07_glm_study.cpp.o"

# External object files for target 07_glm_study
07_glm_study_EXTERNAL_OBJECTS =

2024041807/07_glm_study: 2024041807/CMakeFiles/07_glm_study.dir/07_glm_study.cpp.o
2024041807/07_glm_study: 2024041807/CMakeFiles/07_glm_study.dir/build.make
2024041807/07_glm_study: libglad.a
2024041807/07_glm_study: ../lib/libglm.a
2024041807/07_glm_study: 2024041807/CMakeFiles/07_glm_study.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 07_glm_study"
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041807 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/07_glm_study.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
2024041807/CMakeFiles/07_glm_study.dir/build: 2024041807/07_glm_study
.PHONY : 2024041807/CMakeFiles/07_glm_study.dir/build

2024041807/CMakeFiles/07_glm_study.dir/clean:
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041807 && $(CMAKE_COMMAND) -P CMakeFiles/07_glm_study.dir/cmake_clean.cmake
.PHONY : 2024041807/CMakeFiles/07_glm_study.dir/clean

2024041807/CMakeFiles/07_glm_study.dir/depend:
	cd /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/2024041807 /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041807 /home/lieryang/Desktop/LieryangStack.github.io/assets/OpenGL/build/2024041807/CMakeFiles/07_glm_study.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 2024041807/CMakeFiles/07_glm_study.dir/depend
