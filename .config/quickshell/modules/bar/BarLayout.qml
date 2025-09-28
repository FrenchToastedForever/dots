import QtQuick
import Quickshell
import QtQuick.Layouts
import "./widgets"

Item {
    id: root
    
    RowLayout {
        //Left Widgets
        anchors.fill: parent
        Loader {
            sourceComponent: Menu {} 
            Layout.alignment: Qt.AlignVCenter 
            Layout.leftMargin: 4 
        }
        
        Loader {
            sourceComponent: Component { Workspace {} }
            Layout.alignment: Qt.AlignVCenter 
            Layout.leftMargin: 0
        }
        
        
        Item {
            Layout.fillWidth: true
        }
        //Center Widgets
        Loader {
            sourceComponent: Component { Clock {} }
            
            anchors.centerIn: parent
            
        }
        Item {
            Layout.fillWidth: true
        }
        //Right Widgets
        Loader {
            sourceComponent: Component { Tray {} }
            Layout.alignment: Qt.AlignVCenter 
            Layout.rightMargin: 0
        }
        Loader {
            sourceComponent: Component { Session {} }
            Layout.alignment: Qt.AlignVCenter 
            Layout.rightMargin: 4
            
        }
    }
}