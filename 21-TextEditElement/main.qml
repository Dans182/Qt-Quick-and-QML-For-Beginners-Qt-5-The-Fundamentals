import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TextEdit Demo")

    //    TextEdit {
    //        anchors.centerIn: parent
    //        width: 240
    //        text: "<b>Hello</b> <i>World!</i>"
    //        textFormat: TextEdit.RichText  //esto permite que procese las etiquetas HTMLs
    //        font.family: "Helvetica"
    //        font.pointSize: 20
    //        color: "blue"
    //        focus: true
    //    }

    Flickable {
        id: mFlickableId
        width: textInputId.width
        height: 300
        contentHeight: textInputId.implicitHeight //lo que me permite hacer el scroll
        anchors.centerIn: parent

        TextEdit {
            id: textInputId
            width: 240
            text: "<strong>Because</strong> we want to use our server locally, we set "+
                  "our domain name \r to be localhost. If we had set it up "+
                  "to\n be something  else, we would have to go mess with"+
                  " the host files to resolve whatever we put in here to"+
                  " a recognizable network address. "+
                  "ustleaveinlocalhostitisgoodenoughforourlocalusepurposes."+
                  " Leave the rest to defaults and hit continue. You are then"+
                  " given a choice for the database you want to use"
            textFormat: TextEdit.RichText  //esto permite que procese las etiquetas HTMLs
            font.family: "Helvetica"
            font.pointSize: 20
            color: "blue"
            focus: true

            wrapMode: TextEdit.Wrap //Esto hace que todo nuestro texto se visualice en vertical tambien, en varias lineas en base al ancho de la ventana o del campo
            //si no estuviera este parámetro, se vería todo en una sola línea

            onEditingFinished: {
                console.log("The current text is: " + text)
            }
        }
    }

    Rectangle {
        id: mRectId
        width: 200
        height: 100
        color: "red"
        anchors.top: mFlickableId.bottom

        MouseArea{
            anchors.fill: parent
            onClicked: {
                mRectId.focus = true
                console.log("The new text is: " + textInputId.text)
            }
        }
    }

}
