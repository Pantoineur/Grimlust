import QtQuick 2.0
import Felgo 3.0

Scene {
    id: templateScene

    opacity: 0
    // the opacity property determines if the scene is visible or not
    visible: opacity > 0
    // if the scene is visible, then is is enabled. This provides proteciton against fantom scenes
    enabled: visible

    // every change in opacity will be done with an animation
    Behavior on opacity {
      NumberAnimation {property: "opacity"; easing.type: Easing.InOutQuad}
    }

}
