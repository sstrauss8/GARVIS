#include <QApplication>
#include <QQmlApplicationEngine>
#include "tabdialog.h"
#include "CentralManager/CentralManager.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    C_CentralManager manager(true);

    return app.exec();
}
