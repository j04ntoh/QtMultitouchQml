import QtQuick 2.13
import QtQuick.Controls 2.13

Item {
    id:popupcontent
    width:347
    height:195

    Flickable{

        id: flickable
        anchors.fill: parent
        contentHeight: contentText.height
        clip: true

        topMargin: 10
        leftMargin: 20
        rightMargin: 10
        bottomMargin: 10

        Text {
            id: contentText
            width:parent.width-45
            wrapMode: Text.Wrap
            font.pointSize: 10 // 11 //, reduce for less scrolling
            text: qsTr("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
        }
        ScrollBar.vertical: ScrollBar {
            // hacks
            width:flickable.width

            contentItem: Rectangle {
                color: "transparent"
            }
        }
    }
    ScrollIndicator {
        id: verticalIndicator
        active: true
        orientation: Qt.Vertical
        size: flickable.height / contentText.height
        contentItem: Rectangle {
            implicitWidth: 6
            implicitHeight: 100
            radius: width / 2
            color: "#a9a9a9"
        }
        position: flickable.contentY / contentText.height
        anchors { top: flickable.top; right: flickable.right; bottom: flickable.bottom }
    }


//    ScrollView {
//        width: 200
//        height: 200
//        clip: true

//        Label {
//            text: "ABC"
//            font.pixelSize: 224
//        }
//    }
}
