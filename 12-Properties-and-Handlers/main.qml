import QtQuick 2.14
import QtQuick.Window 2.14

//Cuando defines una propiedad en QT QUICK ocurre que, por cada propieedad que definas, hay una señal que automaticamente es generada para ti
// y puedes usarla para rastrear cambios en tu propiedad

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Properties and Handlers")

    property string mFirstName: "Daniel"
    onMFirstNameChanged: {
        console.log("The first name changed to: " + mFirstName)
    }


    Rectangle {
        width: 300
        height: 100
        color: "greenyellow"
        anchors.centerIn: parent

            MouseArea{
            anchors.fill: parent
            onClicked: {
                mFirstName = "John"
            }
        }

    }

    Component.onCompleted: {
        console.log("The firstname is: " + mFirstName)
    }
}
