function(add_cxx17_executable_target target_name)
    add_executable(${target_name} ${ARGN})
    target_compile_features(${target_name} PUBLIC cxx_std_17)

    set(DEBUG_FLAGS -Wall -Wextra -Wpedantic -Werror)
    set(RELEASE_FLAGS -O3)

    target_compile_options(${target_name} PUBLIC "$<$<CONFIG:DEBUG>:${DEBUG_FLAGS}>")
    target_compile_options(${target_name} PUBLIC "$<$<CONFIG:RELEASE>:${RELEASE_FLAGS}>")
    set_target_properties(${target_name} PROPERTIES LINKER_LANGUAGE CXX)
    target_include_directories(${target_name} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

endfunction()