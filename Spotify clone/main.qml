import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import Qt5Compat.GraphicalEffects

Window {
    width: 540/1.5
    height: 1080/1.5
    visible: true
    title: qsTr("Spotify Clone")






    Rectangle{
    height: parent.height;
    width: parent.width;
    color: "#282828";
    }

    Button {
        id: addbutton

        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.bottom: parent.bottom;
        anchors.margins: 50;
        hoverEnabled: false;

        background: Rectangle {
            implicitWidth: 57
            implicitHeight: 57
            radius: width/2
            color: addbutton.down ? "#262626" : "white"


            Image {
                id: newgameicon
                source: "Images/play.png"
                height: 15; width: 15;
                anchors.left: parent.left
                anchors.leftMargin: 22;
                anchors.verticalCenter: parent.verticalCenter;

            }
        }
}

    Button {
        id: lastbtn

        anchors.right: addbutton.left;
        anchors.verticalCenter: addbutton.verticalCenter;
        anchors.margins: 18;
        hoverEnabled: false;

        background: Rectangle {
            implicitWidth: 57
            implicitHeight: 57
            radius: width/2
            color: lastbtn.down ? "black" : "transparent"

             Image {
                id: lasticon
                source: "Images/last.png"
                height: 20; width: height;
                anchors.left: parent.left
                anchors.leftMargin: 22;
                anchors.verticalCenter: parent.verticalCenter;

            }
        }
}

    Button {
        id: nexttbtn

        anchors.left: addbutton.right;
        anchors.verticalCenter: addbutton.verticalCenter;
        anchors.margins: 15;
        hoverEnabled: false;

        background: Rectangle {
            implicitWidth: 57
            implicitHeight: 57
            radius: width/2
            color: nexttbtn.down ? "black" : "transparent"

             Image {
                id: nexticon
                source: "Images/next.png"
                height: 20; width: height;
                anchors.left: parent.left
                anchors.leftMargin: 22;
                anchors.verticalCenter: parent.verticalCenter;

            }
        }





}

    Button {
        id: repeat

        anchors.left: nexttbtn.right;
        anchors.verticalCenter: addbutton.verticalCenter;
        anchors.margins: 11;
        hoverEnabled: false;

        background: Rectangle {
            implicitWidth: 57
            implicitHeight: 57
            radius: width/2
            color: repeat.down ? "black" : "transparent"

             Image {
                id: repeatt
                source: "Images/repeat.png"
                height: 20; width: height;
                anchors.left: parent.left
                anchors.leftMargin: 22;
                anchors.verticalCenter: parent.verticalCenter;

            }
        }





}

    Button {
        id: random

        anchors.right: lastbtn.left;
        anchors.verticalCenter: addbutton.verticalCenter;
        anchors.margins: 11;
        hoverEnabled: false;

        background: Rectangle {
            implicitWidth: 57
            implicitHeight: 57
            radius: width/2
            color: random.down ? "black" : "transparent"

             Image {
                id: randomicon
                source: "Images/aleatorio.png"
                height: 28; width: height;
                anchors.centerIn: parent;
                //anchors.verticalCenter: parent.verticalCenter;

            }
        }
}

    Image {
       id: morebtn
       source: "Images/more.png"
       height: 18; width: height;
       anchors.top: parent.top;
       anchors.right: parent.right;
       anchors.margins: 18;
       //anchors.verticalCenter: parent.verticalCenter;

   }

    Image {
       id: downbtn
       source: "Images/down.png"
       height: 18; width: height;
       anchors.top: parent.top;
       anchors.left: parent.left;
       anchors.margins: 18;
       //anchors.verticalCenter: parent.verticalCenter;

   }

    Image {
       id: disposit
       source: "Images/dispositivos.png"
       height: 24; width: height;
       anchors.bottom: parent.bottom;
       anchors.left: parent.left;
       anchors.leftMargin: 21;
       anchors.bottomMargin: 10;
       //anchors.verticalCenter: parent.verticalCenter;

   }

    Image {
       id: list
       source: "Images/menu.png"
       height: 15; width: height;
       anchors.bottom: parent.bottom;
       anchors.right: parent.right;
       anchors.rightMargin: 28;
       anchors.bottomMargin: 18;

   }

    Image {
       id: share
       source: "Images/share.png"
       height: 15; width: height;
       anchors.bottom: parent.bottom;
       anchors.right: list.right;
       anchors.rightMargin: 45;
       anchors.bottomMargin: 15;

   }

    Rectangle{
        id:musicbar
        height: 3;
        width: 300;
        radius: 100;
        anchors.bottom: addbutton.top;
        anchors.bottomMargin: 20;
        anchors.horizontalCenter: parent.horizontalCenter;
        color:"#4b4949";

    }

    Rectangle{
        id:jatocou
        height: 3;
        width: 265;
        radius: 100;
        anchors.bottom: addbutton.top;
        anchors.bottomMargin: 20;
        anchors.left: musicbar.left;
        color: "white";

    }

    Rectangle{
        height: 7;
        width: 7;
        radius: 100;
        anchors.verticalCenter: jatocou.verticalCenter;
        anchors.left: jatocou.right;
        color: "white";

    }

    Image {
       id: haert
       source: "Images/coracao.png"
       height: 20; width: height;
       anchors.bottom: musicbar.bottom;
       anchors.right: parent.right;
       anchors.rightMargin: 26;
       anchors.bottomMargin: 40;

   }

    Image {
       id: album
       source: "Images/albumcover.jpg"
       height: 302; width: height;
       anchors.horizontalCenter: parent.horizontalCenter;
       anchors.top: parent.top
       anchors.topMargin: 130;

   }

    Text {
        id:topotexto
        text: "TOCANDO DA SUA BIBLIOTECA"
        font.family: "Arial"
        font.pointSize: 7.6
        color: "WHITE"
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: parent.top
        anchors.topMargin: 12;
    }

    Text {
        text: "Músicas Curtidas"
        font.family: "Arial Black"
        font.pointSize: 7.4
        color: "WHITE"
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: topotexto.top
        anchors.topMargin: 12;
    }

    Text {
        id:nomedamusica
        text: "MIROH"
        font.family: "Arial Black"
        font.pointSize: 12.3
        font.weight: Font.Thin;
        color: "white"
        anchors.left: musicbar.left;
        anchors.bottom: nomedabanda.top
        anchors.bottomMargin: 4.3;
        anchors.leftMargin: -2.5;
    }

    Text {
        id:nomedabanda
        text: "Stray Kids"
        font.family: "Arial"
        font.pointSize: 10.5
        color: "white"
        anchors.left: musicbar.left;
        anchors.bottom: musicbar.top
        anchors.bottomMargin: 27;
        anchors.leftMargin: -2.5;
    }

    ///*  To see the comparisson image on hover comment this
    Image {
        id: compare
        source: "Images/exemplo.jpg"
        width: 540/1.5
        height: 1080/1.5
        opacity: imagehover.hovered ? "0.01" : "1";

        HoverHandler{ id:imagehover; acceptedDevices: PonterDevice.Mouse; cursorShape: Qt.PointingHandCursor}


    }
    //*/
}
