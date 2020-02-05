cmake_minimum_required(VERSION 3.4)

project(test-hdf)

find_package(HDF5 COMPONENTS C REQUIRED)

add_executable(test-hdf
    h5_crtdat.c)

target_compile_definitions(test-hdf PUBLIC -DH5_BUILT_AS_DYNAMIC_LIB)
target_include_directories(test-hdf PUBLIC ${HDF5_INCLUDE_DIRS})
target_link_libraries(test-hdf PUBLIC ${HDF5_LIBRARIES} ${HDF5_HL_LIBRARIES} ${HDF5_C_LIBRARIES} ${HDF5_C_HL_LIBRARIES} )
