import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.3
import QtQuick.Layouts 1.12
import QtQuick.Shapes 1.12
import QtGraphicalEffects 1.0
CircularSlider {
    id: customSlider
    hideProgress: true
    hideTrack: true
    width: 400
    height: 400

    handleColor: "#6272A4"
    handleWidth: 32
    handleHeight: 32
    value: 0.3

    // Custom progress Indicator
    Item {
        anchors.fill: parent
        anchors.margins: 5
        Rectangle{
            id: mask
            anchors.fill: parent
            radius: width / 2
            color: "#282A36"
            border.width: 5
            border.color: "#44475A"
        }

        Item {
            anchors.fill: mask
            anchors.margins: 5
            layer.enabled: true
            rotation: 180
            layer.effect: OpacityMask {
                maskSource: mask
            }
            Rectangle {
                height: parent.height * customSlider.value
                width: parent.width
                color:"#8BE9FD"
            }
        }

        Label {
            anchors.centerIn: parent
            font.pointSize: 42
            color: "#FEFEFE"
            text: Number(customSlider.value * 100).toFixed() + "%"
        }
    }
}
