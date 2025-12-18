vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO abrka/opengl_lib
    REF 0d0cfc4
    SHA512 a117e3aaae20246ccfb323ecc8050bb2e243d60cbd4c1f37d6105b91e2a35427f5508f639c986855bbcf5ed2f30acd6209c98e2f81ad00b3a403dcf151628dba
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