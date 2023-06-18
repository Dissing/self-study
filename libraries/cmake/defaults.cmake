set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(WARNING_COMPILER_OPTIONS -Wall -Wextra -Wno-unused-parameter -Wno-missing-field-initializers)

set(DEPENDS_DIR ${CMAKE_SOURCE_DIR}/depends)

if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    add_compile_options(-fdiagnostics-color=always)
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
    add_compile_options ($<$<COMPILE_LANGUAGE:C>:-fcolor-diagnostics>)
    add_compile_options(-Wno-gnu-zero-variadic-macro-arguments)
    add_compile_options(-gdwarf-4)
endif()
