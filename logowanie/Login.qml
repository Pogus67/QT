import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Item
{
    id: itemlogin
    visible: true
    Rectangle{
        visible: true
        width: 375
        height: 667
        gradient: Gradient {
            GradientStop { position: 0.0; color: "white" }
            GradientStop { position: 3.0; color: "deepskyblue" }
    }
    NumberAnimation on opacity {
        id: animacja;
        to:0;
        duration: 200;
        running: false;
        onFinished:newchange==true;
    }

    Rectangle
    {
        visible: false
        anchors.fill: lista

    }
    Column
    {
        id:lista
        width: 300
        height: 400
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 50;
        Text{
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize:40
            text: qsTr("ListApka!")
        }
        TextField{
            id: textInput1
            focus: true
            anchors.horizontalCenter: parent.horizontalCenter
            onAccepted: textfield.accepted()
            placeholderText: "Login"
            background: Rectangle {
                color: "white"
                width: 250
                height: 39
                radius: 20
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }

        }



        TextField{
            id: textInput2
            focus: true
            anchors.horizontalCenter: parent.horizontalCenter
            onAccepted: textfield.accepted()
            placeholderText: "Hasło"
            echoMode: TextInput.Password
            background: Rectangle {
                color: "white"
                width: 250
                height: 39
                radius: 20
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
         }

         Rectangle
         {
             color: "darkturquoise"
             width: 250
             height: 39
             radius: 20
             anchors.horizontalCenter: parent.horizontalCenter
             anchors.verticalCenter: parent.verticalCent

             Text{
                 font.pixelSize:18
                 text: qsTr("Zaloguj")
                 anchors.centerIn: parent
             }

             MouseArea{
                anchors.fill: parent
                onPressed:
                {
                   if((textInput1.displayText === "test") && (textInput2.text === "2137"))
                   {
                       ok.text = qsTr("Zostałeś zalogowany!")
                       ok.color = "green"
                       animacja.running = true


                   }
                   else if((textInput1.displayText !== "test") && (textInput2.text !== "2137"))
                   {
                       ok.text = qsTr("Brak takiego konta!")
                       ok.color = "crimson"
                   }
                   else if(textInput1.displayText !== "test")
                   {
                       ok.text = qsTr("Brak takiego konta!")
                       ok.color = "crimson"
                   }
                   else
                   {
                       ok.text = qsTr("Niepoprawne hasło")
                       ok.color = "crimson"
                   }
                }
             }

         }
         Text{
             id: ok
             anchors.horizontalCenter: parent.horizontalCenter
             font.pixelSize:14
             text: qsTr("")

         }

     }
    }


}
