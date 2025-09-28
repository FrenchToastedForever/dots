import Quickshell
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Quickshell.Hyprland
import qs.services
import Quickshell.Io

Rectangle {
    id: container
    radius: 999
    color: Colors.surface_container

    
    implicitHeight: 22
    
    
    property var displays: {
        let all = Hyprland.workspaces.values;
        //5 WS
        let result = [];
        for (let i = 1; i <= 5; i++) {
            let ws = all.find(w => Number(w.name) === i && Number.isInteger(Number(w.name)) && Number(w.name) > 0);
            if (ws) {
                result.push(ws);
            }
            else {
                result.push({
                    name: String(i),
                    id: "placeholder-" + i,
                    isPlaceholder: true
                });
            }
        }
        for (let ws of all) {
            let num = Number(ws.name);
            if ((!Number.isInteger(num) || num > 5) && !result.find(w => w.id === ws.id) && Number.isInteger(num) && num > 0) // Only add numbered workspaces
            {
                result.push(ws);
            }
        }
        return result;
    }
    property int wsCount: displays.length
    property int wsSize: height
    property int wsSpacing: wsRow.spacing
    implicitWidth: wsCount > 0 ? (wsCount * wsSize) + ((wsCount - 1) * wsSpacing)  : wsSize + 12
    RowLayout {
        id: wsRow
        anchors.fill: parent
        
        Repeater {
            model: container.displays
            id: workspaceRepeater
            //Treated as delegate anyway so I dont need delegate {}
            Rectangle {
                //Squares for each workspace
                width: wsRow.height
                height: wsRow.height
                radius: 999
                id: rectangleContainer

                //Add scale effect asp

                property bool isHovered: wsButton.hovered
                opacity: modelData.id === Hyprland.focusedWorkspace.id ? 1 : 0.7
                
                color: isHovered || modelData.id === Hyprland.focusedWorkspace.id ? Colors.secondary_container : Colors.surface_container
                
                Text {
                    color: Colors.on_surface
                    anchors.centerIn: parent
                    text: modelData.name
                    
                }
                Button {
                    id: wsButton
                    anchors.fill: parent
                    padding: 0
                    background: Rectangle {
                        color: "transparent"
                    }
                    onClicked: {
                        switchWindow.running = true
                        
                        
                        
                    
                    }
                    Process {
                        id: switchWindow
                        command: ["hyprctl", "dispatch", "workspace", modelData.name]
                        running: false
                    }
                }
            }
        }
    }
}
