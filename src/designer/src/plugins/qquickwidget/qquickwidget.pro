TARGET      = qquickwidget
os2:TARGET_SHORT = qqwgt
QT         += widgets quickwidgets

PLUGIN_CLASS_NAME = QQuickWidgetPlugin
include(../plugins.pri)

SOURCES += qquickwidget_plugin.cpp
HEADERS += qquickwidget_plugin.h
RESOURCES += qquickwidget_plugin.qrc
