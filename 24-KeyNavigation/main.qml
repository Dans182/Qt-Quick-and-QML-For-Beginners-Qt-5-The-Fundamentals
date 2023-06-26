import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Key Navigation Demo")

    /*    Row {
        anchors.centerIn: parent

        Rectangle {
            id: firstRectId
            width: 200
            height: width
            border.color: "black"
            color: "green"
            focus: true

            onFocusChanged: {
                if(focus ==true) {
                    color = "gray"
                }
                else {
                    color = "green"
                }
            }

            Keys.onDigit5Pressed: {
                console.log("I am Rect1")
            }

            KeyNavigation.right: secondRectId
        }

        Rectangle {
            id: secondRectId
            width: 200
            height: width
            border.color: "black"
            color: "blue"

            Keys.onDigit5Pressed: {
                console.log("I am Rect2")
            }

            KeyNavigation.left: firstRectId //Key Navigation es una propiedad que te permite navegar entre tus UI Components cuando una tecla es presionada

            onFocusChanged: { //transferimos el focus del elemento
                if(focus ==true) {
                    color = "gray"
                }
                else {
                    color = "blue"
                }
            }
        }
    }*/

    Grid {
        width: 100; height: 100
        columns: 2

        Rectangle {
            id: topLeft
            width: 50; height: 50
            color: focus ? "red" : "lightgray"
            focus: true

            KeyNavigation.right: topRight
            KeyNavigation.down: bottomLeft
        }

        Rectangle {
            id: topRight
            width: 50; height: 50
            color: focus ? "red" : "lightgray"

            KeyNavigation.left: topLeft
            KeyNavigation.down: bottomRight
        }

        Rectangle {
            id: bottomLeft
            width: 50; height: 50
            color: focus ? "red" : "lightgray"

            KeyNavigation.right: bottomRight
            KeyNavigation.up: topLeft
        }

        Rectangle {
            id: bottomRight
            width: 50; height: 50
            color: focus ? "red" : "lightgray"

            KeyNavigation.left: bottomLeft
            KeyNavigation.up: topRight
        }
    }
}
