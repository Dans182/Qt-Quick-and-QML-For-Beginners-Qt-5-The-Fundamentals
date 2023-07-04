import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Anchors Demo")

    Rectangle {
        id: containerRectId
        width: 300
        height: width
        border.color: "black"
        anchors.centerIn: parent

        Rectangle {
            id: topLeftRectId
            width: 100
            height: width
            color: "magenta"
        }
        Rectangle {
            id: topCenterRectId
            width: 100
            height: width
            color: "yellowgreen"
            anchors.left: topLeftRectId.right
        }
        Rectangle {
            id: topRightRectId
            width: 100
            height: width
            color: "dodgerblue"
            anchors.left: topCenterRectId.right
        }
        Rectangle {
            id: centerLeftRectId
            width: 100
            height: width
            color: "red"
            anchors.top: topLeftRectId.bottom
        }
        Rectangle {
            id: centerMiddleRectId
            width: 100
            height: width
            color: "black"
            anchors.top: topCenterRectId.bottom
            anchors.left: centerLeftRectId.right
        }
        Rectangle {
            id: centerRightRectId
            width: 100
            height: width
            color: "green"
            anchors.top: topRightRectId.bottom
            anchors.left: centerMiddleRectId.right
        }
        Rectangle {
            id: bottomLeftRectId
            width: 100
            height: width
            color: "blue"
            anchors.top: centerLeftRectId.bottom
        }
        Rectangle {
            id: bottomCenterRectId
            width: 100
            height: width
            color: "purple"
            anchors.top: centerMiddleRectId.bottom
            anchors.left: bottomLeftRectId.right
        }
        Rectangle {
            id: bottomRightRectId
            width: 100
            height: width
            color: "yellow"
            anchors.top: centerRightRectId.bottom
            anchors.left: bottomCenterRectId.right
        }
    }
}
