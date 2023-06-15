import QtQuick 2.14

Item {

    property alias rectColor: notifierRectId.color
    width: notifierRectId.width
    height: notifierRectId.height
    property int count: 0
    property Receiver target: null

    onTargetChanged: {
        notify.connect(target.receiveInfo)
    }

    signal notify(string count) //declarar señal

    Rectangle {
        id: notifierRectId
        width: 200
        height: 200
        color: "red"

        Text {
            id: displayTextId
            anchors.centerIn: parent
            font.pointSize: 20
            text: count
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                count++
                notify(count)
            }
        }
    }
}
