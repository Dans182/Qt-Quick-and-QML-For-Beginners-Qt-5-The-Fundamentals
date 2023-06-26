import QtQuick 2.14

FocusScope {
    width: containerRect.width
    height: containerRect.height
    property alias color: containerRect.color //aca exponemos la propiedad del color. Es la forma, para poder instanciarlo en el main

    Rectangle {
        id: containerRect
        width: 300
        height: 50
        color: "beige"
        focus: true

        Text {
            id: textId
            anchors.centerIn: parent
            text: "Default"
        }

        Keys.onPressed: {
            if(event.key === Qt.Key_1){
                textId.text = "Pressed on Key 1"
            }
            else if(event.key === Qt.Key_2){
                textId.text = "Pressed on Key 2"
            }
            else {
                textId.text = "Pressed another Key " + event.key
            }
        }
    }
}
