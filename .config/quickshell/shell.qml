import QtQuick
import Quickshell
import qs.modules.bar

ShellRoot {
    property bool enableBar: true

    LazyLoader {
        active: enableBar
        component: Bar {}
    }
}