import Quickshell
import QtQuick
import QtQuick.Layouts

PanelWindow {
    id: bar
    anchors {
        top: true
        left: true
        right: true
    }
    implicitHeight: 36
    color: "transparent"

    Rectangle {
        id: bgrect
        anchors.fill: parent
        color: "#3E3E3E"

        Rectangle {
            color: "#294593"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: -4
            height: 8
        }

        RowLayout {
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
                leftMargin: 25
            }
            spacing: 50
            Loader {
                active: true
                sourceComponent: FirstDateCharCount {}
            }
            Loader {
                active: true
                sourceComponent: Clock {}
            }
        }

        RowLayout {
            anchors {
                horizontalCenter: parent.horizontalCenter
                verticalCenter: parent.verticalCenter
            }

            Text {
                text: niri.focusedWindow?.title ?? ""
                font.pixelSize: 18
                height: 18
                color: "#FAFAFA"
                font.family: "ComicShannsMono Nerd Font Propo"
            }
        }
    }
}
