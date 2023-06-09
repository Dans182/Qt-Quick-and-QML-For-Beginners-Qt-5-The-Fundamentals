import QtQuick 2.14
import QtQuick.Window 2.14
import "utilities1.js" as Utilities1 //asi importamos un JS file en un QML

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Javascript Import Demo")

    Rectangle {
        id: mRectId
        width: 300
        height: 100
        color: "yellowgreen"
        anchors.centerIn: parent

        Text{
            id: mTextId
            text: "Click me"
            anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                //Utilities1.greeting()
                //console.log("Hello there")
                console.log("Our ages combined yield: " + Utilities1.combineAges(33, 17))
                console.log("The difference of 50 and 33 is: " + Utilities1.substract(50, 33))

            }
        }
    }
}
