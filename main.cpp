#include <QApplication>
#include <QQmlApplicationEngine>
#include "tabdialog.h"
#include "CentralManager/CentralManager.h"
#include "ui_about.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QWidget *widget = new QWidget;

    C_CentralManager manager(true);

    //Ui::About ui;
    //ui.setupUi(widget);

    manager.start();
    return app.exec();
}
