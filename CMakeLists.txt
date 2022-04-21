cmake_minimum_required(VERSION 3.16)
project(uos
        VERSION 0.0.1
        DESCRIPTION "Unified Operating System"
        HOMEPAGE_URL "https://github.com/rihtwis-weard/unified-os"
        LANGUAGES CXX C ASM)

ENABLE_LANGUAGE(ASM)

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR i686)

set(CMAKE_CXX_COMPILER /opt/bin/i686-elf-g++)
set(CMAKE_C_COMPILER /opt/bin/i686-elf-gcc)
set(CMAKE_ASM_COMPILER /opt/bin/i686-elf-as)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -ffreestanding -fno-exceptions -fno-rtti")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -ffreestanding")
