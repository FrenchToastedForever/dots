import QtQuick
import Quickshell
import qs.services
import QtQuick.Layouts


Rectangle {
    id: container
    radius: 8
    implicitWidth: clockText.width + 20  
    implicitHeight: 22
    
    color: "lightgray"
    
    //Add color
    Text {
        
        anchors.centerIn: parent
        textFormat: Text.RichText
        font.bold: true
        id: clockText
        text: {Qt.formatDateTime(Time.clock.date, "MM/dd/yy ddd hh:mm:ss AP t")}
    }
    
}
