cmake_minimum_required(VERSION 3.22)
project(BasisSets Fortran)

# Enable Fortran
enable_language(Fortran)

# Set Fortran compiler flags
if(CMAKE_Fortran_COMPILER_ID MATCHES "GNU")
    set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -O2 -fPIC -ffree-line-length-none")
    set(CMAKE_Fortran_FLAGS_DEBUG "-g -Wall -Wextra -fbounds-check")
elseif(CMAKE_Fortran_COMPILER_ID MATCHES "Intel")
    set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -O2 -fPIC")
    set(CMAKE_Fortran_FLAGS_DEBUG "-g -warn all -check bounds")
elseif(CMAKE_Fortran_COMPILER_ID MATCHES "NVHPC|PGI")
    set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -O2 -fPIC")
    set(CMAKE_Fortran_FLAGS_DEBUG "-g -Mbounds")
endif()

# Collect all Fortran source files from src/ with CONFIGURE_DEPENDS
file(GLOB_RECURSE FORTRAN_SOURCES 
    CONFIGURE_DEPENDS
    "${CMAKE_SOURCE_DIR}/src/*.f90"
)

# Create static library
add_library(basis STATIC ${FORTRAN_SOURCES})

# Set output name to lib_basis.a
set_target_properties(basis PROPERTIES
    OUTPUT_NAME basis
    ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib
)

# Install library
install(TARGETS basis
    ARCHIVE DESTINATION lib
)

# Install module files
install(DIRECTORY ${CMAKE_BINARY_DIR}/
    DESTINATION include
    FILES_MATCHING PATTERN "*.mod"
)
