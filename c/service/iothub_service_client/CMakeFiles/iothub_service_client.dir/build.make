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
include service/iothub_service_client/CMakeFiles/iothub_service_client.dir/depend.make

# Include the progress variables for this target.
include service/iothub_service_client/CMakeFiles/iothub_service_client.dir/progress.make

# Include the compile flags for this target's objects.
include service/iothub_service_client/CMakeFiles/iothub_service_client.dir/flags.make

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/parson/parson.c.o: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/flags.make
service/iothub_service_client/CMakeFiles/iothub_service_client.dir/parson/parson.c.o: service/iothub_service_client/parson/parson.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object service/iothub_service_client/CMakeFiles/iothub_service_client.dir/parson/parson.c.o"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iothub_service_client.dir/parson/parson.c.o   -c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client/parson/parson.c

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/parson/parson.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iothub_service_client.dir/parson/parson.c.i"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client/parson/parson.c > CMakeFiles/iothub_service_client.dir/parson/parson.c.i

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/parson/parson.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iothub_service_client.dir/parson/parson.c.s"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client/parson/parson.c -o CMakeFiles/iothub_service_client.dir/parson/parson.c.s

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/parson/parson.c.o.requires:

.PHONY : service/iothub_service_client/CMakeFiles/iothub_service_client.dir/parson/parson.c.o.requires

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/parson/parson.c.o.provides: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/parson/parson.c.o.requires
	$(MAKE) -f service/iothub_service_client/CMakeFiles/iothub_service_client.dir/build.make service/iothub_service_client/CMakeFiles/iothub_service_client.dir/parson/parson.c.o.provides.build
.PHONY : service/iothub_service_client/CMakeFiles/iothub_service_client.dir/parson/parson.c.o.provides

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/parson/parson.c.o.provides.build: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/parson/parson.c.o


service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.o: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/flags.make
service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.o: service/iothub_service_client/src/connection_string_parser.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.o"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.o   -c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client/src/connection_string_parser.c

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.i"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client/src/connection_string_parser.c > CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.i

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.s"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client/src/connection_string_parser.c -o CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.s

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.o.requires:

.PHONY : service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.o.requires

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.o.provides: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.o.requires
	$(MAKE) -f service/iothub_service_client/CMakeFiles/iothub_service_client.dir/build.make service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.o.provides.build
.PHONY : service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.o.provides

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.o.provides.build: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.o


service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.o: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/flags.make
service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.o: service/iothub_service_client/src/iothub_registrymanager.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.o"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.o   -c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client/src/iothub_registrymanager.c

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.i"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client/src/iothub_registrymanager.c > CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.i

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.s"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client/src/iothub_registrymanager.c -o CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.s

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.o.requires:

.PHONY : service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.o.requires

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.o.provides: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.o.requires
	$(MAKE) -f service/iothub_service_client/CMakeFiles/iothub_service_client.dir/build.make service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.o.provides.build
.PHONY : service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.o.provides

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.o.provides.build: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.o


service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.o: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/flags.make
service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.o: service/iothub_service_client/src/iothub_messaging_ll.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.o"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.o   -c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client/src/iothub_messaging_ll.c

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.i"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client/src/iothub_messaging_ll.c > CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.i

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.s"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client/src/iothub_messaging_ll.c -o CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.s

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.o.requires:

.PHONY : service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.o.requires

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.o.provides: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.o.requires
	$(MAKE) -f service/iothub_service_client/CMakeFiles/iothub_service_client.dir/build.make service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.o.provides.build
.PHONY : service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.o.provides

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.o.provides.build: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.o


service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.o: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/flags.make
service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.o: service/iothub_service_client/src/iothub_service_client_auth.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.o"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.o   -c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client/src/iothub_service_client_auth.c

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.i"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client/src/iothub_service_client_auth.c > CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.i

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.s"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client/src/iothub_service_client_auth.c -o CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.s

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.o.requires:

.PHONY : service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.o.requires

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.o.provides: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.o.requires
	$(MAKE) -f service/iothub_service_client/CMakeFiles/iothub_service_client.dir/build.make service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.o.provides.build
.PHONY : service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.o.provides

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.o.provides.build: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.o


service/iothub_service_client/CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.o: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/flags.make
service/iothub_service_client/CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.o: iothub_client/src/iothub_message.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object service/iothub_service_client/CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.o"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.o   -c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/src/iothub_message.c

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.i"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/src/iothub_message.c > CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.i

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.s"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/iothub_client/src/iothub_message.c -o CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.s

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.o.requires:

.PHONY : service/iothub_service_client/CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.o.requires

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.o.provides: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.o.requires
	$(MAKE) -f service/iothub_service_client/CMakeFiles/iothub_service_client.dir/build.make service/iothub_service_client/CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.o.provides.build
.PHONY : service/iothub_service_client/CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.o.provides

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.o.provides.build: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.o


# Object files for target iothub_service_client
iothub_service_client_OBJECTS = \
"CMakeFiles/iothub_service_client.dir/parson/parson.c.o" \
"CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.o" \
"CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.o" \
"CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.o" \
"CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.o" \
"CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.o"

# External object files for target iothub_service_client
iothub_service_client_EXTERNAL_OBJECTS =

service/iothub_service_client/libiothub_service_client.a: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/parson/parson.c.o
service/iothub_service_client/libiothub_service_client.a: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.o
service/iothub_service_client/libiothub_service_client.a: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.o
service/iothub_service_client/libiothub_service_client.a: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.o
service/iothub_service_client/libiothub_service_client.a: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.o
service/iothub_service_client/libiothub_service_client.a: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.o
service/iothub_service_client/libiothub_service_client.a: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/build.make
service/iothub_service_client/libiothub_service_client.a: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C static library libiothub_service_client.a"
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && $(CMAKE_COMMAND) -P CMakeFiles/iothub_service_client.dir/cmake_clean_target.cmake
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/iothub_service_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
service/iothub_service_client/CMakeFiles/iothub_service_client.dir/build: service/iothub_service_client/libiothub_service_client.a

.PHONY : service/iothub_service_client/CMakeFiles/iothub_service_client.dir/build

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/requires: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/parson/parson.c.o.requires
service/iothub_service_client/CMakeFiles/iothub_service_client.dir/requires: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/connection_string_parser.c.o.requires
service/iothub_service_client/CMakeFiles/iothub_service_client.dir/requires: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_registrymanager.c.o.requires
service/iothub_service_client/CMakeFiles/iothub_service_client.dir/requires: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_messaging_ll.c.o.requires
service/iothub_service_client/CMakeFiles/iothub_service_client.dir/requires: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/src/iothub_service_client_auth.c.o.requires
service/iothub_service_client/CMakeFiles/iothub_service_client.dir/requires: service/iothub_service_client/CMakeFiles/iothub_service_client.dir/__/__/iothub_client/src/iothub_message.c.o.requires

.PHONY : service/iothub_service_client/CMakeFiles/iothub_service_client.dir/requires

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/clean:
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client && $(CMAKE_COMMAND) -P CMakeFiles/iothub_service_client.dir/cmake_clean.cmake
.PHONY : service/iothub_service_client/CMakeFiles/iothub_service_client.dir/clean

service/iothub_service_client/CMakeFiles/iothub_service_client.dir/depend:
	cd /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/service/iothub_service_client/CMakeFiles/iothub_service_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : service/iothub_service_client/CMakeFiles/iothub_service_client.dir/depend
