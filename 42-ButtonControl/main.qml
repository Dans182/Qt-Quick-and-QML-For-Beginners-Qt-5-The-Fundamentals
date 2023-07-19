import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5
//Se usa actualmente QtQuickControls 2. Que es para móviles y desktop. El 1 ya está deprecated porque es solo para desktop
import QtQuick.Layouts 1.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        anchors.left: parent.left
        anchors.right: parent.right

        Button{
            id: button1
            text: "Button1"
            Layout.fillWidth: true
            onClicked: {
                console.log("Clicked on button 1");
            }
            onDoubleClicked: {
                console.log("Double clicked on button 1");
            }
        }
        Button{
            id: button2
            text: "Button2"
            Layout.fillWidth: true
            onClicked: {
                console.log("Clicked on button 2");
            }
        }
    }
}
