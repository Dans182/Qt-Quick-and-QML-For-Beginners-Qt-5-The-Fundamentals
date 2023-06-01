import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Datatypes Demo")

    Rectangle {
        width: 200
        height: 100
        anchors.centerIn: parent
        color: "yellow"

        Text {
            id: mTextId
            text: qsTr("Hello World")
            //el qsTr("") es una función que ayuda para cuando quieres traducir tu aplicación en múltiples idiomas
            anchors.centerIn: parent
        }
    }
}
