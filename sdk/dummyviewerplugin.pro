TEMPLATE  = lib

CONFIG   += plugin

CONFIG(debug, debug|release) {
    DESTDIR = ../../../plugins
    QMAKE_LIBDIR += ../../lib
    LIBS += -lqdltd
}
else {
    DESTDIR = ../../../plugins
    QMAKE_LIBDIR += ../../lib
    LIBS += -lqdlt
}

TARGET = $$qtLibraryTarget(dummyviewerplugin)

# Defines and Header Directories
DEFINES  += QT_VIEWER

INCLUDEPATH += ../../include

# Project files
HEADERS +=  dummyviewerplugin.h \
            form.h \
            ../../include/qdlt.h \
            ../../include/plugininterface.h

SOURCES +=  dummyviewerplugin.cpp \
            form.cpp

FORMS +=    form.ui