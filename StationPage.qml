import QtQuick 2.15
import QtQuick.Controls 2.15
Item {
    anchors.fill: parent

    Text {
        id: stationName
        anchors {
            top: parent.top
            left: parent.left
            margins: 40
        }
        font.pixelSize: 48
        color: "white"
        text: "FM 107.7"
    }

    Text {
        id: artistSongLabel
        anchors {
            top: stationName.bottom
            left: stationName.left
        }
        font.pixelSize: 24
        color: "white"
        text: "Painkiller - Judas Priest"
    }

    Button {
        id: backButton
        anchors {
            bottom: parent.bottom
            left: parent.left
            margins: 40
        }
        text: "Back"
        onClicked: mainLoader.source = "StackViewPage.qml"
    }

    Button {
        id: sourceButton
        anchors {
            bottom: parent.bottom
            right: parent.right
            margins: 40
        }
        text: "Source"
    }
}
