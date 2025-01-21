import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Item {

    ListModel {
        id: listModel
        ListElement { name: "One"; page:"StationPage.qml"; imageSource: "gridOne-1.png" }
        ListElement { name: "Two"; page:"" }
        ListElement { name: "Three"; page:"" }
        ListElement { name: "Four"; page:"" }
        ListElement { name: "Five"; page:"" }
        ListElement { name: "Six"; page:"" }
        ListElement { name: "Seven"; page:"" }
        ListElement { name: "Eight"; page:"" }
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
            id: mask
            width: 200
            height: 200
            color: "grey"
            radius: 15

            Image {
                id: image
                anchors.fill: parent
                source: imageSource
            }

            Text {
                color: "white"
                text: name
                anchors.centerIn: parent

            }
            MouseArea {
                anchors.fill: parent
                onClicked: mainLoader.source = page
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
        onClicked: stackView.push("GridTwo.qml")

    }

    Button {
        id: prevButton
        anchors {
            right: nextButton.left
            rightMargin: 10
            verticalCenter: nextButton.verticalCenter
        }

        text: "Previous"
    }



}
