# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory-build"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/dds"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/tmp"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory-stamp"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FoonathanMemory-prefix/src/FoonathanMemory-stamp${cfgdir}") # cfgdir has leading slash
endif()
