import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Scroll Sample")

    Text {
        id: txtScrollText
        text: qsTr("Correct")
        x:5
    }
    ScrollArea{y:20}
    ScrollArea{y:250}

    Text {
        id: txtScrollArea
        text: qsTr("Wrong")
        x:460
    }
    ScrollText{x:450; y:20}
    ScrollText{x:450; y:250}

}
