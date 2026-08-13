cmake_minimum_required(VERSION 3.26)

project(
    Swift_C 
    LANGUAGES C Swift
)

add_library(
    hello_c
    STATIC
    Sources/hello.c
)

target_include_directories(
    hello_c
    PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}/Sources"
)

add_executable(
    swift_app
    Sources/main.swift
)

target_compile_options(
    swift_app
    PRIVATE
    "$<$<COMPILE_LANGUAGE:Swift>:SHELL:
	-import-bridging-header
	${CMAKE_CURRENT_SOURCE_DIR}/Sources/BridgingHeader.h
    >"
)

target_link_libraries(
    swift_app
    PRIVATE
    hello_c
)
