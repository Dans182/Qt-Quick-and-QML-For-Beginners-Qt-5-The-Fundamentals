import QtQuick 2.14

//Haciendo uso de Item, evitamos que la gente pueda acceder a todas las propiedades de nuestros componenetes y las modifiquen
//La forma es englobar nuestros componentes en un componenete Item
//y lo conseguimos exportando nuestras propiedades y exponiendolas en nuestro nivel root

Item{
    id: rootId
    property alias buttonText: buttonTextId.text
    signal buttonClicked
    //aca exponemos el width y el height de todo al mundo exterior, esta es la forma, sino se sobrepone todo
    width: containerRectId.width
    height: containerRectId.height
    //haciendolo asi, podemos exponer todas las propiedades de nuestro componenete, pero incluso de aquellas que no queremos que queden
    //expuestas y se modifiquen. Para eso, hacemos uso del Item, como un root

    Rectangle {
        //property alias buttonText: buttonTextId.text
        id: containerRectId
        width: buttonTextId.implicitWidth + 20
        height: buttonTextId.implicitHeight + 20
        color: "red"
        border {
            color: "blue"
            width: 3
        }

        Text {
            id: buttonTextId
            text: "Button"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                //console.log("Clicked on: " + buttonTextId.text)
                rootId.buttonClicked()
            }
        }
    }
}
