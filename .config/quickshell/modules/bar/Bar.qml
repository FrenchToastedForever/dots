import QtQuick
import Quickshell
import "./widgets"
import QtQuick.Layouts


PanelWindow {
    id: bar
    
    color: "transparent"
    
    anchors {
        top: true
        left: true
        right: true
        //Add option for sidebar at some point
    }
    implicitHeight: 32
    Rectangle {
        implicitHeight: 32
        radius: -3
        color: "white"
        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
        
        }
        BarLayout {
            anchors.fill: parent
        }
    }
    //Figure out how to round corners on the bar
}