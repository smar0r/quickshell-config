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

    Item {
        id: barContent
        anchors.fill: parent

        Rectangle {
            id: bgrect
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            height: 32
            color: "#3E3E3E"

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
                height: title.font.pixelSize

                Text {
                    id: title
                    text: niri.focusedWindow?.title ?? ""
                    font.pixelSize: 18
                    color: "#FAFAFA"
                    font.family: "ComicShannsMono Nerd Font Propo"
                }
            }
        }
        Rectangle {
            id: underbar
            color: "#294593"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: bgrect.bottom
            height: 4
        }
    }
}
