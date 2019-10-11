cmake_minimum_required (VERSION 2.6)
cmake_policy(SET CMP0048 NEW)

project (quake2sdl VERSION 0.17)

set (CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/Modules")
set (CMAKE_C_FLAGS_RELEASE "-O3")
find_package (SDL2 REQUIRED)
find_package (OpenGL REQUIRED)

option (WITH_RETEX "Support for retexture" OFF)
option (WITH_QMAX "Improved graphics" OFF)

if (WITH_QMAX)
  find_package (JPEG REQUIRED)
endif (WITH_QMAX)

add_subdirectory (src)
