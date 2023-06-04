import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    //    Column {
    //        spacing: 20
    //        Rectangle {
    //            width: 300
    //            height: 100
    //            color: "red"
    //        }
    //        Rectangle {
    //            width: 300
    //            height: 100
    //            color: "blue"
    //        }
    //    }

    Column {
        Button{
            buttonText: "Button 1"
            onButtonClicked: {
                console.log("Clicked on " + buttonText + " from main file")
            }
        }

        Button{
            buttonText: "Button 2"
            onButtonClicked: {
                console.log("Clicked on " + buttonText + " from main file")
            }
        }
    }
}
