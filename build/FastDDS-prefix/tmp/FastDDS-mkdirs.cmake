# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FastDDS-prefix/src/FastDDS"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FastDDS-prefix/src/FastDDS-build"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/dds"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FastDDS-prefix/tmp"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FastDDS-prefix/src/FastDDS-stamp"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FastDDS-prefix/src"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FastDDS-prefix/src/FastDDS-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FastDDS-prefix/src/FastDDS-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FastDDS-prefix/src/FastDDS-stamp${cfgdir}") # cfgdir has leading slash
endif()
