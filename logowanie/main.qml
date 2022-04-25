import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12


Window {
    property bool newchange: false
    width: 375
    height: 667
    color:  "black"
    visible: true
    title: qsTr("ListApka")
    id: glowny

    Login {
        id: log
        anchors.centerIn: Parent
        enabled: newchange==false
        visible: newchange==false

    }

}

