vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO abrka/opengl_lib
    REF 3d5b3e6
    SHA512 d9d297818f2605164cffcec1154cf0a62e17140091ace592faf834d6f689768cc64ffbda0e196da0b9589623d556b084914c1aefbd72cbff5174955917946b44
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
    OPTIONS 
        -DOPENGL_LIB_BUILD_EXAMPLE=OFF
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME "opengl_lib" CONFIG_PATH "lib/cmake/opengl_lib")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")