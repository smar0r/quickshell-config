import Quickshell
import QtQuick

ShellRoot {
    SystemClock {
        id: sysclock
        precision: SystemClock.Seconds
    }

    PanelWindow {
        anchors {
            top: true
        }
        margins {
            top: 12
        }

        color: "transparent"
        implicitHeight: 20

        Rectangle {
            anchors.fill: parent
            radius: 4
            color: "#E2E2E2"

            Text {
                anchors.centerIn: parent
                text: Qt.formatDateTime(sysclock.date, "hh:mm:ss")

                topPadding: 3.5
                color: "#33332C"
                font.pixelSize: 18
                font.family: "ComicShannsMono Nerd Font Propo"
            }
        }
    }
}
