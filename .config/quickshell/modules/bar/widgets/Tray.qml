import QtQuick
import Quickshell
import QtQuick.Layouts
import QtQuick.Controls
import qs.services
import Quickshell.Services.SystemTray

Rectangle {
    id: container
    radius: 8
    implicitWidth: trayLayout.width + 20  
    implicitHeight: 22
    color: Colors.surface_container
    RowLayout {
        id: trayLayout
        anchors.fill: parent
        Repeater {
            model: SystemTray.icons
            delegate: Item {
                width: iconImage.width
                height: iconImage.height
                Image {
                    id: iconImage
                    source: modelData.iconSource
                    fillMode: Image.PreserveAspectFit
                    anchors.fill: parent
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        modelData.activate()
                    }
                    hoverEnabled: true
                    onEntered: {
                        modelData.showToolTip()
                    }
                    onExited: {
                        modelData.hideToolTip()
                    }
                }
            }
        }
        
    }
}