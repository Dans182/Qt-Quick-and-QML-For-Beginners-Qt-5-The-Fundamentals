import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.8

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Delay Button Demo")

    Column {
        width: parent.width
        spacing: 40

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "Delayed Button. Use it when you want to prevent accidental clicks"
            font.pointSize: 15
        }

        DelayButton {
            property bool activated: false
            text: "DelayButton"
            anchors.horizontalCenter: parent.horizontalCenter
            delay: 1000
            onPressed: {
                if (activated === true) {
                    console.log("Button in clicked")
                    activated = false;
                }
            }

            onActivated: {
                console.log("Button Activated")
                activated = true
            }
            onProgressChanged: {
                console.log(progress)
            }
        }
    }
}
