cmake_minimum_required(VERSION 3.14)
project(rhino-rgss)

set(CMAKE_BUILD_RPATH_USE_ORIGIN ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)

set(COMMON_FLAGS "\
    -O3 -Wall -Wformat -Wconversion \ 
    -Wimplicit-fallthrough -Werror=format-security \ 
    -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 \ 
    -fstack-clash-protection")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC -D_GLIBCXX_ASSERTIONS")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC")

find_package(SDL3)

macro(link TARGET)
    target_link_libraries(${TARGET} PRIVATE
        SDL3::SDL3
    )

    target_include_directories(${TARGET} PUBLIC ${IPC_INCLUDES} core/include)
endmacro()  

add_subdirectory(core)