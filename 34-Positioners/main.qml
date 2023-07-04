import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Positioners Demo")

    Rectangle {
        id: containerRectId
        width: 300
        height: width
        border.color: "black"
        //anchors.centerIn: parent //esto es lo mismo, que las dos líneas de abajo
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Grid {
            columns: 3
            spacing: 10
            //rowSpacing: 10
            //columnSpacing: 10
            horizontalItemAlignment: Grid.AlignRight
            verticalItemAlignment: Grid.AlignVCenter

            LayoutMirroring.enabled: true
            LayoutMirroring.childrenInherit: true //esto hace un efecto espejo y lo que estaba a la izquierda ahora está en la derecha

            Rectangle {
                id: topLeftRectId
                width: 60
                height: width
                color: "magenta"

                Image {
                    anchors.centerIn: parent
                    width: 50
                    height: 50
                    source: "images/ASM2022001_Variant1(Eminem)-header.webp"
                }
            }
            Rectangle {
                id: topCenterRectId
                width: 100
                height: width
                color: "yellowgreen"
            }
            Rectangle {
                id: topRightRectId
                width: 100
                height: width
                color: "dodgerblue"
            }
            Rectangle {
                id: centerLeftRectId
                width: 100
                height: width
                color: "red"
            }
            Rectangle {
                id: centerMiddleRectId
                width: 100
                height: width
                color: "black"
            }
            Rectangle {
                id: centerRightRectId
                width: 100
                height: width
                color: "green"
            }
            Rectangle {
                id: bottomLeftRectId
                width: 100
                height: width
                color: "blue"
            }
            Rectangle {
                id: bottomCenterRectId
                width: 100
                height: width
                color: "purple"
            }
            Rectangle {
                id: bottomRightRectId
                width: 100
                height: width
                color: "yellow"
            }
        }
    }
}
