include(biicode/boost/setup)

ADD_BII_TARGETS()

#Include biicode Boost setup

set(Boost_USE_STATIC_LIBS ON)

#Use `bii_find_boost()`, our wrapper of `find_package(Boost)`:
bii_find_boost(COMPONENTS algorithm REQUIRED)

target_include_directories(${BII_BLOCK_TARGET} INTERFACE ${Boost_INCLUDE_DIRS})
