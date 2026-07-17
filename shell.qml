import Quickshell
import QtQuick

ShellRoot {
    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }

    PanelWindow {
        id: clockWindow
        anchors {
            top: true
        }
        margins {
            top: 12
        }

        color: "transparent"
        // property int timeHeight: 20
        // property int timeWidth: 90
        // property int dateWidth: 150
        property bool showTime: true

        // implicitHeight: timeHeight
        // implicitWidth: showTime ? timeWidth : dateWidth

        implicitWidth: clockRect.width
        implicitHeight: 20

        Rectangle {
            id: clockRect
            // anchors.fill: parent
            radius: 4
            color: "#E2E2E2"

            width: clockText.contentWidth + 8
            height: 20

            Text {
                id: clockText
                anchors.centerIn: parent
                text: clockWindow.showTime ? timeString : dateString

                property string timeString: Qt.formatDateTime(clock.date, "hh:mm:ss")
                property string dateString: Qt.formatDateTime(clock.date, "ddd!yyyy/MM/dd")

                topPadding: 3.5
                color: "#33332C"
                font.pixelSize: 18
                font.family: "ComicShannsMono Nerd Font Propo"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    clockWindow.showTime = !clockWindow.showTime;
                }
            }
        }
    }
    Qsconfwc {}
}
