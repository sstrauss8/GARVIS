TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp \
    CentralManager/CentralManager.cpp \
    CentralManager/CommandCreator.cpp \
    CentralManager/IOManager.cpp \
    CentralManager/StatusMonitor.cpp \
    tabdialog.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    CentralManager/CentralManager.h \
    CentralManager/CommandCreator.h \
    CentralManager/IOManager.h \
    CentralManager/StatusMonitor.h \
    tabdialog.h
