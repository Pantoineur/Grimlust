import QtQuick 2.0
import Felgo 3.0

TemplateScene {
    id: gameScene

    width: 960
    height: 640

    Image {
        id: background
        source: "../assets/backgrounds/background_cave.jpg"

        anchors.fill: gameScene.gameWindowAnchorItem
        anchors.bottomMargin: 50
    }

    GameButton {
        width: 50
        text: "quit"
        onClicked: {}
    }

    Rectangle {
        id: cardZone
        width: parent.width
        height: parent.height * 0.3
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        color: "transparent"

        MouseArea {
            id: mA
            anchors.fill: parent
            drag.target: maCard
            hoverEnabled: true
            Card {
                id: maCard
                visible: true

                function update() {
                    console.log(x + " x " + y)
                    console.log(gameScene.height)
                    maCard.label.text = Math.round(x) + " x " + Math.round(y)
                }

                onXChanged: update();
                onYChanged: update();
            }

            drag.maximumX: gameScene.width - maCard.width
            drag.minimumX: 0

            drag.maximumY: 0
            drag.minimumY: -gameScene.height + maCard.height

            onReleased: {
                console.log("OUI")
                if(maCard.y < -cardZone.height)
                    maCard.y = 0
            }
        }

    }


}
