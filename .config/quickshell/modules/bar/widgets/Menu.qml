import QtQuick
import Quickshell
import Quickshell.Io
import QtQuick.Layouts
import QtQuick.Controls
import qs.services

Rectangle {
    id: container
    radius: 999
    implicitWidth: 22
    implicitHeight: 22
    
    color: Colors.on_background
    
    RowLayout {
        id: sessionLayout
        anchors.centerIn: parent // Center the button in the rectangle
        anchors.fill: parent

        Button {
            
            anchors.fill: parent
            
            background: Rectangle {
                color: "transparent"
            }

            // Run rofi when the button is clicked
            onClicked: {
                rofiProcess.running = true
            }

            Process {
                id: rofiProcess
                command: ["rofi", "-show", "drun"]
                running: false
            }
        }
    }
    
}