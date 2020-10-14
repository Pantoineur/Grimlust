import QtQuick 2.0
import Felgo 3.0

TemplateScene {
    id: gameScene

    Image {
        id: background
        source: "../assets/backgrounds/background_cave.jpg"

        anchors.fill: gameScene.gameWindowAnchorItem
    }

    GameButton {
        width: 50
        text: "quit"
        onClicked: {}
    }

}
