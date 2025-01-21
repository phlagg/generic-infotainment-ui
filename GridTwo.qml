import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Item {
    ListModel {
        id: listModel
        ListElement { name: "Pg2 - One"; page:"" }
        ListElement { name: "Pg2 - Two"; page:"" }
        ListElement { name: "Pg2 - Three"; page:"" }
        ListElement { name: "Pg2 - Four"; page:"" }
        ListElement { name: "Pg2 - Five"; page:"" }
        ListElement { name: "Pg2 - Six"; page:"" }
        ListElement { name: "Pg2 - Seven"; page:"" }
        ListElement { name: "Pg2 -Eight"; page:"" }
    }

    GridView {
        id: gridView
        model: listModel
        cellHeight: 240
        cellWidth: 240
        width: Math.min(model.count, Math.floor(parent.width/cellWidth))*cellWidth
        anchors {
            right: nextButton.right
            rightMargin: 0
            left: parent.left
            leftMargin: 40
            top: parent.top
            topMargin: 40
            bottom: prevButton.top
            bottomMargin:  0
        }
        delegate: Rectangle {
            width: 200
            height: 200
            color: "grey"
            radius: 15
            Text {
                color: "white"
                text: name
                anchors.centerIn: parent

            }
        }
    }

    Button {
        id: nextButton
        anchors {
            right: parent.right
            bottom: parent.bottom
            margins: 20
        }

        text: "Next"


    }

    Button {
        id: prevButton
        anchors {
            right: nextButton.left
            rightMargin: 10
            verticalCenter: nextButton.verticalCenter
        }

        text: "Previous"
        onClicked: stackView.pop("GridTwo.qml")
    }



}
