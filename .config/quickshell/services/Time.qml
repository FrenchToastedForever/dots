pragma Singleton
import Quickshell
import QtQuick

Singleton {
    id: root

    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }
    property alias clock: clock
}