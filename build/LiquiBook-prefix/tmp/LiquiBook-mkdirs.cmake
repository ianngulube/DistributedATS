# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/LiquiBook-prefix/src/LiquiBook"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/LiquiBook-prefix/src/LiquiBook-build"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/LiquiBook-prefix"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/LiquiBook-prefix/tmp"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/LiquiBook-prefix/src/LiquiBook-stamp"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/LiquiBook-prefix/src"
  "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/LiquiBook-prefix/src/LiquiBook-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/LiquiBook-prefix/src/LiquiBook-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/ianngulube/Documents/Code/cpp/Experimental_2/DistributedATS/build/LiquiBook-prefix/src/LiquiBook-stamp${cfgdir}") # cfgdir has leading slash
endif()
