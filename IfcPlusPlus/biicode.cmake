include(biicode/boost/setup)

ADD_BII_TARGETS()

#Include biicode Boost setup

set(Boost_USE_STATIC_LIBS OFF)
set(BII_BOOST_VERBOSE ON)

#Use `bii_find_boost()`, our wrapper of `find_package(Boost)`:
bii_find_boost(COMPONENTS date_time REQUIRED)

target_include_directories(${BII_BLOCK_TARGET} INTERFACE ${Boost_INCLUDE_DIRS})

IF(CMAKE_COMPILER_IS_GNUCXX)
  SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
ENDIF()
