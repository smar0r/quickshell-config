import Quickshell
import QtQuick
import Quickshell.Wayland

PanelWindow {
  anchors.top: true
  anchors.left: true
  anchors.right: true
  implicitHeight: 30
  color: "#adadad"
  Text {
    anchors.centerIn: parent
    text: "Jarvis, make a quickshell bar"
    color: "#3d551d"
    font.pixelSize: 16
  }
}
