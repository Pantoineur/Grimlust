import Felgo 3.0
import QtQuick 2.0

GameWindow {
    id: gameWindow

    screenWidth: 960
    screenHeight: 640

    property GameScene gameScene: sceneLoader.item && sceneLoader.item.gameScene
    property MenuScene menuScene: sceneLoader.item && sceneLoader.item.menuScene


    Loader {
        id: sceneLoader
        onLoaded: gameWindow.state = "game"
        // start loading other scenes after 500 ms
        Timer {
          id: loadingTimer
          interval: 500
          onTriggered: sceneLoader.source = Qt.resolvedUrl("MainItem.qml")
        }
    }
    Component.onCompleted: loadingTimer.start()

    states: [
        State {
            name: "game"
            PropertyChanges {target: gameScene; opacity: 1}
            PropertyChanges {target: gameWindow; activeScene: gameScene}
        },
        State {
            name: "menu"
            PropertyChanges {target: menuScene; opacity: 1}
            PropertyChanges {target: gameWindow; activeScene: menuScene}
        }
    ]
}
