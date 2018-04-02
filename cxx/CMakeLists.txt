cmake_minimum_required(VERSION 3.9)
project(00_addLogo)

set(CMAKE_CXX_STANDARD 17)
SET(CMAKE_SYSTEM_NAME Windows)
SET(CMAKE_CXX_COMPILER i686-w64-mingw32-g++)

add_executable(00_addLogo main.cpp)

#dependencies
find_package(ImageMagick COMPONENTS Magick++)
include_directories(${ImageMagick_INCLUDE_DIRS})
target_link_libraries(00_addLogo ${ImageMagick_LIBRARIES})

