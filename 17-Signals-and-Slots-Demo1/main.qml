import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signals and Slots Demo")

    property int increment: 50

    Rectangle {
        id: rectangleId
        width: 200 + increment
        height: 300
        color: "red"

        //señal
        signal greet(string message) //así declaro mi señal y le paso parámetros. Debo especificar el tipo de dato de los parámetros

        //cuando defines una señal o una PROPIEDAD (color, width, etc), automáticamente se genera un handler para ti
        //señal
        onGreet: {
            console.log("onGreet: greet signal emited")
        }
        //señal
        onWidthChanged: {
            console.log("Ha cambiado el width del rectangulo")
        }

        //slot
        function myGreeting(mMessage){
            console.log("myGreeting slot called. The parameter is: " + mMessage) //Ahora acá definimos un slot, que es lo que queremos que se conecte a
                            //la señal. Un slot es una función, normal y corriente. Puede ser una función de JS.
            increment += 50 //increment = increment + 50
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                rectangleId.greet("Hello there") //fire the signal
            }
        }

        //Queremos que se conecte la señal con el slot, cuando el componente Rectangle esté completamente cargado.

        Component.onCompleted: {
            rectangleId.greet.connect(rectangleId.myGreeting)
        }

    }

}
