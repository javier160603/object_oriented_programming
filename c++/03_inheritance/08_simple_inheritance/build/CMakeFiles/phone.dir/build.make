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
CMAKE_SOURCE_DIR = /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/build

# Include any dependencies generated for this target.
include CMakeFiles/phone.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/phone.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/phone.dir/flags.make

CMakeFiles/phone.dir/main.o: CMakeFiles/phone.dir/flags.make
CMakeFiles/phone.dir/main.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/phone.dir/main.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/phone.dir/main.o -c /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/main.cpp

CMakeFiles/phone.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/phone.dir/main.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/main.cpp > CMakeFiles/phone.dir/main.i

CMakeFiles/phone.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/phone.dir/main.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/main.cpp -o CMakeFiles/phone.dir/main.s

CMakeFiles/phone.dir/device.o: CMakeFiles/phone.dir/flags.make
CMakeFiles/phone.dir/device.o: ../device.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/phone.dir/device.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/phone.dir/device.o -c /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/device.cpp

CMakeFiles/phone.dir/device.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/phone.dir/device.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/device.cpp > CMakeFiles/phone.dir/device.i

CMakeFiles/phone.dir/device.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/phone.dir/device.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/device.cpp -o CMakeFiles/phone.dir/device.s

CMakeFiles/phone.dir/computer.o: CMakeFiles/phone.dir/flags.make
CMakeFiles/phone.dir/computer.o: ../computer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/phone.dir/computer.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/phone.dir/computer.o -c /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/computer.cpp

CMakeFiles/phone.dir/computer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/phone.dir/computer.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/computer.cpp > CMakeFiles/phone.dir/computer.i

CMakeFiles/phone.dir/computer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/phone.dir/computer.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/computer.cpp -o CMakeFiles/phone.dir/computer.s

CMakeFiles/phone.dir/phone.o: CMakeFiles/phone.dir/flags.make
CMakeFiles/phone.dir/phone.o: ../phone.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/phone.dir/phone.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/phone.dir/phone.o -c /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/phone.cpp

CMakeFiles/phone.dir/phone.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/phone.dir/phone.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/phone.cpp > CMakeFiles/phone.dir/phone.i

CMakeFiles/phone.dir/phone.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/phone.dir/phone.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/phone.cpp -o CMakeFiles/phone.dir/phone.s

# Object files for target phone
phone_OBJECTS = \
"CMakeFiles/phone.dir/main.o" \
"CMakeFiles/phone.dir/device.o" \
"CMakeFiles/phone.dir/computer.o" \
"CMakeFiles/phone.dir/phone.o"

# External object files for target phone
phone_EXTERNAL_OBJECTS =

phone: CMakeFiles/phone.dir/main.o
phone: CMakeFiles/phone.dir/device.o
phone: CMakeFiles/phone.dir/computer.o
phone: CMakeFiles/phone.dir/phone.o
phone: CMakeFiles/phone.dir/build.make
phone: CMakeFiles/phone.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable phone"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/phone.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/phone.dir/build: phone

.PHONY : CMakeFiles/phone.dir/build

CMakeFiles/phone.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/phone.dir/cmake_clean.cmake
.PHONY : CMakeFiles/phone.dir/clean

CMakeFiles/phone.dir/depend:
	cd /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/build /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/build /home/iztatik/Documents/Teaching/Advanced_programming/Topics/2_Objects/Codes/04_Inheritance/build/CMakeFiles/phone.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/phone.dir/depend
