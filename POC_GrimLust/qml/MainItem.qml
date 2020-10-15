import QtQuick 2.0
import Felgo 3.0

Item {

    id: mainItem
    property alias menuScene: menuScene
    property alias gameScene: gameScene


    // menu scene
    MenuScene {
        id: menuScene

    }

    // game scene
    GameScene {
        id: gameScene

        Card {
            id: test
        }
    }
}
