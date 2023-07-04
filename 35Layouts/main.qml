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

        Rectangle {
            id: topLeftRectId
            width: 70
            height: width
            color: "green"

            //en este caso, el blanco es de menor width que el resto, y queda un espacio en blanco. Haciendo uso
            //de lo que abajo se muestra "fill" ese espacio faltante se rellena
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Rectangle {
            id: topCenterRectId
            width: 100
            height: width
            color: "red"
        }
        Rectangle {
            id: topRightRectId
            width: 100
            height: width
            color: "blue"
        }
        Rectangle {
            id: centerLeftRectId
            width: 100
            height: width
            color: "beige"
        }
        Rectangle {
            id: centerCenterRectId
            width: 100
            height: width
            color: "pink"
        }
        Rectangle {
            id: centerRightRectId
            width: 100
            height: width
            color: "yellow"
        }
        Rectangle {
            id: buttomLeftRectId
            width: 100
            height: width
            color: "magenta"
        }
        Rectangle {
            id: buttomCenterRectId
            width: 100
            height: width
            color: "yellowgreen"
        }
        Rectangle {
            id: buttomRightRectId
            width: 100
            height: width
            color: "dodgerblue"
        }
    }
}
