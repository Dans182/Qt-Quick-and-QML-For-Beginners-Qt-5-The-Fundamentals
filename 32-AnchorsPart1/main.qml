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
            anchors.left: centerLeftRectId.right
            anchors.top: topCenterRectId.bottom

            anchors.topMargin: 10
            //para que funcionen los margenes de los anchors, se tiene que haber definido antes un anchor
            //y el margin va a afectar a todos los elementos que estén anclados a el
            //En este caso, el topMargin funciona, porque fue definido en el anchors.top
            //sin embargo, el anchors.rightMargin no funcionará porque no fue definido en ningún lado como propiedad
            anchors.rightMargin: 10 //este no funcionará

            //otra forma es con los offsets. Estos permiten que la posición de tus objetos puedan ser manipulados usando
            //las líneas centrales horizontales y verticales
            //habría que comentar los anchors.left y anchors.top
            //anchors.horizontalCenter: parent.horizontalCenter
            //anchors.verticalCenter: parent.verticalCenter
            //anchors.horizontalCenterOffset: 10
        }
        Rectangle {
            id: centerRightRectId
            width: 100
            height: width
            color: "green"
            anchors.left: centerMiddleRectId.right
            anchors.top: topRightRectId.bottom
        }
        Rectangle {
            id: bottomLeftRectId
            width: 100
            height: width
            color: "blue"
            anchors.right: centerMiddleRectId.left
            anchors.top: centerMiddleRectId.bottom
        }
        Rectangle {
            id: bottomCenterRectId
            width: 100
            height: width
            color: "purple"
            anchors.left: bottomLeftRectId.right
            anchors.top: centerMiddleRectId.bottom
        }
        Rectangle {
            id: bottomRightRectId
            width: 100
            height: width
            color: "yellow"
            anchors.top: centerMiddleRectId.bottom
            anchors.left: bottomCenterRectId.right
        }
    }
    Rectangle {
        id: siblingRectId
        width: 200
        height: 200
        color: "black"
        anchors.right: containerRectId.left
    }
}
