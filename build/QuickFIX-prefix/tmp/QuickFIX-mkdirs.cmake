# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix/src/QuickFIX"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix/src/QuickFIX-build"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix/tmp"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix/src/QuickFIX-stamp"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix/src"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix/src/QuickFIX-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix/src/QuickFIX-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/QuickFIX-prefix/src/QuickFIX-stamp${cfgdir}") # cfgdir has leading slash
endif()
