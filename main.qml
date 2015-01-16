import QtQuick 2.2
import QtQuick.Controls 1.1

ApplicationWindow {
    id: applicationWindow1
    visible: true
    width: 640
    height: 480
    title: qsTr("GARVIS")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    PathView {
        id: pathView1
        x: 72
        y: -36
        width: 427
        height: 254
        z: 0
        rotation: 0
        scale: 1
        delegate: Component {
            Column {
                Image {
                     width: 50; height: 50
                     smooth: true
                     source: sourceCode
                }

                Text {
                    x: 5
                    text: name
                    font.bold: true
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                spacing: 5
            }
        }
        model: ListModel {
            ListElement {
                name: "Living Room"
                sourceCode: "livingroom.jpg"
            }

            ListElement {
                name: "Dining Room"
                sourceCode: "kitchen.gif"
            }

            ListElement {
                name: "Kitchen"
                sourceCode: "kitchen.gif"
            }

            ListElement {
                name: "Bathroom"
                sourceCode: "bathroom.png"
            }

            ListElement {
                name: "Bedroom 1"
                sourceCode: "bedroom1.jpg"
            }

            ListElement {
                name: "Bedroom 2"
                sourceCode: "bedroom1.jpg"
            }

            ListElement {
                name: "Bedroom 3"
                sourceCode: "bedroom1.jpg"
            }
        }
        path: Path {
            startY: 200
            startX: 240
            PathQuad {
                x: 240
                y: 50
                controlY: 150
                controlX: 520
            }

            PathQuad {
                x: 240
                y: 200
                controlY: 150
                controlX: -40
            }
        }
    }

    Item {
        id: item1
        x: 200
        y: 235
        width: 200
        height: 200
    }
}
