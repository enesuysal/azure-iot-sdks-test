# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c

# Include any dependencies generated for this target.
include iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/depend.make

# Include the progress variables for this target.
include iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/progress.make

# Include the compile flags for this target's objects.
include iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/flags.make

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.o: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/flags.make
iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.o: iothub_client/tests/version_unittests/version_unittests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.o"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.o -c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests/version_unittests.cpp

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.i"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests/version_unittests.cpp > CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.i

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.s"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests/version_unittests.cpp -o CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.s

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.o.requires:

.PHONY : iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.o.requires

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.o.provides: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.o.requires
	$(MAKE) -f iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/build.make iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.o.provides.build
.PHONY : iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.o.provides

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.o.provides.build: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.o


iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.o: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/flags.make
iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.o: iothub_client/src/version.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.o"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.o   -c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/src/version.c

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.i"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/src/version.c > CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.i

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.s"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/src/version.c -o CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.s

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.o.requires:

.PHONY : iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.o.requires

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.o.provides: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.o.requires
	$(MAKE) -f iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/build.make iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.o.provides.build
.PHONY : iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.o.provides

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.o.provides.build: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.o


iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/main.c.o: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/flags.make
iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/main.c.o: iothub_client/tests/version_unittests/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/main.c.o"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/version_unittests_exe.dir/main.c.o   -c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests/main.c

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/version_unittests_exe.dir/main.c.i"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests/main.c > CMakeFiles/version_unittests_exe.dir/main.c.i

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/version_unittests_exe.dir/main.c.s"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests/main.c -o CMakeFiles/version_unittests_exe.dir/main.c.s

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/main.c.o.requires:

.PHONY : iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/main.c.o.requires

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/main.c.o.provides: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/main.c.o.requires
	$(MAKE) -f iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/build.make iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/main.c.o.provides.build
.PHONY : iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/main.c.o.provides

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/main.c.o.provides.build: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/main.c.o


# Object files for target version_unittests_exe
version_unittests_exe_OBJECTS = \
"CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.o" \
"CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.o" \
"CMakeFiles/version_unittests_exe.dir/main.c.o"

# External object files for target version_unittests_exe
version_unittests_exe_EXTERNAL_OBJECTS =

iothub_client/tests/version_unittests/version_unittests_exe: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.o
iothub_client/tests/version_unittests/version_unittests_exe: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.o
iothub_client/tests/version_unittests/version_unittests_exe: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/main.c.o
iothub_client/tests/version_unittests/version_unittests_exe: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/build.make
iothub_client/tests/version_unittests/version_unittests_exe: azure-c-shared-utility/testtools/micromock/libmicromock_ctest.a
iothub_client/tests/version_unittests/version_unittests_exe: azure-c-shared-utility/testtools/umock_c/libumock_c.a
iothub_client/tests/version_unittests/version_unittests_exe: azure-c-shared-utility/testtools/ctest/libctest.a
iothub_client/tests/version_unittests/version_unittests_exe: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable version_unittests_exe"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/version_unittests_exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/build: iothub_client/tests/version_unittests/version_unittests_exe

.PHONY : iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/build

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/requires: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/version_unittests.cpp.o.requires
iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/requires: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/__/__/src/version.c.o.requires
iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/requires: iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/main.c.o.requires

.PHONY : iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/requires

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/clean:
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests && $(CMAKE_COMMAND) -P CMakeFiles/version_unittests_exe.dir/cmake_clean.cmake
.PHONY : iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/clean

iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/depend:
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : iothub_client/tests/version_unittests/CMakeFiles/version_unittests_exe.dir/depend

