import Quickshell
import Quickshell.Io
import QtQuick

Rectangle {
    id: root
    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }

    property bool showTime: true
    property string clockTime: Qt.formatDateTime(clock.date, "h/m/s t")
    property string clockDate: Qt.formatDateTime(clock.date, "d/M/yy dddd")

    Rectangle {
        id: clickIndicator
        property bool hovered
        opacity: hovered ? 1.0 : 0.0
        Behavior on opacity {
            NumberAnimation {
                duration: 50
            }
        }

        anchors.centerIn: textBlock
        color: "#2e2e2e"
        width: textBlock.contentWidth + 4
        height: 22
        radius: 1

        MouseArea {
            id: mouseArea
            hoverEnabled: true

            onEntered: {
                clickIndicator.hovered = true;
            }
            onExited: {
                clickIndicator.hovered = false;
            }
            onClicked: {
                root.showTime = !root.showTime;
            }

            anchors.fill: parent
        }
    }

    Text {
        id: textBlock
        text: root.showTime ? root.clockTime : root.clockDate
        font.pixelSize: 18
        font.family: "ComicShannsMono Nerd Font Propo"
        height: 18
        color: "#FAFAFA"
        anchors {
            verticalCenter: parent.verticalCenter
        }
    }
}
