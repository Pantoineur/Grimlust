import QtQuick 2.0
import Felgo 3.0

EntityBase {
    id: root

    entityId: "entity"
    entityType: "customEntity"

    Sprite {
        width: 80
        height: 100

        Image {
            id: image
            source: "../assets/cards/latest.png"
            anchors.fill: root
        }
    }

}
