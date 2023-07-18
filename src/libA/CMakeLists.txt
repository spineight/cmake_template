set(SOURCES
    libA.cpp
)

add_library(cmake_template_libA "")

#### target_sources can be called in inner directory (once target is created) - this idea is used at Sixts
target_sources(cmake_template_libA PRIVATE libA.cpp)
add_library(cmake_template::libA ALIAS cmake_template_libA)


target_compile_features(cmake_template_libA PUBLIC cxx_std_17)
target_include_directories(cmake_template_libA PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../../include/libA)

