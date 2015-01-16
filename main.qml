import QtQuick 2.2
import QtQuick.Controls 1.1

ApplicationWindow {
    id: applicationWindow1
    visible: true
    width: 1000
    height: 600
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
        x: 264
        y: -38
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

    GroupBox {
        id: testingGroupbox
        x: 7
        y: 244
        width: 364
        height: 223
        title: qsTr("Setup and Configuration")

        Button {
            id: button1
            x: 0
            y: 43
            text: qsTr("Add New Room")
            tooltip: "Add and setup a new room"
            checkable: false
        }

        Button {
            id: button2
            x: 0
            y: 77
            text: "Add New Device"
        }

        Button {
            id: button3
            x: -1
            y: 109
            text: qsTr("Remove Device")
        }

        TextArea {
            id: textArea1
            x: 103
            y: 43
            text: "List of Devices"

            Label {
                id: label1
                x: 329
                y: -15
                text: "Number of Devices"
            }
        }
    }

    CheckBox {
        id: checkBox1
        x: 18
        y: 272
        text: qsTr("Smart Decision Mode Enabled")
        checked: false
    }

    GroupBox {
        id: groupBox1
        x: 428
        y: 244
        width: 360
        height: 223
        title: qsTr("Room Manager")

        TextArea {
            id: textArea2
            x: 105
            y: 23
            width: 38
            height: 23
            text: "0"
        }
    }

    TextArea {
        id: textArea3
        x: 568
        y: 251
        width: 130
        height: 24
    }
}
