import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Flow Demo")

    Flow {
        id: containerFlowId
        width: parent.width
        height: parent.height

        flow: Flow.TopToBottom
        layoutDirection: Qt.RightToLeft
        spacing: 20

        Rectangle{
            id:topLeftRectId
            width: 70
            height: 70
            color: "green"
            Text{
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "1"
            }
        }
        Rectangle{
            id:topCenterRectId
            width: 100
            height: 100
            color: "beige"
            Text{
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "2"
            }
        }
        Rectangle{
            id:topRightRectId
            width: 100
            height: 100
            color: "dodgerblue"
            Text{
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "3"
            }
        }
        Rectangle{
            id:leftCenterRectId
            width: 100
            height: 100
            color: "magenta"
            Text{
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "4"
            }
        }
        Rectangle{
            id:centerRectId
            width: 100
            height: 100
            color: "red"
            Text{
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "5"
            }
        }
        Rectangle{
            id:rightCenterRectId
            width: 100
            height: 100
            color: "yellow"
            Text{
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "6"
            }
        }
        Rectangle{
            id:bottomLeftRectId
            width: 100
            height: 100
            color: "royalblue"
            Text{
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "7"
            }
        }
        Rectangle{
            id:bottomCenterRectId
            width: 100
            height: 100
            color: "greenyellow"
            Text{
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "2"
            }
        }
        Rectangle{
            id:bottomRightRectId
            width: 100
            height: 100
            color: "blue"
            Text{
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "9"
            }
        }
    }
}
