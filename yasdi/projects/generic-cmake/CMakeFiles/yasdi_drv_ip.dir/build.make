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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/sma_datalogger/yasdi/projects/generic-cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/sma_datalogger/yasdi/projects/generic-cmake

# Include any dependencies generated for this target.
include CMakeFiles/yasdi_drv_ip.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/yasdi_drv_ip.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/yasdi_drv_ip.dir/flags.make

CMakeFiles/yasdi_drv_ip.dir/home/pi/sma_datalogger/yasdi/driver/ip_generic.o: CMakeFiles/yasdi_drv_ip.dir/flags.make
CMakeFiles/yasdi_drv_ip.dir/home/pi/sma_datalogger/yasdi/driver/ip_generic.o: /home/pi/sma_datalogger/yasdi/driver/ip_generic.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/yasdi_drv_ip.dir/home/pi/sma_datalogger/yasdi/driver/ip_generic.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yasdi_drv_ip.dir/home/pi/sma_datalogger/yasdi/driver/ip_generic.o   -c /home/pi/sma_datalogger/yasdi/driver/ip_generic.c

CMakeFiles/yasdi_drv_ip.dir/home/pi/sma_datalogger/yasdi/driver/ip_generic.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yasdi_drv_ip.dir/home/pi/sma_datalogger/yasdi/driver/ip_generic.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/sma_datalogger/yasdi/driver/ip_generic.c > CMakeFiles/yasdi_drv_ip.dir/home/pi/sma_datalogger/yasdi/driver/ip_generic.i

CMakeFiles/yasdi_drv_ip.dir/home/pi/sma_datalogger/yasdi/driver/ip_generic.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yasdi_drv_ip.dir/home/pi/sma_datalogger/yasdi/driver/ip_generic.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/sma_datalogger/yasdi/driver/ip_generic.c -o CMakeFiles/yasdi_drv_ip.dir/home/pi/sma_datalogger/yasdi/driver/ip_generic.s

# Object files for target yasdi_drv_ip
yasdi_drv_ip_OBJECTS = \
"CMakeFiles/yasdi_drv_ip.dir/home/pi/sma_datalogger/yasdi/driver/ip_generic.o"

# External object files for target yasdi_drv_ip
yasdi_drv_ip_EXTERNAL_OBJECTS =

libyasdi_drv_ip.so.1.8.1: CMakeFiles/yasdi_drv_ip.dir/home/pi/sma_datalogger/yasdi/driver/ip_generic.o
libyasdi_drv_ip.so.1.8.1: CMakeFiles/yasdi_drv_ip.dir/build.make
libyasdi_drv_ip.so.1.8.1: libyasdi.so.1.8.1
libyasdi_drv_ip.so.1.8.1: CMakeFiles/yasdi_drv_ip.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libyasdi_drv_ip.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yasdi_drv_ip.dir/link.txt --verbose=$(VERBOSE)
	$(CMAKE_COMMAND) -E cmake_symlink_library libyasdi_drv_ip.so.1.8.1 libyasdi_drv_ip.so.1 libyasdi_drv_ip.so

libyasdi_drv_ip.so.1: libyasdi_drv_ip.so.1.8.1
	@$(CMAKE_COMMAND) -E touch_nocreate libyasdi_drv_ip.so.1

libyasdi_drv_ip.so: libyasdi_drv_ip.so.1.8.1
	@$(CMAKE_COMMAND) -E touch_nocreate libyasdi_drv_ip.so

# Rule to build all files generated by this target.
CMakeFiles/yasdi_drv_ip.dir/build: libyasdi_drv_ip.so

.PHONY : CMakeFiles/yasdi_drv_ip.dir/build

CMakeFiles/yasdi_drv_ip.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/yasdi_drv_ip.dir/cmake_clean.cmake
.PHONY : CMakeFiles/yasdi_drv_ip.dir/clean

CMakeFiles/yasdi_drv_ip.dir/depend:
	cd /home/pi/sma_datalogger/yasdi/projects/generic-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/sma_datalogger/yasdi/projects/generic-cmake /home/pi/sma_datalogger/yasdi/projects/generic-cmake /home/pi/sma_datalogger/yasdi/projects/generic-cmake /home/pi/sma_datalogger/yasdi/projects/generic-cmake /home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles/yasdi_drv_ip.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/yasdi_drv_ip.dir/depend

