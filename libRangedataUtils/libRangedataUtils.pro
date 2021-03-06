TEMPLATE = lib
CONFIG += staticlib
TARGET = RangedataUtils

CONFIG -= debug_and_release

CONFIG += debug
# CONFIG += release

#QMAKE_CXXFLAGS_RELEASE += -O3 -D NDEBUG -D BOOST_DISABLE_ASSERTS #full optimization
QMAKE_CXXFLAGS_RELEASE += -O2 -ggdb3 # full debug information 
QMAKE_CXXFLAGS_RELEASE += -msse -msse2 -msse3
QMAKE_CXXFLAGS += -std=gnu++0x   # this enables compiler support for the upcoming c++ standard in which the unordered_map is included

HEADERS += *.hpp
SOURCES += *.cpp

INCLUDEPATH += \
    ../libGeneralUtils \
    ../libGui3DQt

LIBS +=
