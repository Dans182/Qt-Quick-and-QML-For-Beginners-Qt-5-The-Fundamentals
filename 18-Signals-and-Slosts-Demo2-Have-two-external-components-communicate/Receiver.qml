import QtQuick 2.14

Item {

    property alias rectColor: receiverRectId.color
    width: receiverRectId.width
    height: receiverRectId.height

    function receiveInfo(count){
        receiverDisplayTextId.text = count
        console.log("Receiver receiver number: " + count)
    }

    Rectangle {
        id: receiverRectId
        width: 200
        height: 200
        color: "red"

        Text {
            id: receiverDisplayTextId
            anchors.centerIn: parent
            font.pointSize: 20
            text: "0"
        }
    }
}
