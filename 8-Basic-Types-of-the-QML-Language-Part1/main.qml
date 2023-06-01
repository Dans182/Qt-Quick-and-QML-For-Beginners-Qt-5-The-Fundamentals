import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Datatypes Demo")

    property string mString: "Hello World 2"
    property int mInt: 118
    property bool isFemale: true
    property double mDouble: 77.5
    property url mUrl: "http://www.google.com" //esto es un datatype específico de QML. Si comparas con === un string con un URL, dirá correctamente que no son lo mismo

    //var es el contenedor genérico para guardar lo que sea. Sobretodo si no se el tipo de dato que guardaré
    property var aNumber: 100
    property var aBool: false
    property var aString: "Hello world!"
    property var anotherString: String("#FF008800")
    property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5) // valores con rojo, verde, azul y opacidad
    property var aRect: Qt.rect(10, 10, 10, 10) // valores con x, y, width and height
    property var aPoint: Qt.point(10, 10) //Se refiere a valores con atributos X y Y
    property var aSize: Qt.size(10, 10) //valores con width and height
    property var aVector3d: Qt.vector3d(100, 100, 100)
    property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })]
    property var anObject: { "foo": 10, "bar": 20 }
    property var aFunction: (function() { return "Seven"; })
    property var aFont: Qt.font({family: "Consolas", pointSize: 30, bold: true})
    property date mDate: "2018-07-19"

    Rectangle {
        width: 200
        height: 100 + mInt
        anchors.centerIn: parent
        color: aColor

        Text {
            id: mTextId
            anchors.centerIn: parent
            font: aFont
            text: qsTr("Hello World")
            //el qsTr("") es una función que ayuda para cuando quieres traducir tu aplicación en múltiples idiomas
        }

        Text {
            id: mTextId2
            anchors.bottom: parent.bottom
            text: mString
            font.bold: isFemale ? true : false
        }
    }

    Component.onCompleted: {
        //podemos usar directamente JS para que cuando el componente se cargue, por consola se me avise que el componente se cargó
        console.log("The value of mString is: " + mString)

        print("The value of mString is: " + mString)

        if (isFemale) {
            console.log("Im a Female")
        }
        else{
            console.log("I am not a Female")
        }

        console.log("The value of mDouble is: " + mDouble)

        console.log("The value of mUrl is: " + mUrl)

        console.log("-----------------------Playing with VAR datatypes------------------------------")

        console.log("The value of aNumber is: " + aNumber)
        console.log("The value of aBool is: " + aBool)
        console.log("The value of aString is: " + aString)
        console.log("The value of anotherString is: " + anotherString)

        console.log("The components of aRect are: x: " + aRect.x + ", y: " + aRect.y + ", width: " + aRect.width + ", height: " + aRect.height)

        console.log("The length of the array is: " + anArray.length)

        //Aca recorro la variable que es un array, pero la función solo me muestra que la es sin retorno
        anArray.forEach((value)=> {
            console.log(value)
        })

        //Aca recorro la variable que es un array, pero me devuelve el retorn de la función
        anArray.forEach((value, index)=> {
            if(index===5) {
                console.log(value())
            }
            else {
            console.log(value)
            }
        })

        //Aca recorro la variable que es un array, pero me devuelve el retorn de la función
        for(var i = 0; i < anArray.length; i++){
            if(i===5){
                console.log(anArray[i]())
            }
            else{
                console.log(anArray[i])
            }
        }

        console.log("The date is " + mDate)
        console.log("The date is " + mDate.getHours() + " " + mDate.getSeconds())

        console.log("The function value is " + aFunction)
        console.log("The function value is " + aFunction())

    }
}
