import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root
    width: 1024
    height: 768
    visible: true
    title: qsTr("Generic Infotainment Example")

    Image {
        id: backgroundImage
        anchors.fill: root
        source: "qrc:/background.jpg"
    }

    StatusBar {
        id: statusBar

    }

    Loader {
        id: mainLoader
        anchors {
            left: parent.left
            right: parent.right
            top: statusBar.bottom
            bottom: parent.bottom
        }
        source: "qrc:/StackViewPage.qml"
    }



}
