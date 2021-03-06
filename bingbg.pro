QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    src/proxy.cpp \
    src/author.cpp \
    src/about.cpp \
    src/de.cpp \
    src/geTime.cpp \
    src/lang.cpp \
    src/loadLanguage.cpp \
    src/main.cpp \
    src/bingbg.cpp \
    src/makeDir.cpp \
    src/parseXml.cpp \
    src/setbg.cpp


HEADERS += \
    include/author.h \
    include/about.h \
    include/bingbg.h \
    include/proc.h \
    include/lang.h \
    include/setbg.h \
    include/de.h \
    include/proxy.h

FORMS += \
    form/author.ui \
    form/about.ui \
    form/bingbg.ui \
    form/lang.ui \
    form/de.ui \
    form/proxy.ui

TRANSLATIONS += \
    lang/lang_en_US.ts \
    lang/lang_fr_FR.ts \
    lang/lang_fr_CA.ts \
    lang/lang_ge_GE.ts \
    lang/lang_zh_TW.ts \
    lang/lang_zh_CN.ts \
    lang/lang_ru_RU.ts

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    res/resources.qrc

LIBS += -l curl `xml2-config --cflags --libs`


INCLUDEPATH += /usr/include/libxml2
