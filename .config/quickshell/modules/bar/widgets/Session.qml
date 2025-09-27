import QtQuick
import Quickshell
import Quickshell.Io
import QtQuick.Layouts
import QtQuick.Controls

Rectangle {
    id: container
    topLeftRadius: 8
    bottomLeftRadius: 8
    implicitWidth: sessionLayout.width + 15
    implicitHeight: 32
    
    color: "transparent"
    
    RowLayout {
        id: sessionLayout
        anchors.centerIn: parent // Center the button in the rectangle
        anchors.fill: parent

        Button {
            
            anchors.fill: parent
            
            text: "⏻" // FontAwesome power-off icon
            font.family: "FontAwesome"
            font.bold: true
            font.pixelSize: 32

            // Make the button background transparent
            background: Rectangle {
                color: "transparent"
            }

            // Run wlogout when the button is clicked
            onClicked: {
                wlogoutProcess.running = true
            }

            Process {
                id: wlogoutProcess
                command: ["wlogout"]
                running: false
            }
        }
    }
    
}