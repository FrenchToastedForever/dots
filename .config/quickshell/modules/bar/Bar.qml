import QtQuick
import Quickshell
import "./widgets"
import QtQuick.Layouts

PanelWindow {
    id: bar
    anchors {
        top: true
        left: true
        right: true
        //Add option for sidebar at some point
    }
    implicitHeight: 35
    Clock {
        Layout.fillHeight: true
        Layout.leftMargin: 3
    }
}