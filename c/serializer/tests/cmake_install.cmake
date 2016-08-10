# Install script for directory: /home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/agentmacros_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/agenttypesystem_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/codefirst_cpp_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/codefirst_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/codefirst_withstructs_cpp_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/codefirst_withstructs_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/commanddecoder_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/datamarshaller_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/datapublisher_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/dataserializer_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/iotdevice_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/jsondecoder_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/jsonencoder_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/multitree_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/schema_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/schemalib_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/schemalib_without_init_unittests/cmake_install.cmake")
  include("/home/enesuysal/yocto/dmpreview/azure-iot-sdks/c/serializer/tests/schemaserializer_unittests/cmake_install.cmake")

endif()

