import QtQuick 2.0
import Felgo 3.0

EntityBase {
    id: root

    entityId: "entity"
    entityType: "customEntity" 

    property alias zone : sprite

    property alias mouseA : mouseArea

    property int default_x : 0

    property int default_y : 0

    Sprite {
        id: sprite
        width: 80
        height: 100


        function update() {
            console.log(x + " x " + y)
            console.log(gameScene.height)
            labelN.text = Math.round(x) + " x " + Math.round(y)
        }

        onXChanged: update();
        onYChanged: update();

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            drag.target: parent

            drag.minimumX: 0

            drag.maximumY: 0
            onPressed: {root.z = 100}
            onReleased: {
                if(sprite.y < 0)
                    sprite.y = 0
                root.z = 0
            }
        }

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
