cmake_minimum_required(VERSION 3.12.4)
project(FIXGateway)

find_package(Boost REQUIRED COMPONENTS program_options)

message(STATUS "Current source dir: ${CMAKE_CURRENT_SOURCE_DIR}")
message(STATUS "DDS_INCLUDE_DIR=${DDS_INCLUDE_DIR}")
message(STATUS "DDS_LIBRARY_DIR=${DDS_LIBRARY_DIR}")
message(STATUS "QUICKFIX_INCLUDE_DIR=${QUICKFIX_INCLUDE_DIR}")
message(STATUS "QUICKFIX_LIBRARY_DIR=${QUICKFIX_LIBRARY_DIR}")

file(GLOB DISTRIBUTED_ATS_FIX_GATEWAY_SRC *.cpp)
add_executable(FIXGateway ${DISTRIBUTED_ATS_FIX_GATEWAY_SRC})

target_include_directories(FIXGateway PRIVATE
    ${Boost_INCLUDE_DIRS}
    ${DDS_INCLUDE_DIR}
    ${QUICKFIX_INCLUDE_DIR}
    ${LOG4CXX_INCLUDE_DIR}
)

target_link_directories(FIXGateway PRIVATE
    ${DDS_LIBRARY_DIR}
    ${QUICKFIX_LIBRARY_DIR}
    ${LOG4CXX_LIBRARY_DIR}
    ${Boost_LIBRARY_DIRS}
)

target_link_libraries(FIXGateway
    PRIVATE
    DistributedATSLib
    quickfix
    log4cxx
    Boost::program_options
    fastcdr
    fastdds
)

set(CMAKE_XCODE_ATTRIBUTE_OTHER_CODE_SIGN_FLAGS "-o linker-signed")

install(TARGETS FIXGateway 
        PUBLIC_HEADER
          DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/dats
)
