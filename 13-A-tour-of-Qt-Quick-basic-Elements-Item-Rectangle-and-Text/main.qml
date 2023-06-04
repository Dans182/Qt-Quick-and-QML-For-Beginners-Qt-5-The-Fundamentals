import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Basic Elements Demo")

    Item {
        id: containerItemId
        x: 150
        y: 50
        width: 600
        height: 300

        Rectangle {
            anchors.fill: parent
            color: "beige"
            border.color: "black"
        }

        Rectangle {
            x: 0
            y: 10
            width: 50
            height: 50
            color: "red"

            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle {
            x: 60
            y: 10
            width: 50
            height: 50
            color: "green"

            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle {
            x: 120
            y: 10
            width: 50
            height: 50
            color: "blue"

            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle {
            x: 180
            y: 10
            width: 50
            height: 50
            color: "magenta"

            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Text {
            id: mTextId
            text: "Hello World!"
            x: 100
            y:100
            font.pointSize: 24
            color: "red"
            font.family: "Helvetica"
            //font.pointSize: 24; font.family: "Helvetica"; font.bold: true
            /*font: {
                family: "Helvetica"
                pointsize: 13
                bold: true
            }*/
        }
//Existen tres formas de agregar o direccionar imágenes
        Image {
            x: 10
            y: 150
            width: 100
            height: 100
            //load image from the working directory of your project
            source: "file:image (2).png"
        }

        Image {
            x: 150
            y: 150
            width: 100
            height: 100
            //store and load the image in the resource folder of the project
            source: "./images/image (2).png"
        }

        Image {
            x: 300
            y: 150
            width: 100
            height: 100
            //Specify the full path of the image
            source: "file:///home/userti/Repos QT/Udemy/Qt Quick and QML For Beginners (Qt 5): The Fundamentals/13-A-tour-of-Qt-Quick-basic-Elements-Item-Rectangle-and-Text/image (2).png"
        }

        Image {
            x: 450
            y: 150
            width: 100
            height: 100
            //image from internet
            source: "http://d500.epimg.net/cincodias/imagenes/2018/11/13/lifestyle/1542113135_776401_1542116070_noticia_normal.jpg"
        }

    }
}
