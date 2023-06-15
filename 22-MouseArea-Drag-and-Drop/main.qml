import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("MouseArea Demo")

    Rectangle {
        id: containerRectId
        width: parent.width
        height: 200
        color: "beige"

        Rectangle {
            id: movingRectId
            width: 50
            height: width
            color: "blue"
        }

        MouseArea {//señal que se dispara al hacer click del ratón
            anchors.fill: parent
            onClicked: {
                console.log(mouse.x)
                movingRectId.x = mouse.x
            }
            onWheel: { //señal que se dispara al mover la rueda del ratón
                console.log("x: " + wheel.x + " y: " + wheel.y + " angleData: " + wheel.angleDelta)
                //angleDelta es una propiedad del evento wheel, que te dice si estas rotandola en posición positiva (arriba) o negativa (abajo)
            }
            hoverEnabled: true//hay que habilitarlo para poder usarlo
            onHoveredChanged: {
                if (containsMouse === true) {
                    containerRectId.color = "red"
                }
                else {
                    containerRectId.color = "green"
                }
            }
        }
    }
    Rectangle {
        id: dragRectId
        width: parent.width
        height: 200
        color: "beige"
        y: 250

        Rectangle {
            id: draggableRectId
            width: 50
            height: width
            color: "blue"

            onXChanged: {
                console.log("X coordinate is: " + x)
            }
        }

        MouseArea{
            anchors.fill: parent
            drag.target: draggableRectId
            drag.axis: Drag.XAxis
            drag.minimumX: 0
            drag.maximumX: dragRectId.width - draggableRectId.width
        }

    }
}
