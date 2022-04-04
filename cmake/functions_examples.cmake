set(TACHYON_COMPONENTS tachyon-aeron tachyon-generic)

foreach(component ${TACHYON_COMPONENTS})
    string(REGEX REPLACE "tachyon-(.*))" "\\1" component_name_suffix ${component})
    string(TOUPPER ${component_name_suffix} component_name_suffix_upper)
    set(fc_src_dir "FETCHCONTENT_SOURCE_DIR_TACHYON_${component_name_suffix_upper}")
    set(${fc_src_dir} ${PROJECT_SOURCE_DIR}/extern/${component})
endforeach()

message("FETCHCONTENT_SOURCE_DIR_TACHYON_GENERIC")