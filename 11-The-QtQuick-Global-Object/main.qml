import QtQuick 2.14
import QtQuick.Window 2.14

//Qt Quick Global Object
//Global Object con funciones, utilidades

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Global Object Demo")

    property var fonts: Qt.fontFamilies()

    Rectangle {
        width: 300
        height: 100
        color: "red"

        MouseArea {
            anchors.fill: parent
            onClicked: {

                //Quit the application
                Qt.quit()
                console.log("Quitting the app")

                //List the available fonts
                for(var i = 0; i < fonts.length; i++){
                    console.log("[" + i + "]: " + fonts[i])
                }

                //Hash a String
                var mName = "Daniel Gaiteiro"
                var mNameHash = Qt.md5(mName)
                console.log("The hash of the name " + mName + " is: " + mNameHash)

                //Open URL externally
                Qt.openUrlExternally("https://www.google.com")

                //Open local files with default program
                Qt.openUrlExternally("file:///")

                //Capture platform info
                console.log("The current platform is: " + Qt.platform.os)
            }
        }
    }
}
