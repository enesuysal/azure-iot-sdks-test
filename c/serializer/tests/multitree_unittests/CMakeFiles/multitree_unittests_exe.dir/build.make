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
include serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/depend.make

# Include the progress variables for this target.
include serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/progress.make

# Include the compile flags for this target's objects.
include serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/flags.make

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.o: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/flags.make
serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.o: serializer/tests/multitree_unittests/multitree_unittests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.o"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.o -c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests/multitree_unittests.cpp

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.i"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests/multitree_unittests.cpp > CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.i

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.s"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests/multitree_unittests.cpp -o CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.s

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.o.requires:

.PHONY : serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.o.requires

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.o.provides: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.o.requires
	$(MAKE) -f serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/build.make serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.o.provides.build
.PHONY : serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.o.provides

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.o.provides.build: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.o


serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.o: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/flags.make
serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.o: serializer/src/multitree.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.o"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.o   -c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/src/multitree.c

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.i"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/src/multitree.c > CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.i

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.s"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/src/multitree.c -o CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.s

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.o.requires:

.PHONY : serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.o.requires

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.o.provides: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.o.requires
	$(MAKE) -f serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/build.make serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.o.provides.build
.PHONY : serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.o.provides

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.o.provides.build: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.o


serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.o: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/flags.make
serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.o: azure-c-shared-utility/src/crt_abstractions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.o"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.o   -c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/azure-c-shared-utility/src/crt_abstractions.c

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.i"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/azure-c-shared-utility/src/crt_abstractions.c > CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.i

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.s"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/azure-c-shared-utility/src/crt_abstractions.c -o CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.s

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.o.requires:

.PHONY : serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.o.requires

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.o.provides: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.o.requires
	$(MAKE) -f serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/build.make serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.o.provides.build
.PHONY : serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.o.provides

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.o.provides.build: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.o


serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/main.c.o: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/flags.make
serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/main.c.o: serializer/tests/multitree_unittests/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/main.c.o"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/multitree_unittests_exe.dir/main.c.o   -c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests/main.c

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/multitree_unittests_exe.dir/main.c.i"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests/main.c > CMakeFiles/multitree_unittests_exe.dir/main.c.i

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/multitree_unittests_exe.dir/main.c.s"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests/main.c -o CMakeFiles/multitree_unittests_exe.dir/main.c.s

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/main.c.o.requires:

.PHONY : serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/main.c.o.requires

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/main.c.o.provides: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/main.c.o.requires
	$(MAKE) -f serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/build.make serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/main.c.o.provides.build
.PHONY : serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/main.c.o.provides

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/main.c.o.provides.build: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/main.c.o


# Object files for target multitree_unittests_exe
multitree_unittests_exe_OBJECTS = \
"CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.o" \
"CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.o" \
"CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.o" \
"CMakeFiles/multitree_unittests_exe.dir/main.c.o"

# External object files for target multitree_unittests_exe
multitree_unittests_exe_EXTERNAL_OBJECTS =

serializer/tests/multitree_unittests/multitree_unittests_exe: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.o
serializer/tests/multitree_unittests/multitree_unittests_exe: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.o
serializer/tests/multitree_unittests/multitree_unittests_exe: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.o
serializer/tests/multitree_unittests/multitree_unittests_exe: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/main.c.o
serializer/tests/multitree_unittests/multitree_unittests_exe: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/build.make
serializer/tests/multitree_unittests/multitree_unittests_exe: azure-c-shared-utility/testtools/micromock/libmicromock_ctest.a
serializer/tests/multitree_unittests/multitree_unittests_exe: azure-c-shared-utility/testtools/umock_c/libumock_c.a
serializer/tests/multitree_unittests/multitree_unittests_exe: azure-c-shared-utility/testtools/ctest/libctest.a
serializer/tests/multitree_unittests/multitree_unittests_exe: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable multitree_unittests_exe"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/multitree_unittests_exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/build: serializer/tests/multitree_unittests/multitree_unittests_exe

.PHONY : serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/build

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/requires: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/multitree_unittests.cpp.o.requires
serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/requires: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/src/multitree.c.o.requires
serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/requires: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/__/__/__/azure-c-shared-utility/src/crt_abstractions.c.o.requires
serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/requires: serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/main.c.o.requires

.PHONY : serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/requires

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/clean:
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests && $(CMAKE_COMMAND) -P CMakeFiles/multitree_unittests_exe.dir/cmake_clean.cmake
.PHONY : serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/clean

serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/depend:
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : serializer/tests/multitree_unittests/CMakeFiles/multitree_unittests_exe.dir/depend
