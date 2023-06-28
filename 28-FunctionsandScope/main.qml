import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Functions and Scope Demo")

    function min (a, b){ //como la función es creada en el nivel root, esta es llamada en cualquier instancia hija.
        return Math.min(a,b)
    }

    Rectangle{
        id: mRectId
        width: min(500, 400)
        height: 100
        anchors.centerIn: parent
        color: "blue"
    }

    MouseArea {
        id:mMouseArea
        anchors.fill: parent

        function sayMessage(){
            console.log("Hello there")
        }

        onClicked: {
            sayMessage()
        }
    }

    Component.onCompleted: {
        console.log("The width of the Rect is: " + mRectId.width)
        mMouseArea.sayMessage()
    }
}
