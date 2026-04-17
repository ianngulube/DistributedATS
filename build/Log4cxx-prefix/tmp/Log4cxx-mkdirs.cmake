# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/Log4cxx-prefix/src/Log4cxx"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/Log4cxx-prefix/src/Log4cxx-build"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/Log4cxx-prefix"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/Log4cxx-prefix/tmp"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/Log4cxx-prefix/src/Log4cxx-stamp"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/Log4cxx-prefix/src"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/Log4cxx-prefix/src/Log4cxx-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/Log4cxx-prefix/src/Log4cxx-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/Log4cxx-prefix/src/Log4cxx-stamp${cfgdir}") # cfgdir has leading slash
endif()
