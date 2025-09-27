//@ pragma UseQApplication
import QtQuick
import Quickshell
import qs.modules.bar


ShellRoot {
    id: shell
    property bool enableBar: true


    LazyLoader {
        active: enableBar
        component: Bar {}
    }
}