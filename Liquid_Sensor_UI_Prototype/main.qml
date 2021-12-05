import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQml 2.12


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Likit Sensör Prototip Arayüzü")
    color: "#FBEAFF"
    id: test
    Image{
        width: 500
        height: 500
        source: "qrc:/Images/mainpage-background.png"
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: parent

    }

    RowLayout {
        property alias prop: row
        id: row
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 198
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        width: 300
        height: button.height
        spacing: 10

        Button {
            id: button
            text: qsTr("Ölçüm")
            Layout.fillWidth: true
            Layout.fillHeight: true
            background: Rectangle{
            color: "#008F7A"
            radius: 25
            }
            onClicked: {pageloader.sourceComponent= trackAndProgressPage
                        row.visible=false
                        trackAndProgressPage.visible=true
            }
        }

        Button {
            id: button1
            text: qsTr("Veriler")
            Layout.fillWidth: true
            Layout.fillHeight: true
            background: Rectangle{
            color: "#008F7A"
            radius: 25
            }
            onClicked: {

            }
        }
    }
//    StackView{
//    property alias prop: stack
//    id: stack
//    anchors.fill: parent
//    initialItem: ""
//    }

    Loader{
    id: pageloader
    anchors.fill: parent
    }

    Component{
    id: trackAndProgressPage

    MeasurementPage{
        anchors.fill: parent


    }

    }

    Component{
    id: logpage

    LogPage{
        anchors.fill: parent

    }

    }


}
