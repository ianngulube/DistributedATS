# Install script for directory: /home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix/src/QuickFIX/src/C++

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/quickfix")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libquickfix.so.17.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libquickfix.so.17"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix/src/QuickFIX/lib/libquickfix.so.17.0.0"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix/src/QuickFIX/lib/libquickfix.so.17"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libquickfix.so.17.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libquickfix.so.17"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix/src/QuickFIX/lib/libquickfix.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix/src/QuickFIX-build/src/C++/CMakeFiles/quickfix.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix/src/QuickFIX-build/src/C++//quickfix.pdb:quickfix")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/quickfix" TYPE DIRECTORY FILES "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix/src/QuickFIX/src/C++/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/double\\-conversion$" EXCLUDE REGEX "/test$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix/src/QuickFIX-build/src/C++/test/cmake_install.cmake")

endif()

