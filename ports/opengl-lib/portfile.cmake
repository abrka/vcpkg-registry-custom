vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO abrka/opengl_lib
    REF 75cab72
    SHA512 0
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