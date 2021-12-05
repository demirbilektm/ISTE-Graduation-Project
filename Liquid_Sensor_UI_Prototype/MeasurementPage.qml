import QtQuick 2.12
import QtQuick.Window 2.12
import QtSensors 5.9
import QtQuick.Controls 2.3
import QtQuick.Templates 2.5
import QtCharts 2.3
import QtDataVisualization 1.3
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.12

Rectangle {
    id: trackAndProgressPage
    width: 680
    height: 420
    color: "#FBEAFF"// This is available in all editors.
    visible: true

    property alias visibility: trackAndProgressPage.visible
    Row {
        anchors.centerIn: parent
        spacing: 70


        CircularSlider {
            id: customSlider
            hideProgress: true
            hideTrack: true
            width: 150
            height: 150

            handleColor: "#6272A4"
            handleWidth: 15
            handleHeight: 15
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
                    font.pointSize: 13
                    color: "#FEFEFE"
                    text: Number(customSlider.value * 100).toFixed() + "L"
                }
            }
        }

        CircularSlider {
            id: customSlider2
            hideProgress: true
            hideTrack: true
            width: 150
            height: 150

            handleColor: "#6272A4"
            handleWidth: 15
            handleHeight: 15
            value: 0.3

            // Custom progress Indicator
            Item {
                anchors.fill: parent
                anchors.margins: 5
                Rectangle{
                    id: mask2
                    anchors.fill: parent
                    radius: width / 2
                    color: "#282A36"
                    border.width: 5
                    border.color: "#44475A"
                }

                Item {
                    anchors.fill: mask2
                    anchors.margins: 5
                    layer.enabled: true
                    rotation: 180
                    layer.effect: OpacityMask {
                        maskSource: mask2
                    }
                    Rectangle {
                        height: parent.height * customSlider2.value
                        width: parent.width
                        color:"#8BE9FD"
                    }
                }

                Label {
                    anchors.centerIn: parent
                    font.pointSize: 13
                    color: "#FEFEFE"
                    text: Number(customSlider2.value * 100).toFixed() + "L"
                }
            }
        }

        CircularSlider {
            id: customSlider3
            hideProgress: true
            hideTrack: true
            width: 150
            height: 150

            handleColor: "#6272A4"
            handleWidth: 15
            handleHeight: 15
            value: 0.3

            // Custom progress Indicator
            Item {
                anchors.fill: parent
                anchors.margins: 5
                Rectangle{
                    id: mask3
                    anchors.fill: parent
                    radius: width / 2
                    color: "#282A36"
                    border.width: 5
                    border.color: "#44475A"
                }

                Item {
                    anchors.fill: mask3
                    anchors.margins: 5
                    layer.enabled: true
                    rotation: 180
                    layer.effect: OpacityMask {
                        maskSource: mask3
                    }
                    Rectangle {
                        height: parent.height * customSlider3.value
                        width: parent.width
                        color:"#8BE9FD"
                    }
                }

                Label {
                    anchors.centerIn: parent
                    font.pointSize: 13
                    color: "#FEFEFE"
                    text: Number(customSlider3.value * 100).toFixed() + "L"
                }
            }
        }


    }

    Label{
        x: 100
        y: 291
        anchors.verticalCenter: customSlider.verticalCenter
        anchors.top: customSlider.bottom
        anchors.topMargin: 5
        text: "Giren Sıvı"
        color: "#44475A"

    }

    Label {
        x: 316
        y: 291
        color: "#44475A"
        text: "Çıkan Sıvı"
        anchors.verticalCenter: customSlider.verticalCenter
        anchors.top: customSlider.bottom
        anchors.topMargin: 5
    }

    Label {
        x: 539
        y: 291
        color: "#44475A"
        text: "Mevcut Durum "
        anchors.verticalCenter: customSlider.verticalCenter
        anchors.top: customSlider.bottom
        anchors.topMargin: 5
    }

    Image {
        id: image
        x: 17
        y: 354
        width: 32
        height: 32
        mipmap: true
        source: "qrc:/Images/back-button.png"
        fillMode: Image.PreserveAspectFit
        MouseArea{
        anchors.fill: parent
        onClicked: {trackAndProgressPage.visible=false
            row.visible=true
        }
        }
    }

}
