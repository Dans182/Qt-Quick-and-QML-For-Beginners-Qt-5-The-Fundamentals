import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Keys Attached Properties Demo")

    Rectangle {
        id: containerId
        anchors.centerIn: parent
        width: 300
        height: 50
        color: "dodgerblue"
        focus: true //si no tiene el focus, no funciona el Keys.onDigit1Pressed

        Keys.onDigit1Pressed: {
            console.log("Specific Signal: Pressed on Key 1")
            event.accepted = false //de esta manera "cancelamos este evento, para que se ejecute la señal general.
        }//La señal específica tiene prioridad sobre la general

        //        Keys.onDigit5Pressed: {
        //            if(event.modifiers === Qt.ControlModifier){
        //                console.log("Pressed Control + 5")
        //            }
        //            else {
        //                console.log("Pressed regular 5")
        //            }
        //        }

        Keys.onPressed: {
            if(event.key === Qt.Key_1){
                console.log("General Signal: Pressed on Key 1")
            }
            if((event.key === Qt.Key_5) && (event.modifiers & Qt.ControlModifier)){ //esto evalua si la tecla 5 ha sido presionada y si la tecla control ha sido presionada. Ambas tienen que ser true
                console.log("Pressed Control + 5")
            }
        }
    }
}
