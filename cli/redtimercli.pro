QT += core network
QT -= gui

CONFIG += c++14

TARGET = redtimercli
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp \
    CommandSender.cpp

HEADERS += \
    CommandSender.h

TRANSLATIONS += ../i18n/redtimercli_ru.ts

# External projects
include($$PWD/../libqtredmine/qtredmine.pri)
include($$PWD/../libredtimer/libredtimer.pri)
