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
include CMakeFiles/yasdimaster.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/yasdimaster.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/yasdimaster.dir/flags.make

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/libs/libyasdimaster.o: CMakeFiles/yasdimaster.dir/flags.make
CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/libs/libyasdimaster.o: /home/pi/sma_datalogger/yasdi/libs/libyasdimaster.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/libs/libyasdimaster.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/libs/libyasdimaster.o   -c /home/pi/sma_datalogger/yasdi/libs/libyasdimaster.c

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/libs/libyasdimaster.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/libs/libyasdimaster.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/sma_datalogger/yasdi/libs/libyasdimaster.c > CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/libs/libyasdimaster.i

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/libs/libyasdimaster.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/libs/libyasdimaster.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/sma_datalogger/yasdi/libs/libyasdimaster.c -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/libs/libyasdimaster.s

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/main.o: CMakeFiles/yasdimaster.dir/flags.make
CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/main.o: /home/pi/sma_datalogger/yasdi/master/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/main.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/main.o   -c /home/pi/sma_datalogger/yasdi/master/main.c

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/main.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/sma_datalogger/yasdi/master/main.c > CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/main.i

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/main.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/sma_datalogger/yasdi/master/main.c -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/main.s

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/objman.o: CMakeFiles/yasdimaster.dir/flags.make
CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/objman.o: /home/pi/sma_datalogger/yasdi/master/objman.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/objman.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/objman.o   -c /home/pi/sma_datalogger/yasdi/master/objman.c

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/objman.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/objman.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/sma_datalogger/yasdi/master/objman.c > CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/objman.i

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/objman.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/objman.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/sma_datalogger/yasdi/master/objman.c -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/objman.s

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netdevice.o: CMakeFiles/yasdimaster.dir/flags.make
CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netdevice.o: /home/pi/sma_datalogger/yasdi/master/netdevice.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netdevice.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netdevice.o   -c /home/pi/sma_datalogger/yasdi/master/netdevice.c

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netdevice.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netdevice.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/sma_datalogger/yasdi/master/netdevice.c > CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netdevice.i

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netdevice.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netdevice.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/sma_datalogger/yasdi/master/netdevice.c -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netdevice.s

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/plant.o: CMakeFiles/yasdimaster.dir/flags.make
CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/plant.o: /home/pi/sma_datalogger/yasdi/master/plant.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/plant.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/plant.o   -c /home/pi/sma_datalogger/yasdi/master/plant.c

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/plant.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/plant.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/sma_datalogger/yasdi/master/plant.c > CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/plant.i

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/plant.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/plant.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/sma_datalogger/yasdi/master/plant.c -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/plant.s

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netchannel.o: CMakeFiles/yasdimaster.dir/flags.make
CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netchannel.o: /home/pi/sma_datalogger/yasdi/master/netchannel.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netchannel.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netchannel.o   -c /home/pi/sma_datalogger/yasdi/master/netchannel.c

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netchannel.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netchannel.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/sma_datalogger/yasdi/master/netchannel.c > CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netchannel.i

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netchannel.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netchannel.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/sma_datalogger/yasdi/master/netchannel.c -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netchannel.s

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateconfig.o: CMakeFiles/yasdimaster.dir/flags.make
CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateconfig.o: /home/pi/sma_datalogger/yasdi/master/stateconfig.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateconfig.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateconfig.o   -c /home/pi/sma_datalogger/yasdi/master/stateconfig.c

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateconfig.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateconfig.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/sma_datalogger/yasdi/master/stateconfig.c > CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateconfig.i

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateconfig.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateconfig.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/sma_datalogger/yasdi/master/stateconfig.c -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateconfig.s

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/chanvalrepo.o: CMakeFiles/yasdimaster.dir/flags.make
CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/chanvalrepo.o: /home/pi/sma_datalogger/yasdi/master/chanvalrepo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/chanvalrepo.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/chanvalrepo.o   -c /home/pi/sma_datalogger/yasdi/master/chanvalrepo.c

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/chanvalrepo.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/chanvalrepo.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/sma_datalogger/yasdi/master/chanvalrepo.c > CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/chanvalrepo.i

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/chanvalrepo.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/chanvalrepo.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/sma_datalogger/yasdi/master/chanvalrepo.c -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/chanvalrepo.s

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/ysecurity.o: CMakeFiles/yasdimaster.dir/flags.make
CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/ysecurity.o: /home/pi/sma_datalogger/yasdi/master/ysecurity.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/ysecurity.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/ysecurity.o   -c /home/pi/sma_datalogger/yasdi/master/ysecurity.c

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/ysecurity.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/ysecurity.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/sma_datalogger/yasdi/master/ysecurity.c > CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/ysecurity.i

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/ysecurity.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/ysecurity.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/sma_datalogger/yasdi/master/ysecurity.c -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/ysecurity.s

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/busevents.o: CMakeFiles/yasdimaster.dir/flags.make
CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/busevents.o: /home/pi/sma_datalogger/yasdi/master/busevents.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/busevents.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/busevents.o   -c /home/pi/sma_datalogger/yasdi/master/busevents.c

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/busevents.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/busevents.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/sma_datalogger/yasdi/master/busevents.c > CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/busevents.i

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/busevents.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/busevents.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/sma_datalogger/yasdi/master/busevents.c -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/busevents.s

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statereadchan.o: CMakeFiles/yasdimaster.dir/flags.make
CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statereadchan.o: /home/pi/sma_datalogger/yasdi/master/statereadchan.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statereadchan.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statereadchan.o   -c /home/pi/sma_datalogger/yasdi/master/statereadchan.c

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statereadchan.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statereadchan.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/sma_datalogger/yasdi/master/statereadchan.c > CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statereadchan.i

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statereadchan.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statereadchan.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/sma_datalogger/yasdi/master/statereadchan.c -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statereadchan.s

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statewritechan.o: CMakeFiles/yasdimaster.dir/flags.make
CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statewritechan.o: /home/pi/sma_datalogger/yasdi/master/statewritechan.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statewritechan.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statewritechan.o   -c /home/pi/sma_datalogger/yasdi/master/statewritechan.c

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statewritechan.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statewritechan.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/sma_datalogger/yasdi/master/statewritechan.c > CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statewritechan.i

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statewritechan.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statewritechan.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/sma_datalogger/yasdi/master/statewritechan.c -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statewritechan.s

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateident.o: CMakeFiles/yasdimaster.dir/flags.make
CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateident.o: /home/pi/sma_datalogger/yasdi/master/stateident.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateident.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateident.o   -c /home/pi/sma_datalogger/yasdi/master/stateident.c

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateident.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateident.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/sma_datalogger/yasdi/master/stateident.c > CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateident.i

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateident.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateident.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/sma_datalogger/yasdi/master/stateident.c -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateident.s

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statedetection.o: CMakeFiles/yasdimaster.dir/flags.make
CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statedetection.o: /home/pi/sma_datalogger/yasdi/master/statedetection.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statedetection.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statedetection.o   -c /home/pi/sma_datalogger/yasdi/master/statedetection.c

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statedetection.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statedetection.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/sma_datalogger/yasdi/master/statedetection.c > CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statedetection.i

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statedetection.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statedetection.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/sma_datalogger/yasdi/master/statedetection.c -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statedetection.s

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/mastercmd.o: CMakeFiles/yasdimaster.dir/flags.make
CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/mastercmd.o: /home/pi/sma_datalogger/yasdi/master/mastercmd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/mastercmd.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/mastercmd.o   -c /home/pi/sma_datalogger/yasdi/master/mastercmd.c

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/mastercmd.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/mastercmd.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/sma_datalogger/yasdi/master/mastercmd.c > CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/mastercmd.i

CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/mastercmd.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/mastercmd.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/sma_datalogger/yasdi/master/mastercmd.c -o CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/mastercmd.s

# Object files for target yasdimaster
yasdimaster_OBJECTS = \
"CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/libs/libyasdimaster.o" \
"CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/main.o" \
"CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/objman.o" \
"CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netdevice.o" \
"CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/plant.o" \
"CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netchannel.o" \
"CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateconfig.o" \
"CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/chanvalrepo.o" \
"CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/ysecurity.o" \
"CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/busevents.o" \
"CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statereadchan.o" \
"CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statewritechan.o" \
"CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateident.o" \
"CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statedetection.o" \
"CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/mastercmd.o"

# External object files for target yasdimaster
yasdimaster_EXTERNAL_OBJECTS =

libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/libs/libyasdimaster.o
libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/main.o
libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/objman.o
libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netdevice.o
libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/plant.o
libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/netchannel.o
libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateconfig.o
libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/chanvalrepo.o
libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/ysecurity.o
libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/busevents.o
libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statereadchan.o
libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statewritechan.o
libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/stateident.o
libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/statedetection.o
libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/home/pi/sma_datalogger/yasdi/master/mastercmd.o
libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/build.make
libyasdimaster.so.1.8.1: libyasdi.so.1.8.1
libyasdimaster.so.1.8.1: CMakeFiles/yasdimaster.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking C shared library libyasdimaster.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yasdimaster.dir/link.txt --verbose=$(VERBOSE)
	$(CMAKE_COMMAND) -E cmake_symlink_library libyasdimaster.so.1.8.1 libyasdimaster.so.1 libyasdimaster.so

libyasdimaster.so.1: libyasdimaster.so.1.8.1
	@$(CMAKE_COMMAND) -E touch_nocreate libyasdimaster.so.1

libyasdimaster.so: libyasdimaster.so.1.8.1
	@$(CMAKE_COMMAND) -E touch_nocreate libyasdimaster.so

# Rule to build all files generated by this target.
CMakeFiles/yasdimaster.dir/build: libyasdimaster.so

.PHONY : CMakeFiles/yasdimaster.dir/build

CMakeFiles/yasdimaster.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/yasdimaster.dir/cmake_clean.cmake
.PHONY : CMakeFiles/yasdimaster.dir/clean

CMakeFiles/yasdimaster.dir/depend:
	cd /home/pi/sma_datalogger/yasdi/projects/generic-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/sma_datalogger/yasdi/projects/generic-cmake /home/pi/sma_datalogger/yasdi/projects/generic-cmake /home/pi/sma_datalogger/yasdi/projects/generic-cmake /home/pi/sma_datalogger/yasdi/projects/generic-cmake /home/pi/sma_datalogger/yasdi/projects/generic-cmake/CMakeFiles/yasdimaster.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/yasdimaster.dir/depend
