import QtQuick 2.13
import QtQuick.Controls 2.13

Item {
    Rectangle {
        id: container
        width:300
        height:200
        clip: true

        anchors.left: parent.left;
        anchors.topMargin: 5;
        anchors.bottomMargin: 5;
        anchors.rightMargin: 5;
        anchors.leftMargin: 5;

        Text {
            id: contentText
            width:parent.width-45
            wrapMode: Text.Wrap
            font.pointSize: 10
            text: qsTr("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
        }
        DragHandler {
            target: contentText
            xAxis.maximum: 0
            xAxis.enabled: false
            yAxis.minimum: -contentText.height + container.height
            yAxis.maximum: 0

        }
    }
    ScrollIndicator {
        active: true
        orientation: Qt.Vertical
        size: container.height / contentText.height
        contentItem: Rectangle {
            implicitWidth: 6
            implicitHeight: 100
            radius: width / 2
            color: "#a9a9a9"
        }
        position: -contentText.y / contentText.height
        anchors { top: container.top; right: container.right; bottom: container.bottom }
    }
}
