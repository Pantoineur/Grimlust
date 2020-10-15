import QtQuick 2.0
import Felgo 3.0

TemplateScene {
    id: gameScene

    width: 960
    height: 640

    Image {
        id: background
        source: "../assets/backgrounds/background_cave.jpg"

        anchors.fill: gameScene
        anchors.bottomMargin: 50
    }

    Sprite {
    }

    Rectangle {
        id: gameZone
        width: gameScene.width
        height: gameScene.height * 0.3
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 170
        color: "transparent"

        Sprite {
            id: boss
            width: 128
            height: 256
            Image {
                id: bossimage
                source: "../assets/sprites/Boss.png"
                mirror: true
            }
            x: parent.width - 360
            y: -136
        }

        Sprite {
            id: character
            width: 128
            height: 128
            x: 50
            Image {
                id: name
                source: "../assets/sprites/sprite_heros_1.png"
            }
            anchors.bottom: parent.bottom

            SequentialAnimation {
                id: seqAnim
                NumberAnimation {
                    target: character
                    property: "x"
                    from: 50
                    to: 70
                    duration: 200
                    easing.type: Easing.InOutQuad
                }

                ParallelAnimation {
                    NumberAnimation {
                        target: character
                        property: "x"
                        from: 70
                        to: 50
                        duration: 200
                        easing.type: Easing.InOutQuad
                    }

                    NumberAnimation {
                        target: boss
                        property: "x"
                        from: gameZone.width - 360
                        to: gameZone.width - 340
                        duration: 200
                        easing.type: Easing.InOutQuad
                    }
                }

                NumberAnimation {
                    id: bossDamage
                    target: boss
                    property: "x"
                    from: gameZone.width - 340
                    to: gameZone.width - 360
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }

    Rectangle {
        id: cardZone
        width: gameScene.width
        height: gameScene.height * 0.3
        anchors.bottom: gameScene.bottom
        anchors.right: gameScene.right
        color: "transparent"
        Card {
            id: maCard1
            visible: true
            anchors.bottom: parent.bottom
            anchors.bottomMargin: zone.height
            anchors.left: parent.left
            zone.x: 0
            mouseA.drag.maximumX: gameScene.width - zone.width
            mouseA.drag.minimumY: -gameScene.height + zone.height

            mouseA.onReleased: {
                seqAnim.start()
            }
        }
        Card {
            id: maCard2
            visible: true
            anchors.bottom: parent.bottom
            anchors.bottomMargin: zone.height
            anchors.left: parent.left
            zone.x: zone.width + 10
            mouseA.drag.maximumX: gameScene.width - zone.width
            mouseA.drag.minimumY: -gameScene.height + zone.height

            mouseA.onReleased: {
                seqAnim.start()
            }
        }
        Card {
            id: maCard3
            visible: true
            anchors.bottom: parent.bottom
            anchors.bottomMargin: zone.height
            anchors.left: parent.left
            zone.x: (zone.width * 2) + 20
            mouseA.drag.maximumX: gameScene.width - zone.width
            mouseA.drag.minimumY: -gameScene.height + zone.height
            mouseA.onReleased: {
                seqAnim.start()
            }
        }
    }


}
