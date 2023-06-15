import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("External Components with Signals and Slots")

    Notifier{
        id: notifierId
        rectColor: "yellowgreen"
        target: receiverId
    }

    Receiver {
        id: receiverId
        rectColor: "dodgerblue"
        anchors.right: parent.right
    }
//    Component.onCompleted: { //cuando el notifier cargue completamente
//        notifierId.notify.connect(receiverId.receiveInfo) //connect signal to slot
//    }
}

