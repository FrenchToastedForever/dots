import QtQuick
import Quickshell
import qs.services
import QtQuick.Layouts


Rectangle {
    id: container
    
    //Add color
    Text {
        text: {Qt.formatDateTime(Time.clock.date, "MM/dd/yy d hh:mm:ss AP t")}
    }
    
}
