import Quickshell
import qs.bar
import qs.services
import QtQuick.Layouts


Scope {
  // no more time object

  Variants {
    model: Quickshell.screens

    PanelWindow {
      required property var modelData
      screen: modelData

      anchors {
        top: true
        left: true
        right: true
      }

      implicitHeight: 30

      ClockWidget {
        align.centerIn:parent
        
        
        
        // no more time binding
      }
    }
  }
}