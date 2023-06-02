import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Property Binding Demo")

    Rectangle {
        id: redRectId
        width: 50
        height: width * 1.5 //esto es property binding. Definir una propiedad que depende de otra.
        color: "red"
    }

    Rectangle {
        id: blueRectId
        width: 100
        height: 100
        color: "blue"
        anchors.bottom: parent.bottom

        MouseArea {
            anchors.fill: parent
            onClicked: {
                redRectId.width = redRectId.width + 10
            }
        }
    }

    Rectangle {
        id: greenRectId
        width: 100
        height: 100
        color: "green"
        anchors.bottom: parent.bottom
        anchors.left: blueRectId.right

        MouseArea {
            anchors.fill: parent
            onClicked: {
                //redRectId.height = 100 //aca rompemos el "contrato" de un property binding porque estamos ahora estableciendo al height un valor estatico
                //redRectId.height = width * 2 //Pero haciendo esto, tambien queda roto el binding. Aca toma el valor de la expresión y la sigue asignando como un valor estático y no dinámico
                redRectId: Qt.binding(function(){return redRectId.width * 2})
                //aca lo que hacemos es envolver nuestra lógica en el Qt.binding. Le notificamos a QT que reemplazamos- nuestro binding por otro binding y mantiene el dinamismo. Si no usamos esto, siempre lo interpreta como un valor estático
                //redRectId: Qt.binding(()=>{redRectId.width * 2})
            }
        }
    }
}
