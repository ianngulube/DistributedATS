# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/ASIO-prefix/src/ASIO"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/ASIO-prefix/src/ASIO-build"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/ASIO-prefix"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/ASIO-prefix/tmp"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/ASIO-prefix/src/ASIO-stamp"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/ASIO-prefix/src"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/ASIO-prefix/src/ASIO-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/ASIO-prefix/src/ASIO-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/ASIO-prefix/src/ASIO-stamp${cfgdir}") # cfgdir has leading slash
endif()
