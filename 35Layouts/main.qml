import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.3

//Para usar layouts hay que hacer un import primero
Window {
    width: mGridLayoutId.implicitWidth
    height: mGridLayoutId.implicitHeight
    visible: true
    title: qsTr("Layouts Demo")

    //Podemos hacer uso de GridLayout, RowLayout o ColumnLayout
    GridLayout { //el comportamiento del GridLayout no es el mismo que el del grid solo
        id: mGridLayoutId
        anchors.fill: parent
        columns: 3
        layoutDirection: Qt.RightToLeft

        Rectangle {
            id: topLeftRectId
            width: 70
            height: width
            color: "green"

            //en este caso, el blanco es de menor width que el resto, y queda un espacio en blanco. Haciendo uso
            //de lo que abajo se muestra "fill" ese espacio faltante se rellena

            //si solo pongo esto en este rectangulo, va a rellenar el espacio blanco, pero al modificar el tamaño de la ventana, se va a sobrepasar del resto, va a ocurrir lo inverso.
            //la solución es poner esto mismo en todos los rectangulos.
            //aca decimos que se rellene todo el width y height disponible.
            //Layout.fillWidth: true
            //Layout.fillHeight: true
            //con esto podremos especificar como es alineara el elemento.
            Layout.alignment: Qt.AlignCenter
        }
        Rectangle {
            id: topCenterRectId
            width: 100
            height: width
            color: "red"
            Layout.fillWidth: true
            Layout.fillHeight: true

            //Con esto indicamos cuantas columnas ocupará un elemento. Por eso comentamos el azul, por ejemplo.
            Layout.columnSpan: 2
        }
//        Rectangle {
//            id: topRightRectId
//            width: 100
//            height: width
//            color: "blue"
//            Layout.fillWidth: true
//            Layout.fillHeight: true
//        }
        Rectangle {
            id: centerLeftRectId
            width: 100
            height: width
            color: "beige"
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.rowSpan: 2
        }
        Rectangle {
            id: centerCenterRectId
            width: 100
            height: width
            color: "pink"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Rectangle {
            id: centerRightRectId
            width: 100
            height: width
            color: "yellow"
            Layout.fillWidth: true
            Layout.fillHeight: true
            //con esto de abajo, indicamos la cantidad de pixeles que puede rellenar.
            Layout.maximumWidth: 200
            Layout.maximumHeight: 150
        }
//        Rectangle {
//            id: buttomLeftRectId
//            width: 100
//            height: width
//            color: "magenta"
//            Layout.fillWidth: true
//            Layout.fillHeight: true
//        }
        Rectangle {
            id: buttomCenterRectId
            width: 100
            height: width
            color: "yellowgreen"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Rectangle {
            id: buttomRightRectId
            width: 100
            height: width
            color: "dodgerblue"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}
