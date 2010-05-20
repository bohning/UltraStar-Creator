TEMPLATE = app
TARGET = usc
DESTDIR = ../bin
MOC_DIR = tmp
UI_DIR = ui
OBJECTS_DIR = tmp
RCC_DIR = tmp
QT += core \
    gui \
    network
HEADERS += main.h \
    QU.h \
    QUStringSupport.h \
    QUSongSupport.h \
    song/QUSongInterface.h \
    song/QUSongFile.h \
    song/QUSongLine.h \
    mediaplayer/QUAutoCue.h \
    mediaplayer/QUMediaPlayer.h \
    support/QULogService.h \
    support/QUMessageBox.h \
    support/QUProgressDialog.h \
    support/QUMetaphoneString.h \
    QCMainWindow.h \
    QUAboutDialog.h \
    version.h
SOURCES += main.cpp \
    QCMainWindow.cpp \
    QU.cpp \
    QUStringSupport.cpp \
    QUSongSupport.cpp \
    mediaplayer/QUAutoCue.cpp \
    mediaplayer/QUMediaPlayer.cpp \
    support/QULogService.cpp \
    support/QUProgressDialog.cpp \
    support/QUMessageBox.cpp \
    support/QUMetaphoneString.cpp \
    song/QUSongFile.cpp \
    song/QUSongLine.cpp \
    QUAboutDialog.cpp
FORMS += mediaplayer/QUMediaPlayer.ui \
    support/QUMessageBox.ui \
    support/QUProgressDialog.ui \
    QCMainWindow.ui \
    QUAboutDialog.ui
RESOURCES += resources/usc.qrc
TRANSLATIONS = resources/usc.de.ts \
    resources/usc.es.ts \
    resources/usc.fr.ts \
    resources/usc.it.ts \
    resources/usc.pl.ts
INCLUDEPATH += . \
    song \
    mediaplayer \
    support \
    ui
win32 { 
    RC_FILE = usc.rc
    INCLUDEPATH += ../include/taglib \
        ../include/bass \
        ../include/bass_fx \
        ../include/hunspell
    LIBS += -L"../lib" \
        -ltag \
        -lbass \
        -lbass_fx \
        -llibhunspell
}
#CONFIG -= debug_and_release \
#    release
#CONFIG += debug
CONFIG += release
