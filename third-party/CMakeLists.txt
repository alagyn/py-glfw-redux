set(PYBIND11_INSTALL OFF CACHE BOOL "" FORCE)
set(PYBIND11_TEST OFF CACHE BOOL "" FORCE)
add_subdirectory(pybind11)

set(BUILD_SHARED_LIBS ON CACHE BOOL "" FORCE)
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_WAYLAND OFF CACHE BOOL "" FORCE)
add_subdirectory(glfw)

if(${ENABLE_OPENGL_ES})
    set(GLAD_SRC glad/src/gles2.c)
else()
    set(GLAD_SRC glad/src/gl.c)
endif()

add_library(glad
    SHARED
    ${GLAD_SRC}
)

target_include_directories(glad PUBLIC
    glad/include
)
set_target_properties(glad PROPERTIES
    POSITION_INDEPENDENT_CODE ON
)

target_compile_definitions(glad
    PRIVATE
    GLAD_API_CALL_EXPORT=1
    GLAD_API_CALL_EXPORT_BUILD=1
)
