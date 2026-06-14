# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/home/maeve/Source/Repositories/GitHub/MolassesLover/rhino")
  file(MAKE_DIRECTORY "/home/maeve/Source/Repositories/GitHub/MolassesLover/rhino")
endif()
file(MAKE_DIRECTORY
  "/home/maeve/Source/Repositories/GitHub/MolassesLover/rhino/target/release/ruby181-prefix/src/ruby181-build"
  "/home/maeve/Source/Repositories/GitHub/MolassesLover/rhino/target/release/ruby181-prefix"
  "/home/maeve/Source/Repositories/GitHub/MolassesLover/rhino/target/release/ruby181-prefix/tmp"
  "/home/maeve/Source/Repositories/GitHub/MolassesLover/rhino/target/release/ruby181-prefix/src/ruby181-stamp"
  "/home/maeve/Source/Repositories/GitHub/MolassesLover/rhino/target/release/ruby181-prefix/src"
  "/home/maeve/Source/Repositories/GitHub/MolassesLover/rhino/target/release/ruby181-prefix/src/ruby181-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/maeve/Source/Repositories/GitHub/MolassesLover/rhino/target/release/ruby181-prefix/src/ruby181-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/maeve/Source/Repositories/GitHub/MolassesLover/rhino/target/release/ruby181-prefix/src/ruby181-stamp${cfgdir}") # cfgdir has leading slash
endif()
