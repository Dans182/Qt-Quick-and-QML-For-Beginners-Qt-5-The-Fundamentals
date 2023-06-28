.import "utilities2.js" as Utilities2 //asi importamos un JS file dentro de otro JS file. Este metodo no funciona en el main QML file
//con este primer método hace el código disponible usando un diferente "namespace" (Utilities2) y posteriormente usándolo en este mismo JS.
Qt.include("utilities3.js") //segundo método para importar indirectamente JS en tu QML

function greeting() {
    console.log("Hello there from External JS file")
}

function combineAges(age1, age2) {
    console.log("Indirectly calling add() from utilities2")
    return Utilities2.add(age1, age2)
}
