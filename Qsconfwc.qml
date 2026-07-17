import Quickshell
import Quickshell.Io
import QtQuick

PanelWindow {
    anchors {
        top: true
        right: true
    }
    margins {
        top: -20
        right: 12
    }

    color: "transparent"
    implicitWidth: lineCountRect.width
    implicitHeight: 20

    Rectangle {
        id: lineCountRect
        radius: 4
        color: "#E2E2E2"

        width: lineCountText.contentWidth + 8
        height: 20

        Process {
            id: wcProcess
            running: true
            command: ["sh", "-c", "fd . '/home/smaro/.config/quickshell/' | xargs wc | awk 'END {print $1, $2, $3}'"]

            stdout: StdioCollector {
                onStreamFinished: {
                    lineCountText.text = this.text || "err";
                }
            }
        }

        Timer {
            interval: 5000
            running: true
            repeat: true
            onTriggered: wcProcess.running = true
        }

        Text {
            id: lineCountText
            anchors.centerIn: parent
            color: "#33332C"
            font.pixelSize: 18
            topPadding: 3.5
            font.family: "ComicShannsMono Nerd Font Propo"
        }
    }
}
