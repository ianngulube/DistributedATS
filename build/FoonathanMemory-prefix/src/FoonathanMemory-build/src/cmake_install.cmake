# Install script for directory: /home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/dds")
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfoonathan_memory-0.7.4.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfoonathan_memory-0.7.4.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfoonathan_memory-0.7.4.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory-build/src/libfoonathan_memory-0.7.4.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfoonathan_memory-0.7.4.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfoonathan_memory-0.7.4.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfoonathan_memory-0.7.4.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/foonathan/memory" TYPE FILE FILES "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory-build/src/config_impl.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/foonathan/memory/detail" TYPE FILE FILES "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory-build/src/container_node_sizes_impl.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/foonathan/memory" TYPE FILE FILES
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/aligned_allocator.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/allocator_storage.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/allocator_traits.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/config.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/container.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/debugging.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/default_allocator.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/deleter.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/error.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/fallback_allocator.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/malloc_allocator.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/heap_allocator.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/iteration_allocator.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/joint_allocator.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/memory_arena.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/memory_pool.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/memory_pool_collection.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/memory_pool_type.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/memory_resource_adapter.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/memory_stack.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/namespace_alias.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/new_allocator.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/segregator.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/smart_ptr.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/static_allocator.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/std_allocator.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/temporary_allocator.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/threading.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/tracking.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/virtual_memory.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory-build/src/container_node_sizes_impl.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/foonathan/memory/detail" TYPE FILE FILES
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/detail/align.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/detail/assert.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/detail/container_node_sizes.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/detail/debug_helpers.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/detail/ebo_storage.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/detail/free_list.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/detail/free_list_array.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/detail/ilog2.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/detail/lowlevel_allocator.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/detail/memory_stack.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/detail/small_free_list.hpp"
    "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory/include/foonathan/memory/detail/utility.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/foonathan_memory/cmake" TYPE FILE FILES "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory-build/src/cmake/foonathan_memory-config-version.cmake")
endif()

