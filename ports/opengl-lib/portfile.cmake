vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO abrka/opengl_lib
    REF 75cab72
    SHA512 10b531d9e97b63050f6356ab15ba3304468c1bb3c44ec59cb1f4717ebaacd87230703385f1b22562ceaf882e229670fba535a389f93e2737d426ed642857ecf8
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
    OPTIONS 
        -DOPENGL_LIB_BUILD_EXAMPLE=OFF
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "opengl_lib" CONFIG_PATH "lib/cmake/opengl_lib")
vcpkg_fixup_pkgconfig()
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")