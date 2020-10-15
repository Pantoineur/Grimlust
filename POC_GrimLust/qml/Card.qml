import QtQuick 2.0
import Felgo 3.0

EntityBase {
    id: root

    entityId: "entity"
    entityType: "customEntity" 

    property alias label : labelN

    property int default_x : 0

    property int default_y : 0

    Sprite {
        width: 80
        height: 100

        Image {
            id: image
            source: "../assets/cards/latest.png"

            fillMode: Image.PreserveAspectFit
            anchors.fill: parent
        }

        Text {
            id: labelN
            text:qsTr("TEST");
            anchors.centerIn: parent
            color: "white"
        }
    }

}
