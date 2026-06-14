cmake_minimum_required(VERSION 3.14)
project(rhino-rgss)

include(ExternalProject)

set(CMAKE_BUILD_RPATH_USE_ORIGIN ON)

set(CMAKE_CXX_STANDARD 98)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)

set(COMMON_FLAGS "\
    -O3 -Wall -Wformat -Wconversion \ 
    -Wimplicit-fallthrough -Werror=format-security \ 
    -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 \ 
    -fstack-clash-protection")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC -D_GLIBCXX_ASSERTIONS")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC")

add_compile_definitions(RGSS=2)

ExternalProject_Add(ruby181
  SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}
  INSTALL_DIR "${INSTALL}"
  BUILD_COMMAND sh ${CMAKE_CURRENT_SOURCE_DIR}/build-ruby181.sh
  INSTALL_COMMAND exit 0 # Do nothing
)

add_library(ruby STATIC IMPORTED GLOBAL)
set_target_properties(ruby PROPERTIES
  IMPORTED_LOCATION "${CMAKE_CURRENT_SOURCE_DIR}/ruby181-build/lib/libruby-static.a"
)
target_include_directories(ruby INTERFACE "${CMAKE_CURRENT_SOURCE_DIR}/libs/ruby181/include/ruby")

find_package(SDL2)
find_package(SDL2_mixer)
find_package(SDL2_image)
find_package(SDL2_ttf)
find_package(OpenGL)
find_package(libconfig)
find_package(Fontconfig)

include_directories(${SDL_INCLUDE_DIRS} ${Fontconfig_INCLUDE_DIRS} libs/ruby)

macro(link TARGET)    
    target_link_libraries(${TARGET} PRIVATE
        SDL2::SDL2 
        SDL2_mixer::SDL2_mixer 
        SDL2_image::SDL2_image
        SDL2_ttf::SDL2_ttf
        OpenGL::GL
        Fontconfig::Fontconfig
        config 
        ruby 
        -lm
        -lcrypt
    )
endmacro()  

add_subdirectory(core)