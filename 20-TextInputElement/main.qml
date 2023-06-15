import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TextInput Element Demo")

    Row{
        x: 10
        y: 10
        spacing: 10

        Rectangle {
            id: firstNameRectId
            color: "beige"
            width: firstNameLabelId.implicitWidth + 20 //ajusta el tamaño del rect en relación al texto
            height: firstNameLabelId.implicitHeight + 20

            Text {
                id: firstNameLabelId
                anchors.centerIn: parent
                text: "FirstName: "
            }

        }
        Rectangle {
            id: firstNameTextRectId
            color: "beige"
            width: firstNameTextId.implicitWidth + 20
            height: firstNameTextId.implicitHeight + 20

            TextInput{
                id:firstNameTextId
                anchors.centerIn: parent
                focus: true
                text: "Type in your first name"
                onEditingFinished: { //esto es una señal que captura los cambios en el texto y es disparada cuando el campo TextInput pierde el focus del campo
                    console.log("The first name changed to: " + text)
                }
            }
        }
    }

    Row{
        x: 10
        y: 60
        spacing: 10

        Rectangle {
            id: lastNameRectId
            color: "beige"
            width: lastNameLabelId.implicitWidth + 20 //ajusta el tamaño del rect en relación al texto
            height: lastNameLabelId.implicitHeight + 20

            Text {
                id: lastNameLabelId
                anchors.centerIn: parent
                text: "LastName: "
            }

        }
        Rectangle {
            id: lastNameTextRectId
            color: "beige"
            width: lastNameTextId.implicitWidth + 20
            height: lastNameTextId.implicitHeight + 20

            TextInput{
                id:lastNameTextId
                anchors.centerIn: parent
                focus: true
                text: "Type in your last name"
                onEditingFinished: {
                    console.log("The last name changed to: " + text)
                }
            }
        }
    }

}
