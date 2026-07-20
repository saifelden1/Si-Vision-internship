cmake_minimum_required(VERSION 3.10)

project(SimpleCMakeProject)

set(CMAKE_CXX_STANDARD 11) #use c++11

# Main executable
add_executable(hello_cmake main.cpp) #ytal3 executable mn l main.cpp

# Preprocessing output target
add_custom_target(preprocess
    COMMAND ${CMAKE_CXX_COMPILER} -E ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp -o ${CMAKE_CURRENT_BINARY_DIR}/main.i
    COMMENT "Generating preprocessed output main.i"
    VERBATIM
)

# Assembly output target
add_custom_target(assembly
    COMMAND ${CMAKE_CXX_COMPILER} -S ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp -o ${CMAKE_CURRENT_BINARY_DIR}/main.s
    COMMENT "Generating assembly output main.s"
    VERBATIM # to execute the command as it is (best practice)
)
# DWARF file extraction target
add_custom_target(dwarf
    COMMAND objcopy --only-keep-debug ${CMAKE_CURRENT_BINARY_DIR}/hello_cmake.exe ${CMAKE_CURRENT_BINARY_DIR}/hello_cmake.dwarf
    COMMENT "Extracting DWARF debug information to hello_cmake.dwarf"
    VERBATIM
)

# Link step target (demonstrates linking process)
add_custom_target(link_step
    COMMAND ${CMAKE_CXX_COMPILER} ${CMAKE_CURRENT_BINARY_DIR}/main.cpp.obj -o ${CMAKE_CURRENT_BINARY_DIR}/hello_cmake_link.exe -Wl,-Map=hello_cmake_link.map -g
    DEPENDS hello_cmake
    COMMENT "Demonstrating link step separately"
    VERBATIM
)

# Map file generation target
add_custom_target(map_file
    COMMAND ${CMAKE_COMMAND} -E echo "Map file generated during build: hello_cmake.map"
    DEPENDS hello_cmake
    COMMENT "Map file available in build directory"
)

# Objdump target
add_custom_target(objdump
    COMMAND objdump -d -S ${CMAKE_CURRENT_BINARY_DIR}/hello_cmake.exe > ${CMAKE_CURRENT_BINARY_DIR}/hello_cmake.objdump
    COMMENT "Generating objdump output to hello_cmake.objdump"
    VERBATIM
)

# DWARF debug information generation
set_target_properties(hello_cmake PROPERTIES
    COMPILE_FLAGS "-g" # zawd -g ll compile flags
)



    # Linker map file generation (GCC/Clang)
set_target_properties(hello_cmake PROPERTIES
        LINK_FLAGS "-Wl,-Map=hello_cmake.map -g"
    )