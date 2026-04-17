# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FastCDR-prefix/src/FastCDR"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FastCDR-prefix/src/FastCDR-build"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/dds"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FastCDR-prefix/tmp"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FastCDR-prefix/src/FastCDR-stamp"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FastCDR-prefix/src"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FastCDR-prefix/src/FastCDR-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FastCDR-prefix/src/FastCDR-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/FastCDR-prefix/src/FastCDR-stamp${cfgdir}") # cfgdir has leading slash
endif()
