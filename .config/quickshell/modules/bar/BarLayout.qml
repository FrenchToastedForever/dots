import QtQuick
import Quickshell
import QtQuick.Layouts
import "./widgets"

Item {
    id: root
    
    RowLayout {
        
        anchors.fill: parent
        Loader {
            sourceComponent: Component { Clock {} }
            Layout.alignment: Qt.AlignVCenter 
            
            Layout.leftMargin: 8 
        }
        Item { Layout.fillWidth: true}
    }
}