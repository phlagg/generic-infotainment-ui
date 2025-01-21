import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: statusBar
    height: 50

    anchors {
        top: parent.top
        left: parent.left
        right: parent.right
    }

    color: Qt.rgba(0,0,0,0)

    RowLayout {
        id: buttonRow
        height: statusBar.height
        width: statusBar.width / 4
        spacing: 0
        anchors {
            left: statusBar.left
            top: statusBar.top
        }

        Button {
            id: btnBack
            width: parent.width/3
            text: "Back"
        }
        Button {
            id: btnHome
            width: parent.width/3
            text: "Home"
            onClicked: mainLoader.source = ("StackViewPage.qml")
        }
        Button {
            id: btnFav
            width: parent.width/3
            text: "Fav"
        }

    }

    Text {
        id: statusText
        anchors {
            top: parent.top
            right: parent.right
            rightMargin: 20
        }
        height: parent.height
        width: parent.width / 4
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignRight
        color: "white"
        font.pixelSize: 20
        text: qsTr("30°C  6:56 PM")
    }

}
