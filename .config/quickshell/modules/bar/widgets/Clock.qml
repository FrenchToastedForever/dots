import QtQuick
import Quickshell
import qs.services
import QtQuick.Layouts
import qs.services


Rectangle {
    id: container
    radius: 999
    implicitWidth: clockText.width + 20  
    implicitHeight: 22
    color: "transparent"
    
    //color: "lightgray"
    
    //Add color
    Text {
        color: Colors.on_background
        anchors.centerIn: parent
        textFormat: Text.RichText
        font.bold: true
        font.pixelSize: 16
        id: clockText
        text: {Qt.formatDateTime(Time.clock.date, "ddd. MM/dd/yy hh:mm:ss AP")}
    }
    
}
