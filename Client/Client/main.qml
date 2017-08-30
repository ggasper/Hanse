import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.2
import trade.backend 1.0


/************************************************************************************************************************
*                                           Megaforce Graphic engine V.1                                                *
*                                           Welcome to my graphic engine!                                               *
*                                           God help anyone                                                             *
*                                           trying to read this...                                                      *
*                                                                -Majtaz                                                *
*                                                                                                                       *
************************************************************************************************************************/

Window {
    id: root
    BackEnd {
        id: backend
    }

    visible: true
    width: 1440
    height: 900

    maximumHeight: 9000
    maximumWidth: 14400

    minimumHeight: 90
    minimumWidth: 144

    Map{
        id: main_map
        width: parent.width
        height: parent.height
        anchors.centerIn: parent

        Trade_Form{
            id: trade_form
            anchors.centerIn: main_map
        }
		
        Client_Trade_Form{
            id: client_trade_form
            visible: false
            anchors.centerIn: main_map
        }

        Resource_Form{
            id: resources
            anchors.left: island_4.right
            anchors.bottom: island_4.bottom
            anchors.bottomMargin: 200
            anchors.leftMargin: 300
            opacity: 100000000000000
        }
        Island{
            Boat{
                id: boat_1
                anchors.right: island_1.right
                anchors.top: island_1.bottom
            }
            id: island_1
            anchors.left: parent.left
            anchors.top: parent.top
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    trade_menu_1.visible = true
                }
            }
            Trade_Menu{
                id: trade_menu_1
                anchors.left: parent.right
                Button{
                    id: trade_button_1
                    text: "TRADE"
                    anchors.bottomMargin: 5
                    MouseArea {
                        anchors.fill: trade_button_1
                        onClicked: {
                            boat_1.visible = true
                            trade_form.visible = true
                            trade_form.enabled = true
                            trade_menu_1.visible = false
                            backend.setTradePartner(0);
                        }
                    }
                }
                Button{
                    anchors.top: trade_button_1.bottom
                    anchors.left: trade_button_1.left
                    id: cancel_button_1
                    text: "CANCEL"
                    MouseArea {
                        anchors.fill: cancel_button_1
                        onClicked: {
                            trade_form.visible = false
                            trade_form.enabled = false
                            trade_menu_1.visible = false
                        }
                    }
                }
            }

        }
        Island{
            Boat{
                id: boat_2
                anchors.left: parent.left
                anchors.top: island_2.bottom
            }
            id: island_2
            anchors.right: parent.right
            anchors.top: parent.top
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    trade_menu_2.visible = true
                }
                Trade_Menu{
                    id: trade_menu_2
                    anchors.left: parent.right
                    Button{
                        id: trade_button_2
                        text: "TRADE"
                        anchors.bottomMargin: 5
                        MouseArea {
                            anchors.fill: trade_button_2
                            onClicked: {
                                boat_2.visible = true
                                trade_form.visible = true
                                trade_form.enabled = true
                                trade_menu_2.visible = false
                                backend.setTradePartner(1);
                            }
                        }
                    }
                    Button{
                        anchors.top: trade_button_2.bottom
                        anchors.left: trade_button_2.left
                        id: cancel_button_2
                        text: "CANCEL"
                        MouseArea {
                            anchors.fill: cancel_button_2
                            onClicked: {
                                trade_form.visible = false
                                trade_form.enabled = false
                                trade_menu_2.visible = false
                            }
                        }
                    }
                }
            }

        }
        Island{
            Boat{
                id: boat_3
                anchors.left: parent.left
                anchors.bottom: parent.top
            }
            id: island_3
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    trade_menu_3.visible = true
                }
                Trade_Menu{
                    id: trade_menu_3
                    anchors.left: parent.right
                    Button{
                        id: trade_button_3
                        text: "TRADE"
                        anchors.bottomMargin: 5
                        MouseArea {
                            anchors.fill: trade_button_3
                            onClicked: {
                                boat_3.visible = true
                                trade_form.visible = true
                                trade_form.enabled = true
                                trade_menu_3.visible = false
                                backend.setTradePartner(2);
                            }
                        }
                    }
                    Button{
                        anchors.top: trade_button_3.bottom
                        anchors.left: trade_button_3.left
                        id: cancel_button_3
                        text: "CANCEL"
                        MouseArea {
                            anchors.fill: cancel_button_3
                            onClicked: {
                                trade_form.visible = false
                                trade_form.enabled = false
                                trade_menu_3.visible = false
                            }
                        }
                    }
                }
            }
        }
        Island{
            Boat{
                id: boat_4
                anchors.right: parent.right
                anchors.bottom: parent.top
            }
            id: island_4
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    trade_menu_4.visible = true
                }
                Trade_Menu{
                    id: trade_menu_4
                    anchors.left: parent.right
                    Button{
                        id: trade_button_4
                        text: "TRADE"
                        anchors.bottomMargin: 5
                        MouseArea {
                            anchors.fill: trade_button_4
                            onClicked: {
                                boat_4.visible = true
                                trade_form.visible = true
                                trade_form.enabled = true
                                trade_menu_4.visible = false
                                backend.setTradePartner(4);
                            }
                        }
                    }
                    Button{
                        anchors.top: trade_button_4.bottom
                        anchors.left: trade_button_4.left
                        id: cancel_button_4
                        text: "CANCEL"
                        MouseArea {
                            anchors.fill: cancel_button_4
                            onClicked: {
                                trade_form.visible = false
                                trade_form.enabled = false
                                trade_menu_4.visible = false
                            }
                        }
                    }
                }
            }
        }
    }
}
