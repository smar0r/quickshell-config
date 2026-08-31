import Quickshell
import QtQuick
import Quickshell.Io

Rectangle {
    Process {
        id: proc
        running: true
        command: ["sh", "-c", "fd . -e md /home/smaro/FirstDateIdeas | xargs -d '\n' cat | wc -m"]
        stdout: StdioCollector {
            onStreamFinished: {
                textBlock.text = this.text;
            }
        }
    }
    Timer {
        interval: 500
        running: true
        repeat: true
        onTriggered: proc.running = true
    }

    Text {
        id: textBlock
        font.pixelSize: 18
        font.family: "ComicShannsMono Nerd Font Propo"
        height: 18
        color: "#FAFAFA"
        anchors {
            verticalCenter: parent.verticalCenter
        }
        Component.onCompleted: {
            parent.width = textBlock.contentWidth;
        }
    }
    width: textBlock.contentWidth
}
