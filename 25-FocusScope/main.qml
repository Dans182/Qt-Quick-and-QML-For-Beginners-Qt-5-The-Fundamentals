import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Focus Scope Demo")

    Column {


        MButton{
            focus:true
            //cuando usas componentes externos, la transferencia del focus suele ser impredecible
            //para que funcione, debes empaquetar tus componentes en un focus Scope Component
        }

        MButton{
            color: "green"
            //focus:true
        }

    }
}
