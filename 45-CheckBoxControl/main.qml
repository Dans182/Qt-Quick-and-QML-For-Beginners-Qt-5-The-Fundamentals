import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Checkbox Demo")


    Column{

        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter

        CheckBox{
            text: "Option 1"
            checked: true
            onCheckStateChanged: {
                if( checked === true ) {
                    console.log("Option 1 is checked")
                }
                else {
                    console.log("Option 1 is unchecked")
                }
            }
        }
        CheckBox{
            text: "Option 2"
            enabled: false
        }
        CheckBox{
            text: "Option 3"
            checked: false
        }
    }
}
