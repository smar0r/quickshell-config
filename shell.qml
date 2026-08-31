import Quickshell
import QtQuick
import QtQuick.Layouts
import Niri

ShellRoot {
    id: root

    Niri {
        id: niri
        Component.onCompleted: connect()

        onConnected: console.info("Bluetooth device connecteduh successfuly")
        onErrorOccurred: function (error) {
            console.error("Niri error:", error);
        }
    }

    LazyLoader {
        active: true
        component: Bar {}
    }
}
